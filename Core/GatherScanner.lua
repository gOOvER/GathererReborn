--[[
	Gatherer Reforged - Modern Loot & World Object Gathering Scanner (Gatherer.Scanner)
	Supports Classic Era, Classic Progression, Retail (11.x / 12.x), and dynamic future expansion nodes ("Forever").
	Author: gOOvER
	License: GNU General Public License v3.0 (GPL-3.0)
]]

Gatherer = Gatherer or {}
Gatherer.Scanner = Gatherer.Scanner or {}
Gatherer_DynamicNodes = Gatherer_DynamicNodes or {}

local Scanner = Gatherer.Scanner

local hooks = {}
local lastTip = { tip = nil, time = 0, gType = nil }
local lastCast = { target = nil, spellID = nil, gType = nil, time = 0 }
local lootProcessed = false

-- Known gathering spell IDs and textures across all WoW versions
local MINE_SPELLS = {
	[2575] = true, [2576] = true, [3564] = true, [10248] = true,
	[29354] = true, [50310] = true, [74517] = true, [102161] = true,
	[158754] = true, [195122] = true, [265837] = true, [309835] = true,
	[366260] = true, [423341] = true,
}

local HERB_SPELLS = {
	[2366] = true, [2368] = true, [3570] = true, [11993] = true,
	[28695] = true, [50300] = true, [74519] = true, [110413] = true,
	[158745] = true, [195114] = true, [265819] = true, [309780] = true,
	[366252] = true, [423339] = true,
}

local ARCH_SPELLS = {
	[73979] = true, [92828] = true,
}

local OPEN_SPELLS = {
	[3365] = true, [6247] = true, [6477] = true, [6478] = true, [22810] = true,
	-- Fishing (schools / wreckage) & Engineering Gas Cloud extraction & Logging
	[7620] = true, [7731] = true, [7732] = true, [18248] = true, [33095] = true,
	[51294] = true, [88868] = true, [110410] = true, [131474] = true, [131476] = true,
	[131490] = true, [158743] = true, [30427] = true, [167895] = true, [167898] = true,
}

local function isSafeString(val)
	if Gatherer and Gatherer.IsSafeString then
		return Gatherer.IsSafeString(val)
	end
	if type(val) ~= "string" then return false end
	if _G.issecretvalue and _G.issecretvalue(val) then return false end
	if _G.canaccessvalue and not _G.canaccessvalue(val) then return false end
	local ok, nonEmpty = pcall(function() return val ~= "" end)
	return ok and nonEmpty
end

local function isSafeValue(val)
	if Gatherer and Gatherer.IsSafeValue then
		return Gatherer.IsSafeValue(val)
	end
	if val == nil then return false end
	if _G.issecretvalue and _G.issecretvalue(val) then return false end
	if _G.canaccessvalue and not _G.canaccessvalue(val) then return false end
	return true
end

local function detectGatherTypeFromSpell(spellID)
	if not isSafeValue(spellID) or type(spellID) ~= "number" then return nil end
	if MINE_SPELLS[spellID] then return "MINE" end
	if HERB_SPELLS[spellID] then return "HERB" end
	if ARCH_SPELLS[spellID] then return "ARCH" end
	if OPEN_SPELLS[spellID] then return "OPEN" end

	local name, _, icon = GetSpellInfo(spellID)
	if icon == 134708 or icon == 136248 or icon == 136025 then
		return "MINE"
	elseif icon == 136246 or icon == 133939 then
		return "HERB"
	elseif icon == 441139 then
		return "ARCH"
	end

	if isSafeString(name) and Gatherer and Gatherer.Locale and Gatherer.Locale.TrClient then
		local herbName = Gatherer.Locale.TrClient("TRADE_HERBALISM")
		local mineName = Gatherer.Locale.TrClient("TRADE_MINING")
		if herbName and name:find(herbName, 1, true) then return "HERB" end
		if mineName and name:find(mineName, 1, true) then return "MINE" end
		if OPENING and name == OPENING then return "OPEN" end
	end
	return nil
end

local function detectGatherTypeFromTooltip()
	if not GameTooltip or not GameTooltip:IsShown() then return nil, false end

	local detectedType = nil
	local isRedRequirement = false

	for i = 2, math.min(5, GameTooltip:NumLines() or 0) do
		local lineObj = _G["GameTooltipTextLeft" .. i]
		local ok, text = pcall(function() return lineObj and lineObj:GetText() end)
		if ok and isSafeString(text) then
			local rOk, r, g, b = pcall(function() return lineObj:GetTextColor() end)
			if rOk and type(r) == "number" and type(g) == "number" and type(b) == "number" then
				if r > 0.8 and g < 0.25 and b < 0.25 then
					isRedRequirement = true
				end
			end
			if Gatherer and Gatherer.Locale and Gatherer.Locale.TrClient then
				local herbName = Gatherer.Locale.TrClient("TRADE_HERBALISM")
				local mineName = Gatherer.Locale.TrClient("TRADE_MINING")
				if herbName and text:find(herbName, 1, true) then detectedType = "HERB" end
				if mineName and text:find(mineName, 1, true) then detectedType = "MINE" end
			end
		end
	end
	return detectedType, isRedRequirement
