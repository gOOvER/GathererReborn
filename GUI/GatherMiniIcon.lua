--[[
	Gatherer Reforged Addon for World of Warcraft(tm).
	Version: 1.0.0

	Minimap Icon & LibDBIcon-1.0 / LibDataBroker-1.1 / Addon Compartment Integration

	License:
		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.
]]

local _tr = Gatherer.Locale.Tr
local _trC = Gatherer.Locale.TrClient
local _trL = Gatherer.Locale.TrLocale

local miniIcon = CreateFrame("Button", "Gatherer_MinimapOptionsButton", Minimap)
Gatherer.MiniIcon = miniIcon

miniIcon:SetToplevel(true)
miniIcon:SetMovable(true)
miniIcon:SetFrameStrata("LOW")
miniIcon:SetWidth(33)
miniIcon:SetHeight(33)
miniIcon:SetPoint("RIGHT", Minimap, "LEFT", 0, 0)
miniIcon:Hide()
miniIcon.icon = miniIcon:CreateTexture("", "BACKGROUND")
miniIcon.icon:SetTexture(133939)
miniIcon.icon:SetTexCoord(0.075, 0.925, 0.075, 0.925)
miniIcon.icon:SetWidth(17)
miniIcon.icon:SetHeight(17)
miniIcon.icon:SetPoint("CENTER", miniIcon, "CENTER", 0, 0)
miniIcon.mask = miniIcon:CreateTexture("", "OVERLAY")
miniIcon.mask:SetTexCoord(0.0, 0.6, 0.0, 0.6)
miniIcon.mask:SetTexture("Interface\\Minimap\\Minimap-TrackingBorder")
miniIcon.mask:SetAllPoints(true)

local ldbObject
local LDBIcon = LibStub and LibStub("LibDBIcon-1.0", true)
local usingLDBIcon = false

local function click(obj, button)
	if (button == "LeftButton") then
		if IsAltKeyDown() and Gatherer.Integrations and Gatherer.Integrations.Session then
			Gatherer.Integrations.Session.Reset()
			if Gatherer.Util and Gatherer.Util.ChatPrint then
				Gatherer.Util.ChatPrint("|cff00ff96Gatherer Reforged:|r " .. _tr("CONFIG_SESSION_RESET"))
			end
			return
		end
		local dtype = "minimap.enable"
		if (IsModifierKeyDown()) then
			dtype = "plugin.gatherer_hud.enable"
		end
		local cur = Gatherer.Config.GetSetting(dtype)
		Gatherer.Config.SetSetting(dtype, not cur)
	elseif (button == "RightButton") then
		if (IsModifierKeyDown()) then
			Gatherer.Config.ToggleOptions()
		else
			Gatherer.Report.Toggle()
		end
	end
end

local function addActionDoubleLine(tooltip, rawLine)
	if not rawLine then return end
	local left, right = rawLine:match("^(.-|r):?%s*(.+)$")
	if not left then
		left, right = rawLine:match("^([^:]+):%s*(.+)$")
	end
	if left and right and tooltip.AddDoubleLine then
		left = left:gsub(":$", "")
		right = right:gsub("^:%s*", "")
		tooltip:AddDoubleLine(left, "   " .. right, 0.12, 0.70, 1.0, 0.90, 0.93, 0.98)
	else
		tooltip:AddLine(rawLine, 0.90, 0.93, 0.98)
	end
end

