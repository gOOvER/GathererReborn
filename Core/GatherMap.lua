--[[
	Gatherer Reborn - Native C_Map Mapping Engine (Gatherer.Map)
	Replaces the discontinued Astrolabe library with direct C_Map API support
	for Retail (11.x / 12.x), Classic (Era / Progression), and WoW Forever (16001+).

	License:
		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.
]]

local Map = Gatherer.Map or {}
Gatherer.Map = Map

Map.IconsOnEdge = {}
Map.MinimapIcons = {}
Map.IconAssociations = {}
Map.LastPlayerPosition = { 0, 0, 0, 0 }
Map.minimapOutside = true
Map.WorldMapVisible = false
Map.TargetMinimapChanged_Callbacks = {}
Map.ContinentList = {}
Map.HarvestedMapData = {}

local processingFrame = CreateFrame("Frame", "GathererMapProcessingFrame", Minimap)
Map.processingFrame = processingFrame

-- Ensure WorldMapButton global exists on modern clients (8.0+) for XML and Lua compatibility
if not _G.WorldMapButton and WorldMapFrame then
	local canvas = (WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas())
		or (WorldMapFrame.ScrollContainer and WorldMapFrame.ScrollContainer.Child)
		or WorldMapFrame
	_G.WorldMapButton = canvas
end

-- Minimap indoor/outdoor radius tables (fallback when C_Minimap.GetViewRadius is unavailable)
local MinimapSize = {
	indoor = { [0] = 300, [1] = 240, [2] = 180, [3] = 120, [4] = 80, [5] = 50 },
	outdoor = { [0] = 466 + 2/3, [1] = 400, [2] = 333 + 1/3, [3] = 266 + 2/6, [4] = 200, [5] = 133 + 1/3 },
}

local function getMinimapRadius()
	if C_Minimap and C_Minimap.GetViewRadius then
		local r = C_Minimap.GetViewRadius()
		if r and r > 0 then return r end
	end
	local zoom = Minimap:GetZoom() or 0
	if Map.minimapOutside then
		return (MinimapSize.outdoor[zoom] or 400) / 2
	else
		return (MinimapSize.indoor[zoom] or 240) / 2
	end
end

-- Build Continent & Zone hierarchy using C_Map (WoW 8.0+)
local continentRecords = {}
local mapSizeCache = {}

local function queryMapSize(uiMapID)
	if not uiMapID then return 4000, 2666 end
	local cached = mapSizeCache[uiMapID]
	if cached then return cached[1], cached[2] end

	if C_Map and C_Map.GetMapWorldSize then
		local w, h = C_Map.GetMapWorldSize(uiMapID)
		if w and h and w > 0 and h > 0 then
			mapSizeCache[uiMapID] = { w, h }
			return w, h
		end
	end

	if C_Map and C_Map.GetWorldPosFromMapPos and CreateVector2D then
		local ok1, inst1, pos1 = pcall(C_Map.GetWorldPosFromMapPos, uiMapID, CreateVector2D(0, 0))
		local ok2, inst2, pos2 = pcall(C_Map.GetWorldPosFromMapPos, uiMapID, CreateVector2D(1, 1))
		if ok1 and ok2 and pos1 and pos2 and inst1 == inst2 then
			-- In WoW world coords: x is North-South (height), y is West-East (width)
			local w = math.abs((pos1.y or 0) - (pos2.y or 0))
			local h = math.abs((pos1.x or 0) - (pos2.x or 0))
			if w > 0 and h > 0 then
				mapSizeCache[uiMapID] = { w, h }
				return w, h
			end
		end
	end

	mapSizeCache[uiMapID] = { 4000, 2666 }
	return 4000, 2666
end