end

function Scanner.SetTooltip()
	pcall(function()
		if not GameTooltip or not GameTooltip:IsShown() then return end
		if UnitExists and UnitExists("mouseover") then return end
		local owner = GameTooltip:GetOwner()
		if owner and owner ~= UIParent and owner ~= WorldFrame then return end

		local line1 = _G["GameTooltipTextLeft1"]
		if not line1 then return end
		local text = line1:GetText()
		if isSafeString(text) then
			local knownObjId = Gatherer and Gatherer.Nodes and Gatherer.Nodes.Names and Gatherer.Nodes.Names[text]
			local knownType = knownObjId and Gatherer.Nodes.Objects and Gatherer.Nodes.Objects[knownObjId]
			local tipType, isRedReq = detectGatherTypeFromTooltip()
			lastTip.tip = text
			lastTip.time = GetTime()
			lastTip.gType = tipType or knownType
			lastTip.isRedReq = isRedReq
			if Gatherer and Gatherer.Nodes and not Gatherer.Nodes.Names[text] and lastTip.gType and Gatherer.Nodes.RegisterDynamicNode then
				Gatherer.Nodes.RegisterDynamicNode(text, lastTip.gType)
			end
		end
	end)
end

local lastUnskilledObj = nil
local lastUnskilledTime = 0

function Scanner.RecordUnskilledGather(tipName, fallbackGType)
	if not isSafeString(tipName) then return false end
	if UnitOnTaxi and UnitOnTaxi("player") then return false end
	if UnitIsDeadOrGhost and UnitIsDeadOrGhost("player") then return false end
	if not Gatherer or not Gatherer.Nodes or not Gatherer.Api or not Gatherer.Api.AddGather then return false end

	local objId = Gatherer.Nodes.Names[tipName]
	local gType = (objId and Gatherer.Nodes.Objects[objId]) or fallbackGType or lastTip.gType
	if not objId and (gType == "HERB" or gType == "MINE") and Gatherer.Nodes.RegisterDynamicNode then
		objId = Gatherer.Nodes.RegisterDynamicNode(tipName, gType)
	end
	if not objId or (gType ~= "HERB" and gType ~= "MINE" and gType ~= "OPEN") then
		return false
	end

	local now = GetTime()
	if lastUnskilledObj == objId and (now - lastUnskilledTime) < 3 then
		return false
	end
	lastUnskilledObj = objId
	lastUnskilledTime = now

	return Gatherer.Api.AddGather(objId, gType, nil, "REQUIRE", 0, {}, false)
end

function Scanner.GetLastTip()
	if lastTip.tip and (GetTime() - (lastTip.time or 0)) < 15 then
		return lastTip
	end
	if lastCast.target and (GetTime() - (lastCast.time or 0)) < 15 then
		return { tip = lastCast.target, time = lastCast.time, gType = lastCast.gType }
	end
	return nil
end

function Scanner.RegisterHook(name, lootHook, castHook)
	hooks[name] = {
		loot = lootHook,
		cast = castHook,
	}
end

local function parseCopperFromMoneyString(str)
	if type(str) ~= "string" then return 0 end
	local total = 0
	for num in str:gmatch("(%d+)") do
		total = total * 100 + (tonumber(num) or 0)
	end
	return total
end