local function drawTooltip(self)
	if not self or not self.AddLine then return end
	Gatherer.Locale.SECTION_HIGHLIGHT_CODE = "|cff1fb3ff"

	local ver = tostring((Gatherer.Var and Gatherer.Var.Version) or "1.0.0")
	if self.AddDoubleLine then
		self:AddDoubleLine("|T133939:16:16:0:0:64:64:5:59:5:59|t  |cffffd200Gatherer Reforged|r", "|cff00ff96v" .. ver .. "|r")
	else
		self:AddLine("|cffffd200Gatherer Reforged v" .. ver .. "|r")
	end

	self:AddLine(" ")
	if self.AddDoubleLine then
		local mmOn = Gatherer.Config.GetSetting("minimap.enable")
		local wmOn = Gatherer.Config.GetSetting("mainmap.enable")
		local hudOn = Gatherer.Config.GetSetting("plugin.gatherer_hud.enable")
		local onTxt = "|cff00ff96" .. _tr("ENABLE") .. "|r"
		local offTxt = "|cff778292" .. _tr("DISABLE") .. "|r"
		self:AddDoubleLine("|cffb0b8c4" .. _tr("CONFIG_SECTION_MINIMAP") .. ":|r", mmOn and onTxt or offTxt)
		self:AddDoubleLine("|cffb0b8c4" .. _tr("CONFIG_GENERAL_WORLDMAP_LABEL") .. ":|r", wmOn and onTxt or offTxt)
		self:AddDoubleLine("|cffb0b8c43D HUD:|r", hudOn and onTxt or offTxt)
	end

	if Gatherer.Integrations and Gatherer.Integrations.Session and Gatherer.Integrations.Session.AddTooltipLines then
		Gatherer.Integrations.Session.AddTooltipLines(self)
	end

	self:AddLine(" ")
	addActionDoubleLine(self, _tr("MINIICON_ACTIONS_CLICK"))
	addActionDoubleLine(self, _tr("MINIICON_ACTIONS_SHIFT_CLICK"))
	addActionDoubleLine(self, _tr("MINIICON_ACTIONS_RIGHT_CLICK"))
	addActionDoubleLine(self, _tr("MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"))
	addActionDoubleLine(self, "|cff1fb3ffAlt-Click:|r " .. _tr("CONFIG_SESSION_RESET"))
end

local function onEnter(self)
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMLEFT")
	GameTooltip:ClearLines()
	drawTooltip(GameTooltip)
	GameTooltip:Show()
end

local function onLeave()
	GameTooltip:Hide()
end

local function mouseDown()
	miniIcon.icon:SetTexCoord(0, 1, 0, 1)
end

local function mouseUp()
	miniIcon.icon:SetTexCoord(0.075, 0.925, 0.075, 0.925)
end

local moving = false
local function dragStart()
	moving = true
end

local function dragStop()
	miniIcon.icon:SetTexCoord(0.075, 0.925, 0.075, 0.925)
	moving = false
end

local function reposition(angle)
	local enabled = Gatherer.Config.GetSetting("miniicon.enable")
	if usingLDBIcon and LDBIcon then
		Gatherer_SavedSettings_AccountWide = Gatherer_SavedSettings_AccountWide or {}
		Gatherer_SavedSettings_AccountWide.minimapIcon = Gatherer_SavedSettings_AccountWide.minimapIcon or {}
		Gatherer_SavedSettings_AccountWide.minimapIcon.hide = not enabled
		if angle then
			Gatherer_SavedSettings_AccountWide.minimapIcon.minimapPos = angle
			Gatherer.Config.SetSetting("miniicon.angle", angle)
		end
		if enabled then
			LDBIcon:Show("GathererReforged")
		else
			LDBIcon:Hide("GathererReforged")
		end
		miniIcon:Hide()
		return
	end

	if not enabled then
		miniIcon:Hide()
		return
	end
	miniIcon:Show()
	if not angle then
		angle = Gatherer.Config.GetSetting("miniicon.angle") or 0.5
	else
		Gatherer.Config.SetSetting("miniicon.angle", angle)
	end
	local distance = Gatherer.Config.GetSetting("miniicon.distance") or 12

	local width, height = Minimap:GetWidth() / 2, Minimap:GetHeight() / 2
	width = width + distance
	height = height + distance

	local iconX = width * sin(angle)
	local iconY = height * cos(angle)

	local shape = _G.GetMinimapShape and _G.GetMinimapShape()
	if shape == "SQUARE" then
		iconX = math.max(-width, math.min(width, iconX * 1.4142))
		iconY = math.max(-height, math.min(height, iconY * 1.4142))
	end

	miniIcon:ClearAllPoints()
	miniIcon:SetPoint("CENTER", Minimap, "CENTER", iconX, iconY)
