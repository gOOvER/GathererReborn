--[[
	Gatherer Reborn - Cross-Expansion WoW API Polyfills & UI Helpers
	Author: gOOvER
	License: GNU General Public License v3.0 (GPL-3.0)
]]

local _G = _G
Gatherer = Gatherer or {}
Gatherer.UI = Gatherer.UI or {}

-- Helper to safely inspect strings without triggering WoW 12.x '<secret string>' taint errors
function Gatherer.IsSafeString(val)
	if type(val) ~= "string" then return false end
	if _G.issecretvalue and _G.issecretvalue(val) then return false end
	if _G.canaccessvalue and not _G.canaccessvalue(val) then return false end
	local ok, nonEmpty = pcall(function() return val ~= "" end)
	return ok and nonEmpty
end

function Gatherer.IsSafeValue(val)
	if val == nil then return false end
	if _G.issecretvalue and _G.issecretvalue(val) then return false end
	if _G.canaccessvalue and not _G.canaccessvalue(val) then return false end
	return true
end

--------------------------------------------------------------------------
-- 1. Lua & WoW API Polyfills (Retail 11.x / 12.x / Classic Forever)
--------------------------------------------------------------------------

if not table.getn then
	table.getn = function(t)
		return t and #t or 0
	end
end

if not table.maxn then
	table.maxn = function(t)
		local max = 0
		if t then
			for k in pairs(t) do
				if type(k) == "number" and k > max then
					max = k
				end
			end
		end
		return max
	end
end

if not unpack and table.unpack then
	_G.unpack = table.unpack
end

-- AddOn Management APIs (moved to C_AddOns in 10.2.6 / 11.0)
if not _G.GetNumAddOns and C_AddOns and C_AddOns.GetNumAddOns then
	_G.GetNumAddOns = C_AddOns.GetNumAddOns
end
if not _G.GetAddOnInfo and C_AddOns and C_AddOns.GetAddOnInfo then
	_G.GetAddOnInfo = C_AddOns.GetAddOnInfo
end
if not _G.GetAddOnMetadata and C_AddOns and C_AddOns.GetAddOnMetadata then
	_G.GetAddOnMetadata = C_AddOns.GetAddOnMetadata
end
if not _G.LoadAddOn and C_AddOns and C_AddOns.LoadAddOn then
	_G.LoadAddOn = C_AddOns.LoadAddOn
end
if not _G.EnableAddOn and C_AddOns and C_AddOns.EnableAddOn then
	_G.EnableAddOn = function(addon, character)
		return C_AddOns.EnableAddOn(addon, character or UnitName("player"))
	end
end

-- Addon Chat Communication APIs (moved to C_ChatInfo in 8.0)
if not _G.RegisterAddonMessagePrefix and C_ChatInfo and C_ChatInfo.RegisterAddonMessagePrefix then
	_G.RegisterAddonMessagePrefix = C_ChatInfo.RegisterAddonMessagePrefix
end
if not _G.SendAddonMessage and C_ChatInfo and C_ChatInfo.SendAddonMessage then
	_G.SendAddonMessage = function(prefix, text, chatType, target)
		return C_ChatInfo.SendAddonMessage(prefix, tostring(text or ""), chatType, target)
	end
end

-- Spell Info APIs (moved to C_Spell in 11.0)
if not _G.GetSpellInfo and C_Spell and C_Spell.GetSpellInfo then
	_G.GetSpellInfo = function(spellIdentifier)
		if not spellIdentifier then return nil end
		local info = C_Spell.GetSpellInfo(spellIdentifier)
		if info then
			return info.name, nil, info.iconID, info.castTime, info.minRange, info.maxRange, info.spellID, info.originalIconID
		end
		return nil
	end
end

-- Item Info APIs (moved to C_Item in 10.2.6 / 11.0)
if not _G.GetItemInfo and C_Item and C_Item.GetItemInfo then
	_G.GetItemInfo = C_Item.GetItemInfo
end
if not _G.GetItemIcon and C_Item and C_Item.GetItemIconByID then
	_G.GetItemIcon = function(item)
		if not item then return nil end
		return C_Item.GetItemIconByID(item)
	end
end

-- Currency Info APIs (moved to C_CurrencyInfo in 9.0)
if not _G.GetCurrencyInfo and C_CurrencyInfo and C_CurrencyInfo.GetCurrencyInfo then
	_G.GetCurrencyInfo = function(currencyID)
		if not currencyID then return nil end
		local info = C_CurrencyInfo.GetCurrencyInfo(currencyID)
		if info then
			return info.name, info.quantity, info.iconFileID, info.quantityEarnedThisWeek, info.maxWeeklyQuantity, info.maxQuantity, info.discovered, info.quality
		end
		return nil
	end
end