local function processLoot()
	if lootProcessed then return end
	lootProcessed = true

	local nodeName = nil
	local gType = nil
	local now = GetTime()

	if lastCast.target and (now - (lastCast.time or 0)) < 12 then
		nodeName = lastCast.target
		gType = lastCast.gType
	end
	if not nodeName and lastTip.tip and (now - (lastTip.time or 0)) < 12 then
		nodeName = lastTip.tip
		gType = gType or lastTip.gType
	end
	if not nodeName then return end

	if Gatherer and Gatherer.Nodes then
		local objId = Gatherer.Nodes.Names[nodeName]
		if objId then
			gType = Gatherer.Nodes.Objects[objId] or gType
		elseif gType and Gatherer.Nodes.RegisterDynamicNode then
			objId = Gatherer.Nodes.RegisterDynamicNode(nodeName, gType)
		end
	end

	if not gType then return end

	local lootTable = {}
	local coinAmount = 0
	local primaryItemID = nil
	local numSlots = GetNumLootItems and GetNumLootItems() or 0

	for slot = 1, numSlots do
		local slotType = GetLootSlotType and GetLootSlotType(slot)
		local texture, item, quantity, currencyID = GetLootSlotInfo(slot)
		local link = GetLootSlotLink and GetLootSlotLink(slot)

		local isMoney = (LOOT_SLOT_MONEY and slotType == LOOT_SLOT_MONEY)
			or (Enum and Enum.LootSlotType and slotType == Enum.LootSlotType.Money)
		local isCurrency = (LOOT_SLOT_CURRENCY and slotType == LOOT_SLOT_CURRENCY)
			or (Enum and Enum.LootSlotType and slotType == Enum.LootSlotType.Currency)

		if isMoney then
			coinAmount = coinAmount + parseCopperFromMoneyString(item)
		elseif isCurrency and currencyID then
			table.insert(lootTable, {
				id = currencyID,
				count = quantity or 1,
				type = LOOT_SLOT_CURRENCY or 3,
			})
		elseif link then
			local itemID = tonumber(link:match("item:(%d+)"))
			if itemID and not primaryItemID then
				primaryItemID = itemID
			end
			table.insert(lootTable, {
				link = link,
				id = itemID,
				count = quantity or 1,
				type = slotType,
			})
		end
	end

	-- Save primary item icon for dynamically discovered nodes
	if primaryItemID and Gatherer and Gatherer.Nodes and Gatherer.Nodes.Names[nodeName] then
		local objId = Gatherer.Nodes.Names[nodeName]
		if Gatherer.Nodes.PrimaryItems and not Gatherer.Nodes.PrimaryItems[objId] then
			Gatherer.Nodes.PrimaryItems[objId] = primaryItemID
		end
	end

	local extraData = { tip = nodeName }
	for _, h in pairs(hooks) do
		if h.loot then
			h.loot(gType, lootTable, coinAmount, extraData)
		end
	end
end

local scannerFrame
function Scanner.Init()
	if scannerFrame then return end
	scannerFrame = CreateFrame("Frame", "GathererScannerFrame")
	scannerFrame:RegisterEvent("UNIT_SPELLCAST_SENT")
	scannerFrame:RegisterEvent("LOOT_READY")
	scannerFrame:RegisterEvent("LOOT_OPENED")
	scannerFrame:RegisterEvent("LOOT_CLOSED")
	scannerFrame:RegisterEvent("UPDATE_MOUSEOVER_UNIT")

	scannerFrame:SetScript("OnEvent", function(self, event, ...)
		if event == "UNIT_SPELLCAST_SENT" then
			local unit, target, castGUID, spellID = ...
			if isSafeString(unit) and unit == "player" then
				-- In older clients UNIT_SPELLCAST_SENT passed (unit, spellName, rank, target)
				if not isSafeValue(spellID) or type(spellID) ~= "number" then
					local _, _, oldTarget, oldSpellID = select(2, ...)
					if isSafeString(oldTarget) then
						target = oldTarget
					end
					spellID = isSafeValue(oldSpellID) and tonumber(oldSpellID) or nil
				end
				if isSafeString(target) then
					lastCast.target = target
					lastCast.spellID = spellID
					lastCast.gType = detectGatherTypeFromSpell(spellID) or lastTip.gType
					lastCast.time = GetTime()
					if Gatherer and Gatherer.Nodes and not Gatherer.Nodes.Names[target] and lastCast.gType and Gatherer.Nodes.RegisterDynamicNode then
						Gatherer.Nodes.RegisterDynamicNode(target, lastCast.gType)
					end
				end
			end
		elseif event == "LOOT_READY" or event == "LOOT_OPENED" then
			processLoot()
		elseif event == "LOOT_CLOSED" then
			lootProcessed = false
		elseif event == "UPDATE_MOUSEOVER_UNIT" then
			Scanner.SetTooltip()
		end
	end)

	if GameTooltip then
		GameTooltip:HookScript("OnShow", function()
			Scanner.SetTooltip()
		end)
	end

	if WorldFrame and WorldFrame.HookScript then
		WorldFrame:HookScript("OnMouseDown", function(_, button)
			if button ~= "LeftButton" and button ~= "RightButton" then return end
			if not GameTooltip or not GameTooltip:IsShown() then return end
			if UnitExists and UnitExists("mouseover") then return end
			local owner = GameTooltip:GetOwner()
			if owner and owner ~= UIParent and owner ~= WorldFrame then return end

			Scanner.SetTooltip()
			if lastTip.tip and (GetTime() - (lastTip.time or 0)) < 1.0 then
				local objId = Gatherer and Gatherer.Nodes and Gatherer.Nodes.Names and Gatherer.Nodes.Names[lastTip.tip]
				local gType = (objId and Gatherer.Nodes.Objects and Gatherer.Nodes.Objects[objId]) or lastTip.gType
				if gType == "HERB" or gType == "MINE" then
					local hasSkill = Gatherer and Gatherer.Var and Gatherer.Var.Skills and Gatherer.Var.Skills[gType]
					if (not hasSkill) or lastTip.isRedReq or button == "LeftButton" then
						Scanner.RecordUnskilledGather(lastTip.tip, gType)
					end
				end
			end
		end)
	end
end