local function harvestModernMaps()
	if not (C_Map and C_Map.GetMapInfo and C_Map.GetMapChildrenInfo) then return end

	local seenContinents = {}
	local seenZones = {}

	local function addContinent(contMapInfo)
		if not contMapInfo or not contMapInfo.mapID or seenContinents[contMapInfo.mapID] then return end
		seenContinents[contMapInfo.mapID] = true

		local contIdx = #continentRecords + 1
		local zList = { [0] = contMapInfo.mapID }
		local zNames = {}
		local w, h = queryMapSize(contMapInfo.mapID)
		Map.HarvestedMapData[contMapInfo.mapID] = {
			mapName = contMapInfo.name or ("Continent " .. contMapInfo.mapID),
			cont = contIdx,
			zone = 0,
			width = w,
			height = h,
		}

		local children = C_Map.GetMapChildrenInfo(contMapInfo.mapID, nil, true) or {}
		for _, child in ipairs(children) do
			if child and child.mapID and not seenZones[child.mapID] then
				if not Enum or not Enum.UIMapType or child.mapType == Enum.UIMapType.Zone or child.mapType == Enum.UIMapType.Micro or child.mapType == Enum.UIMapType.Continent then
					seenZones[child.mapID] = true
					local zIdx = #zList + 1
					zList[zIdx] = child.mapID
					zNames[zIdx] = child.name or ("Zone " .. child.mapID)
					local zw, zh = queryMapSize(child.mapID)
					Map.HarvestedMapData[child.mapID] = {
						mapName = child.name or ("Zone " .. child.mapID),
						cont = contIdx,
						zone = zIdx,
						width = zw,
						height = zh,
					}
				end
			end
		end

		Map.ContinentList[contIdx] = zList
		continentRecords[contIdx] = {
			mapID = contMapInfo.mapID,
			name = contMapInfo.name or ("Continent " .. contMapInfo.mapID),
			zones = zList,
			zoneNames = zNames,
		}
	end

	-- Scan Cosmic (946) and World (947) roots, plus direct IDs 1..3000 for future expansions
	local roots = { 946, 947 }
	for _, rootID in ipairs(roots) do
		local conts = C_Map.GetMapChildrenInfo(rootID, Enum and Enum.UIMapType and Enum.UIMapType.Continent or 2, true)
		if conts then
			for _, cInfo in ipairs(conts) do
				addContinent(cInfo)
			end
		end
	end

	-- Fallback scan if root scan returned nothing or missed standalone continents/worlds
	for mapID = 1, 3000 do
		local info = C_Map.GetMapInfo(mapID)
		if info and info.mapType == (Enum and Enum.UIMapType and Enum.UIMapType.Continent or 2) then
			addContinent(info)
		end
	end
end

harvestModernMaps()

-- Provide legacy Map Global Polyfills for GatherZoneTokens, GatherStorage, GathererNodeSearch, GatherMapNotes
if not _G.GetMapContinents then
	_G.GetMapContinents = function()
		local res = {}
		for idx, rec in ipairs(continentRecords) do
			table.insert(res, rec.mapID)
			table.insert(res, rec.name)
		end
		return unpack(res)
	end
end

if not _G.GetMapZones then
	_G.GetMapZones = function(continentIndex)
		local rec = continentRecords[continentIndex]
		if not rec then return end
		local res = {}
		for zIdx, zMapID in ipairs(rec.zones) do
			table.insert(res, zMapID)
			table.insert(res, rec.zoneNames[zIdx] or ("Zone " .. zMapID))
		end
		return unpack(res)
	end
end

if not _G.GetContinentMaps then
	_G.GetContinentMaps = function()
		local t = {}
		for idx, rec in ipairs(continentRecords) do
			t[idx] = rec.mapID
		end
		return t
	end
end

if not _G.GetContinentMapInfo then
	_G.GetContinentMapInfo = function(id)
		return id
	end
end

if not _G.GetCurrentMapAreaID then
	_G.GetCurrentMapAreaID = function()
		if WorldMapFrame and WorldMapFrame.GetMapID then
			local mapID = WorldMapFrame:GetMapID()
			if mapID then return mapID end
		end
		if C_Map and C_Map.GetBestMapForUnit then
			return C_Map.GetBestMapForUnit("player")
		end
		return 0
	end
end

if not _G.GetMapInfo then
	_G.GetMapInfo = function()
		local mapID = _G.GetCurrentMapAreaID()
		if mapID and C_Map and C_Map.GetMapInfo then
			local info = C_Map.GetMapInfo(mapID)
			if info then
				local isMicro = (Enum and Enum.UIMapType and info.mapType == Enum.UIMapType.Micro) or false
				local w, h = queryMapSize(mapID)
				return info.name, w, h, isMicro
			end
		end
		return nil, 0, 0, false
	end