end
miniIcon.Reposition = reposition

local function update()
	if moving and not usingLDBIcon then
		local curX, curY = GetCursorPosition()
		local miniX, miniY = Minimap:GetCenter()
		miniX = miniX * Minimap:GetEffectiveScale()
		miniY = miniY * Minimap:GetEffectiveScale()

		local relX = miniX - curX
		local relY = miniY - curY
		local angle = math.deg(math.atan2(relX, relY)) + 180

		reposition(angle)
	end
end

miniIcon:RegisterForClicks("LeftButtonUp", "RightButtonUp")
miniIcon:RegisterForDrag("LeftButton")
miniIcon:SetScript("OnMouseDown", mouseDown)
miniIcon:SetScript("OnMouseUp", mouseUp)
miniIcon:SetScript("OnDragStart", dragStart)
miniIcon:SetScript("OnDragStop", dragStop)
miniIcon:SetScript("OnClick", click)
miniIcon:SetScript("OnUpdate", update)
miniIcon:SetScript("OnEnter", onEnter)
miniIcon:SetScript("OnLeave", onLeave)

function miniIcon.UpdateLDBText()
	if not ldbObject then return end
	if Gatherer.Integrations and Gatherer.Integrations.Session and Gatherer.Config.GetSetting("session.enable", true) then
		local s = Gatherer.Integrations.Session.GetSummary()
		if s.nodes > 0 then
			if s.goldPerHour > 0 then
				ldbObject.text = string.format("%d Nodes | %s/h", s.nodes, Gatherer.Integrations.FormatMoney(s.goldPerHour))
			else
				ldbObject.text = string.format("%d Nodes (%d/h)", s.nodes, s.nodesPerHour)
			end
			return
		end
	end
	ldbObject.text = "Gatherer Reforged"
end

function miniIcon.CreateLDB()
	if not LibStub then return end
	local LibDataBroker = LibStub:GetLibrary("LibDataBroker-1.1", true)
	if LibDataBroker and not ldbObject then
		ldbObject = LibDataBroker:NewDataObject("GathererReforged", {
			type = "data source",
			label = "Gatherer Reforged",
			text = "Gatherer Reforged",
			icon = 133939,
			OnClick = function(self, button)
				click(self, button)
			end,
			OnTooltipShow = drawTooltip,
		})
	end

	LDBIcon = LibStub("LibDBIcon-1.0", true)
	if LDBIcon and ldbObject and not LDBIcon:IsRegistered("GathererReforged") then
		Gatherer_SavedSettings_AccountWide = Gatherer_SavedSettings_AccountWide or {}
		local iconDB = Gatherer_SavedSettings_AccountWide.minimapIcon or {
			hide = not Gatherer.Config.GetSetting("miniicon.enable"),
			minimapPos = Gatherer.Config.GetSetting("miniicon.angle") or 220,
		}
		Gatherer_SavedSettings_AccountWide.minimapIcon = iconDB
		LDBIcon:Register("GathererReforged", ldbObject, iconDB)
		usingLDBIcon = true
		miniIcon:Hide()
	end
end

function miniIcon.Update()
	local enabled = Gatherer.Config.GetSetting("minimap.enable")
	miniIcon.icon:SetDesaturated(not enabled)
	if usingLDBIcon and LDBIcon then
		local btn = LDBIcon:GetMinimapButton("GathererReforged")
		if btn and btn.icon and btn.icon.SetDesaturated then
			btn.icon:SetDesaturated(not enabled)
		end
	end
end

-- Retail 10.1+ / 11.x / 12.x Addon Compartment handlers
function Gatherer_OnAddonCompartmentClick(addonName, buttonName)
	click(miniIcon, buttonName)
end

function Gatherer_OnAddonCompartmentEnter(addonName, menuButtonFrame)
	onEnter(menuButtonFrame or miniIcon)
end

function Gatherer_OnAddonCompartmentLeave(addonName, menuButtonFrame)
	onLeave(menuButtonFrame or miniIcon)
end