-- Minimap Tracking APIs (moved to C_Minimap in 9.0 / table return in 11.0)
local rawGetNumTrackingTypes = _G.GetNumTrackingTypes or (C_Minimap and C_Minimap.GetNumTrackingTypes)
_G.GetNumTrackingTypes = function()
	if rawGetNumTrackingTypes then
		return rawGetNumTrackingTypes() or 0
	end
	return 0
end

local rawGetTrackingInfo = _G.GetTrackingInfo or (C_Minimap and C_Minimap.GetTrackingInfo)
_G.GetTrackingInfo = function(id)
	if not rawGetTrackingInfo then return nil end
	local a, b, c, d, e, f = rawGetTrackingInfo(id)
	if type(a) == "table" then
		return a.name, a.texture, a.active, a.category, a.subType, a.spellID
	end
	return a, b, c, d, e, f
end

-- Minimap Click handler (converted to MinimapMixin in 10.0)
if not _G.Minimap_OnClick then
	_G.Minimap_OnClick = function(self, button)
		if self and self.OnClick then
			self:OnClick(button)
		end
	end
end

--------------------------------------------------------------------------
-- 2. Dropdown (Taint-Free Modern Dropdown Widget for NodeSearch Window)
--------------------------------------------------------------------------

do
	local Dropdown = {}
	Gatherer.UI.Dropdown = Dropdown
	do
		local activeMenu
		local function getDropdownMenu()
			if activeMenu then return activeMenu end
			local menu = CreateFrame("Frame", "GathererDropdownMenu", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
			menu:SetFrameStrata("FULLSCREEN_DIALOG")
			menu:SetToplevel(true)
			menu:SetClampedToScreen(true)
			menu:SetBackdrop({
				bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
				edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
				tile = true, tileSize = 16, edgeSize = 16,
				insets = { left = 4, right = 4, top = 4, bottom = 4 }
			})
			menu:SetBackdropColor(0.08, 0.08, 0.1, 0.96)
			menu:Hide()
			menu.buttons = {}
			activeMenu = menu
			return menu
		end

		function Dropdown:Create(name, parent, width, callback, listSource, currentVal)
			width = width or 140
			local box = CreateFrame("Button", name, parent, BackdropTemplateMixin and "BackdropTemplate" or nil)
			box:SetSize(width, 24)
			box:SetBackdrop({
				bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
				edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
				tile = true, tileSize = 16, edgeSize = 12,
				insets = { left = 3, right = 3, top = 3, bottom = 3 }
			})
			box:SetBackdropColor(0.1, 0.1, 0.12, 0.9)

			box.text = box:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
			box.text:SetPoint("LEFT", box, "LEFT", 8, 0)
			box.text:SetPoint("RIGHT", box, "RIGHT", -22, 0)
			box.text:SetJustifyH("LEFT")

			local arrow = box:CreateTexture(nil, "ARTWORK")
			arrow:SetSize(16, 16)
			arrow:SetPoint("RIGHT", box, "RIGHT", -4, 0)
			arrow:SetTexture("Interface\\ChatFrame\\UI-ChatIcon-ScrollDown-Up")

			box.value = currentVal

			function box:SetText(str)
				box.text:SetText(tostring(str or ""))
			end

			function box:GetItems()
				local items = type(listSource) == "function" and listSource() or listSource
				if type(items) ~= "table" then return {} end
				return items
			end

			function box:UpdateValue(val)
				box.value = val
				local items = box:GetItems()
				for _, item in ipairs(items) do
					if type(item) == "table" then
						if item[1] == val then
							box:SetText(item[2] or item[1])
							return
						end
					elseif item == val then
						box:SetText(item)
						return
					end
				end
				if val ~= nil then
					box:SetText(tostring(val))
				end
			end

			box:SetScript("OnClick", function(self)
				local menu = getDropdownMenu()
				if menu:IsShown() and menu.owner == self then
					menu:Hide()
					return
				end
				menu.owner = self
				local items = self:GetItems()
				for _, b in ipairs(menu.buttons) do b:Hide() end

				local maxW = width
				local count = #items
				for i, item in ipairs(items) do
					local k, label
					if type(item) == "table" then
						k, label = item[1], item[2] or item[1]
					else
						k, label = item, tostring(item)
					end
					local btn = menu.buttons[i]
					if not btn then
						btn = CreateFrame("Button", nil, menu)
						btn:SetHeight(18)
						btn:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
						btn.label = btn:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
						btn.label:SetPoint("LEFT", btn, "LEFT", 6, 0)
						btn.label:SetJustifyH("LEFT")
						menu.buttons[i] = btn
					end
					btn:SetPoint("TOPLEFT", menu, "TOPLEFT", 6, -6 - (i - 1) * 18)
					btn.label:SetText(tostring(label))
					local tw = (btn.label:GetStringWidth() or 80) + 20
					if tw > maxW then maxW = tw end
					btn:SetScript("OnClick", function()
						self.value = k
						self:SetText(label)
						menu:Hide()
						if callback then
							callback(self, self.element, k, label)
						end
					end)
					btn:Show()
				end
				for i = 1, count do
					menu.buttons[i]:SetWidth(maxW - 12)
				end
				menu:SetSize(maxW, math.max(24, count * 18 + 12))
				menu:ClearAllPoints()
				menu:SetPoint("TOPLEFT", self, "BOTTOMLEFT", 0, -2)
				menu:Show()
			end)

			box:UpdateValue(currentVal)
			return box
		end
	end
end

--------------------------------------------------------------------------
-- 3. DataGrid (Sortable Table Widget for NodeSearch)
--------------------------------------------------------------------------

do
	local DataGrid = {}
	Gatherer.UI.DataGrid = DataGrid
	do
		function DataGrid:Create(parent, columns, onEnter, onLeave, onClick, onResize, onSelect)
			local sheet = {
				parent = parent,
				columns = columns or {},
				data = {},
				sortCol = 1,
				sortAsc = true,
				rows = {},
			}

			local headerFrame = CreateFrame("Frame", nil, parent)
			headerFrame:SetPoint("TOPLEFT", parent, "TOPLEFT", 8, -6)
			headerFrame:SetPoint("TOPRIGHT", parent, "TOPRIGHT", -26, -6)
			headerFrame:SetHeight(20)

			local xOffset = 0
			for colIdx, colDef in ipairs(sheet.columns) do
				local colName, colType, colWidth = colDef[1], colDef[2], colDef[3] or 80
				local hdr = CreateFrame("Button", nil, headerFrame)
				hdr:SetPoint("TOPLEFT", headerFrame, "TOPLEFT", xOffset, 0)
				hdr:SetSize(colWidth, 18)
				hdr:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
				hdr.text = hdr:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
				hdr.text:SetPoint("LEFT", hdr, "LEFT", 2, 0)
				hdr.text:SetPoint("RIGHT", hdr, "RIGHT", -2, 0)
				hdr.text:SetJustifyH(colType == "NUMBER" and "RIGHT" or "LEFT")
				hdr.text:SetText(colName or "")
				hdr:SetScript("OnClick", function()
					if sheet.sortCol == colIdx then
						sheet.sortAsc = not sheet.sortAsc
					else
						sheet.sortCol = colIdx
						sheet.sortAsc = true
					end
					sheet:SortAndRender()
				end)
				xOffset = xOffset + colWidth + 4
			end

			local rowHeight = 16
			local maxRows = 16
			local scrollFrame = CreateFrame("ScrollFrame", nil, parent, "FauxScrollFrameTemplate")
			scrollFrame:SetPoint("TOPLEFT", headerFrame, "BOTTOMLEFT", 0, -2)
			scrollFrame:SetPoint("BOTTOMRIGHT", parent, "BOTTOMRIGHT", -26, 6)

			for r = 1, maxRows do
				local row = CreateFrame("Button", nil, parent)
				row:SetHeight(rowHeight)
				row:SetPoint("TOPLEFT", headerFrame, "BOTTOMLEFT", 0, -2 - (r - 1) * rowHeight)
				row:SetPoint("RIGHT", scrollFrame, "RIGHT", 0, 0)
				row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
				row.cells = {}
				local cx = 0
				for colIdx, colDef in ipairs(sheet.columns) do
					local colType, colWidth = colDef[2], colDef[3] or 80
					local cell = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
					cell:SetPoint("LEFT", row, "LEFT", cx + 2, 0)
					cell:SetWidth(colWidth - 4)
					cell:SetJustifyH(colType == "NUMBER" and "RIGHT" or "LEFT")
					row.cells[colIdx] = cell
					cx = cx + colWidth + 4
				end
				sheet.rows[r] = row
			end

			function sheet:Render()
				local total = #self.data
				FauxScrollFrame_Update(scrollFrame, total, maxRows, rowHeight)
				local offset = FauxScrollFrame_GetOffset(scrollFrame)
				for r = 1, maxRows do
					local idx = offset + r
					local row = self.rows[r]
					local entry = self.data[idx]
					if entry then
						for colIdx = 1, #self.columns do
							local val = entry[colIdx]
							row.cells[colIdx]:SetText(val ~= nil and tostring(val) or "")
						end
						row:Show()
					else
						row:Hide()
					end
				end
			end

			function sheet:SortAndRender()
				local col = self.sortCol
				local asc = self.sortAsc
				table.sort(self.data, function(a, b)
					local va, vb = a[col], b[col]
					if va == vb then return false end
					if va == nil then return not asc end
					if vb == nil then return asc end
					if type(va) ~= type(vb) then
						va, vb = tostring(va), tostring(vb)
					end
					if asc then return va < vb else return va > vb end
				end)
				self:Render()
			end

			function sheet:SetData(data, style)
				self.data = data or {}
				self:SortAndRender()
			end

			scrollFrame:SetScript("OnVerticalScroll", function(self, offset)
				FauxScrollFrame_OnVerticalScroll(self, offset, rowHeight, function() sheet:Render() end)
			end)

			return sheet
		end
	end
end