end

-- Gatherer.Map API Implementation
function Map:GetNumFloors(mapID)
	return 0
end

function Map:GetMapID(continent, zone)
	local cList = self.ContinentList[continent]
	if cList then
		return cList[zone or 0] or cList[0]
	end
	return continent
end

function Map:GetMapInfo(mapID, mapFloor)
	local w, h = queryMapSize(mapID)
	return mapID, mapID, w, h, 0, 0
end

function Map:GetUnitPosition(unit, noMapChange)
	unit = unit or "player"
	if C_Map and C_Map.GetBestMapForUnit and C_Map.GetPlayerMapPosition then
		local mapID = C_Map.GetBestMapForUnit(unit) or C_Map.GetBestMapForUnit("player")
		if mapID then
			local pos = C_Map.GetPlayerMapPosition(mapID, unit)
			if pos then
				local x, y = pos:GetXY()
				if x and y and (x > 0 or y > 0) then
					if unit == "player" then
						self.LastPlayerPosition[1] = mapID
						self.LastPlayerPosition[2] = 0
						self.LastPlayerPosition[3] = x
						self.LastPlayerPosition[4] = y
					end
					return mapID, 0, x, y
				end
			end
		end
	end
	return nil
end

function Map:GetCurrentPlayerPosition()
	return self:GetUnitPosition("player", true)
end

function Map:TranslateWorldMapPosition(M, F, xPos, yPos, nM, nF)
	if not (M and nM and xPos and yPos) then return nil, nil end
	if M == nM then return xPos, yPos end

	if C_Map and C_Map.GetWorldPosFromMapPos and C_Map.GetMapPosFromWorldPos and CreateVector2D then
		local ok1, instID, worldPos = pcall(C_Map.GetWorldPosFromMapPos, M, CreateVector2D(xPos, yPos))
		if ok1 and instID and worldPos then
			local ok2, _, mapPos = pcall(C_Map.GetMapPosFromWorldPos, instID, worldPos, nM)
			if ok2 and mapPos then
				local nx, ny = mapPos:GetXY()
				if nx and ny then
					return nx, ny
				end
			end
		end
	end
	return nil, nil
end

function Map:ComputeDistance(m1, f1, x1, y1, m2, f2, x2, y2)
	if not (m1 and x1 and y1 and m2 and x2 and y2) then return nil end

	if m1 ~= m2 then
		x2, y2 = self:TranslateWorldMapPosition(m2, f2, x2, y2, m1, f1)
		if not (x2 and y2) then return nil end
	end

	local w, h = queryMapSize(m1)
	local xDist = (x2 - x1) * w
	local yDist = (y2 - y1) * h
	local dist = math.sqrt(xDist * xDist + yDist * yDist)
	return dist, xDist, yDist
end

function Map:Register_TargetMinimapChanged_Callback(func, id)
	if type(func) == "function" then
		self.TargetMinimapChanged_Callbacks[id or func] = func
	end
end

function Map:AssociateIcon(icon, group)
	if icon then
		self.IconAssociations[icon] = group
	end
end

function Map:GetDistanceToIcon(icon)
	local data = self.MinimapIcons[icon]
	if not data then return nil end
	local pm, pf, px, py = self:GetCurrentPlayerPosition()
	if not (pm and px and py) then return data.lastDist end
	local dist, xDist, yDist = self:ComputeDistance(pm, pf, px, py, data.mapID, data.mapFloor, data.x, data.y)
	if dist then
		data.lastDist = dist
		data.xDist = xDist
		data.yDist = yDist
	end
	return dist
end

local function positionMinimapIcon(icon, data, pm, pf, px, py, radius, rotateMinimap, facing)
	local dist, xDist, yDist = Map:ComputeDistance(pm, pf, px, py, data.mapID, data.mapFloor, data.x, data.y)
	if not dist then
		icon:Hide()
		return
	end
	data.lastDist = dist
	data.xDist = xDist
	data.yDist = yDist

	if rotateMinimap and facing then
		local sinF = math.sin(facing)
		local cosF = math.cos(facing)
		local rx = xDist * cosF - yDist * sinF
		local ry = xDist * sinF + yDist * cosF
		xDist, yDist = rx, ry
	end

	local mapW = Minimap:GetWidth() / 2
	local mapH = Minimap:GetHeight() / 2
	local scaleX = mapW / radius
	local scaleY = mapH / radius

	local ix = xDist * scaleX
	local iy = -yDist * scaleY

	-- Clamp to circular/square minimap edge
	local normDist = math.sqrt((ix / mapW) ^ 2 + (iy / mapH) ^ 2)
	if normDist > 1 then
		ix = ix / normDist
		iy = iy / normDist
		Map.IconsOnEdge[icon] = true
	else
		Map.IconsOnEdge[icon] = nil
	end

	icon:ClearAllPoints()
	icon:SetPoint("CENTER", Minimap, "CENTER", ix, iy)
	icon:Show()
end

function Map:PlaceIconOnMinimap(icon, mapID, mapFloor, xPos, yPos)
	if not (icon and mapID and xPos and yPos) then return -1 end
	local pm, pf, px, py = self:GetCurrentPlayerPosition()
	if not (pm and px and py) then return -1 end

	local data = self.MinimapIcons[icon] or {}
	data.mapID = mapID
	data.mapFloor = mapFloor or 0
	data.x = xPos
	data.y = yPos
	self.MinimapIcons[icon] = data

	local radius = getMinimapRadius()
	local rotateMinimap = (GetCVar("rotateMinimap") == "1")
	local facing = rotateMinimap and GetPlayerFacing() or 0
	positionMinimapIcon(icon, data, pm, pf, px, py, radius, rotateMinimap, facing)
	return 0
end

function Map:RemoveIconFromMinimap(icon)
	if not icon then return end
	self.MinimapIcons[icon] = nil
	self.IconsOnEdge[icon] = nil
	icon:Hide()
end

function Map:PlaceIconOnWorldMap(worldMapFrame, icon, mapID, mapFloor, xPos, yPos)
	if not (icon and mapID and xPos and yPos) then return -1 end
	local canvas = (WorldMapFrame and WorldMapFrame.GetCanvas and WorldMapFrame:GetCanvas())
		or worldMapFrame
		or _G.WorldMapButton
	if not canvas then return -1 end

	local curMapID = _G.GetCurrentMapAreaID()
	if curMapID and curMapID ~= mapID then
		xPos, yPos = self:TranslateWorldMapPosition(mapID, mapFloor, xPos, yPos, curMapID, 0)
		if not (xPos and yPos) or xPos < 0 or xPos > 1 or yPos < 0 or yPos > 1 then
			icon:Hide()
			return -1
		end
	end

	local w = canvas:GetWidth()
	local h = canvas:GetHeight()
	if not (w and h and w > 0 and h > 0) then
		icon:Hide()
		return -1
	end

	icon:ClearAllPoints()
	icon:SetPoint("CENTER", canvas, "TOPLEFT", xPos * w, -yPos * h)
	icon:Show()
	return 0
end

-- Periodic update for minimap pins & indoor/outdoor state
local updateElapsed = 0
processingFrame:SetScript("OnUpdate", function(self, elapsed)
	updateElapsed = updateElapsed + elapsed
	if updateElapsed < 0.05 then return end
	updateElapsed = 0

	Map.minimapOutside = not IsIndoors()
	Map.WorldMapVisible = (WorldMapFrame and WorldMapFrame:IsVisible()) and true or false

	if not next(Map.MinimapIcons) then return end
	local pm, pf, px, py = Map:GetCurrentPlayerPosition()
	if not (pm and px and py) then return end

	local radius = getMinimapRadius()
	local rotateMinimap = (GetCVar("rotateMinimap") == "1")
	local facing = rotateMinimap and GetPlayerFacing() or 0

	for icon, data in pairs(Map.MinimapIcons) do
		positionMinimapIcon(icon, data, pm, pf, px, py, radius, rotateMinimap, facing)
	end
end)

