--[[
	Gatherer Reforged Addon for World of Warcraft(tm).
	Modernized Node Density & Zone Search UI (Gatherer.NodeSearch)
	Version: 1.0.0
	Author: gOOvER
	License: GNU General Public License v3.0 (GPL-3.0)
]]

local _tr = Gatherer.Locale.Tr
local UIStyle = Gatherer.UIStyle

Gatherer.NodeSearch = {}
local public = Gatherer.NodeSearch
local private = {}

local SEARCH_LINES = 17
local ROW_HEIGHT = 22

private.frame = CreateFrame("Frame", "GathererNodeSearchFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate" or nil)
local frame = private.frame
public.Frame = frame

function public.Show()
	Gatherer.Config.HideOptions()
	if Gatherer.Report and Gatherer.Report.Hide then
		Gatherer.Report.Hide()
	end
	frame:Show()
	private.RunSearch()
end

function public.Hide()
	frame:Hide()
end

function public.Toggle()
	if frame:IsShown() then
		public.Hide()
	else
		public.Show()
	end
end

frame:Hide()
frame:SetSize(780, 540)
frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
frame:SetFrameStrata("DIALOG")
frame:SetToplevel(true)
frame:SetMovable(true)
frame:SetClampedToScreen(true)
frame:EnableMouse(true)
UIStyle.ApplyBox(frame, 0.07, 0.08, 0.11, 0.97, 0.26, 0.30, 0.38, 1)
table.insert(UISpecialFrames, "GathererNodeSearchFrame")

-- 1. Header Bar
frame.Header = UIStyle.CreateHeader(
	frame,
	"Gatherer Reforged  |cff667080—|r  |cffffffff" .. _tr("DENSITY_SEARCH_TITLE") .. "|r",
	133939,
	function() public.Hide() end
)

-- 2. Toolbar (Live Search Input + Category Filter Tabs)
frame.Toolbar = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate" or nil)
frame.Toolbar:SetPoint("TOPLEFT", frame.Header, "BOTTOMLEFT", 10, -8)
frame.Toolbar:SetPoint("TOPRIGHT", frame.Header, "BOTTOMRIGHT", -10, -8)
frame.Toolbar:SetHeight(36)
UIStyle.ApplyBox(frame.Toolbar, 0.10, 0.12, 0.15, 1, 0.20, 0.23, 0.29, 1)

frame.SearchBox = UIStyle.CreateEditBox(frame.Toolbar, 280, 24, "Vorkommen oder Gebiet filtern...")
frame.SearchBox:SetPoint("LEFT", frame.Toolbar, "LEFT", 8, 0)
frame.SearchBox.OnValueChanged = function()
	private.RunSearch()
end

private.activeCategory = "ALL"
private.categoryButtons = {}
local CATEGORIES = {
	{ key = "ALL",  label = "Alle" },
	{ key = "HERB", label = "Kräuter" },
	{ key = "MINE", label = "Bergbau" },
	{ key = "OPEN", label = "Schätze" },
	{ key = "ARCH", label = "Archäol." },
}

local prevCatBtn
for i = #CATEGORIES, 1, -1 do
	local cat = CATEGORIES[i]
	local cBtn = CreateFrame("Button", nil, frame.Toolbar, BackdropTemplateMixin and "BackdropTemplate" or nil)
	cBtn:SetHeight(24)
	local cLbl = cBtn:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	cLbl:SetPoint("CENTER", 0, 0)
	cLbl:SetText(cat.label)
	cBtn:SetWidth(math.max((cLbl:GetStringWidth() or 40) + 16, 54))
	if not prevCatBtn then
		cBtn:SetPoint("RIGHT", frame.Toolbar, "RIGHT", -8, 0)
	else
		cBtn:SetPoint("RIGHT", prevCatBtn, "LEFT", -4, 0)
	end
	prevCatBtn = cBtn
	cBtn.key = cat.key
	cBtn.Label = cLbl
	cBtn:SetScript("OnClick", function()
		private.activeCategory = cat.key
		private.UpdateCategoryButtons()
		private.RunSearch()
	end)
	private.categoryButtons[cat.key] = cBtn
end

function private.UpdateCategoryButtons()
	for key, btn in pairs(private.categoryButtons) do
		if key == private.activeCategory then
			UIStyle.ApplyBox(btn, 0.26, 0.21, 0.09, 1, 0.85, 0.68, 0.18, 1)
			btn.Label:SetTextColor(1, 0.88, 0.30)
		else
			UIStyle.ApplyBox(btn, 0.13, 0.15, 0.19, 1, 0.22, 0.25, 0.32, 1)
			btn.Label:SetTextColor(0.68, 0.72, 0.80)
		end
	end
end
private.UpdateCategoryButtons()

-- 3. Footer Bar
frame.Footer = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate" or nil)
frame.Footer:SetPoint("BOTTOMLEFT", frame, "BOTTOMLEFT", 10, 10)
frame.Footer:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", -10, 10)
frame.Footer:SetHeight(36)
UIStyle.ApplyBox(frame.Footer, 0.10, 0.12, 0.15, 1, 0.20, 0.23, 0.29, 1)

frame.GatherablesReport = UIStyle.CreateButton(frame.Footer, 165, 24, "📋 " .. _tr("LABEL_REPORT"), "default")
frame.GatherablesReport:SetPoint("LEFT", frame.Footer, "LEFT", 8, 0)
frame.GatherablesReport:SetScript("OnClick", function()
	frame:Hide()
	Gatherer.Report.Show()
end)

frame.Config = UIStyle.CreateButton(frame.Footer, 145, 24, "⚙ " .. _tr("LABEL_CONFIG"), "default")
frame.Config:SetPoint("LEFT", frame.GatherablesReport, "RIGHT", 8, 0)
frame.Config:SetScript("OnClick", function()
	frame:Hide()
	Gatherer.Config.ShowOptions()
end)

frame.FooterHint = frame.Footer:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
frame.FooterHint:SetPoint("LEFT", frame.Config, "RIGHT", 14, 0)
frame.FooterHint:SetText("|cff778292Klick auf Zeile:|r Im Vorkommen-Bericht öffnen")

frame.Done = UIStyle.CreateButton(frame.Footer, 100, 24, _tr("DONE"), "primary")
frame.Done:SetPoint("RIGHT", frame.Footer, "RIGHT", -8, 0)
frame.Done:SetScript("OnClick", function() public.Hide() end)

-- 4. Results Table
frame.Results = CreateFrame("Frame", nil, frame, BackdropTemplateMixin and "BackdropTemplate" or nil)
frame.Results:SetPoint("TOPLEFT", frame.Toolbar, "BOTTOMLEFT", 0, -8)
frame.Results:SetPoint("BOTTOMRIGHT", frame.Footer, "TOPRIGHT", 0, 8)
UIStyle.ApplyBox(frame.Results, 0.08, 0.09, 0.12, 1, 0.22, 0.25, 0.32, 1)

frame.Results.Header = CreateFrame("Frame", nil, frame.Results, BackdropTemplateMixin and "BackdropTemplate" or nil)
frame.Results.Header:SetPoint("TOPLEFT", frame.Results, "TOPLEFT", 1, -1)
frame.Results.Header:SetPoint("TOPRIGHT", frame.Results, "TOPRIGHT", -1, -1)
frame.Results.Header:SetHeight(26)
UIStyle.ApplyBox(frame.Results.Header, 0.13, 0.15, 0.20, 1, 0.22, 0.25, 0.32, 1)

local COLUMNS = {
	{ key = "Node",    title = _tr("DENSITY_COLUMN_HEADER_TYPE"),     x = 10,  width = 235, align = "LEFT",  sortKey = "node" },
	{ key = "Zone",    title = _tr("DENSITY_COLUMN_HEADER_LOCATION"), x = 250, width = 200, align = "LEFT",  sortKey = "zone" },
	{ key = "Count",   title = _tr("DENSITY_COLUMN_HEADER_NUM_NODE"), x = 455, width = 75,  align = "RIGHT", sortKey = "count" },
	{ key = "Percent", title = _tr("DENSITY_COLUMN_HEADER_PERCENT"),  x = 540, width = 115, align = "LEFT",  sortKey = "pct" },
	{ key = "Value",   title = "Marktwert",                           x = 660, width = 70,  align = "RIGHT", sortKey = "value" },
}

private.sortBy = "count"
private.sortAsc = false

for _, col in ipairs(COLUMNS) do
	local colBtn = CreateFrame("Button", nil, frame.Results.Header)
	colBtn:SetPoint("TOPLEFT", frame.Results.Header, "TOPLEFT", col.x, 0)
	colBtn:SetSize(col.width, 26)
	local colTxt = colBtn:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	if col.align == "RIGHT" then
		colTxt:SetPoint("RIGHT", colBtn, "RIGHT", -4, 0)
	else
		colTxt:SetPoint("LEFT", colBtn, "LEFT", 2, 0)
	end
	colTxt:SetJustifyH(col.align)
	colTxt:SetText(col.title)
	colTxt:SetTextColor(0.92, 0.78, 0.30)
	colBtn:SetScript("OnEnter", function() colTxt:SetTextColor(1, 0.95, 0.65) end)
	colBtn:SetScript("OnLeave", function() colTxt:SetTextColor(0.92, 0.78, 0.30) end)
	colBtn:SetScript("OnClick", function()
		if private.sortBy == col.sortKey then
			private.sortAsc = not private.sortAsc
		else
			private.sortBy = col.sortKey
			private.sortAsc = (col.sortKey == "node" or col.sortKey == "zone")
		end
		private.SortData()
		private.UpdateRows()
	end)
end

frame.Results.Scroll = CreateFrame("ScrollFrame", "GathererNodeSearchScroll", frame.Results, "FauxScrollFrameTemplate")
frame.Results.Scroll:SetPoint("TOPLEFT", frame.Results.Header, "BOTTOMLEFT", 0, -2)
frame.Results.Scroll:SetPoint("BOTTOMRIGHT", frame.Results, "BOTTOMRIGHT", -24, 4)
frame.Results.Scroll:SetScript("OnVerticalScroll", function(self, offset)
	FauxScrollFrame_OnVerticalScroll(self, offset, ROW_HEIGHT, function()
		private.UpdateRows()
	end)
end)

frame.Results.EmptyText = frame.Results:CreateFontString(nil, "OVERLAY", "GameFontNormal")
frame.Results.EmptyText:SetPoint("CENTER", frame.Results, "CENTER", 0, 0)
frame.Results.EmptyText:SetText("|cff8892a4Keine passenden Vorkommen in der Datenbank gefunden.|r")
frame.Results.EmptyText:Hide()

frame.Rows = {}
for i = 1, SEARCH_LINES do
	local row = CreateFrame("Button", nil, frame.Results)
	frame.Rows[i] = row
	row:SetHeight(ROW_HEIGHT)
	if i == 1 then
		row:SetPoint("TOPLEFT", frame.Results.Header, "BOTTOMLEFT", 1, -2)
	else
		row:SetPoint("TOPLEFT", frame.Rows[i - 1], "BOTTOMLEFT", 0, 0)
	end
	row:SetPoint("RIGHT", frame.Results, "RIGHT", -24, 0)

	row.Bg = row:CreateTexture(nil, "BACKGROUND")
	row.Bg:SetAllPoints()
	if i % 2 == 0 then
		row.Bg:SetColorTexture(0.09, 0.11, 0.14, 0.90)
	else
		row.Bg:SetColorTexture(0.07, 0.08, 0.11, 0.90)
	end

	row.Icon = row:CreateTexture(nil, "ARTWORK")
	row.Icon:SetSize(16, 16)
	row.Icon:SetPoint("LEFT", row, "LEFT", 8, 0)
	row.Icon:SetTexCoord(0.08, 0.92, 0.08, 0.92)

	local function makeCell(x, w, align)
		local fs = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		fs:SetPoint("LEFT", row, "LEFT", x, 0)
		fs:SetWidth(w)
		fs:SetHeight(ROW_HEIGHT - 2)
		fs:SetJustifyH(align or "LEFT")
		if fs.SetWordWrap then fs:SetWordWrap(false) end
		return fs
	end

	row.Node  = makeCell(28,  215, "LEFT")
	row.Zone  = makeCell(250, 200, "LEFT")
	row.Count = makeCell(455, 75,  "RIGHT")

	-- Density Progress Bar
	row.BarBg = row:CreateTexture(nil, "ARTWORK")
	row.BarBg:SetPoint("LEFT", row, "LEFT", 542, 0)
	row.BarBg:SetSize(72, 10)
	row.BarBg:SetColorTexture(0.14, 0.16, 0.21, 1)

	row.BarFill = row:CreateTexture(nil, "OVERLAY")
	row.BarFill:SetPoint("LEFT", row.BarBg, "LEFT", 0, 0)
	row.BarFill:SetHeight(10)
	row.BarFill:SetColorTexture(0.15, 0.82, 0.52, 0.9)

	row.Percent = makeCell(618, 38, "RIGHT")
	row.Value   = makeCell(660, 70, "RIGHT")

	row:SetScript("OnEnter", function(self)
		self.Bg:SetColorTexture(0.16, 0.20, 0.27, 0.95)
	end)
	row:SetScript("OnLeave", function(self)
		if i % 2 == 0 then
			self.Bg:SetColorTexture(0.09, 0.11, 0.14, 0.90)
		else
			self.Bg:SetColorTexture(0.07, 0.08, 0.11, 0.90)
		end
	end)
	row:SetScript("OnClick", function(self)
		if not self.entry then return end
		local e = self.entry
		public.Hide()
		if Gatherer.Report and Gatherer.Report.Show then
			Gatherer.Report.Show()
			if Gatherer.Report.SetSearchFilter then
				Gatherer.Report.SetSearchFilter('+"' .. e.nodeName .. '" +"' .. e.zoneName .. '"', e.gType)
			end
		end
	end)
end

private.results = {}

function private.SortData()
	local sortBy = private.sortBy
	local asc = private.sortAsc
	table.sort(private.results, function(a, b)
		local va, vb
		if sortBy == "node" then
			va, vb = a.nodeName, b.nodeName
		elseif sortBy == "zone" then
			va, vb = a.zoneName, b.zoneName
		elseif sortBy == "pct" then
			va, vb = a.pct, b.pct
		elseif sortBy == "value" then
			va, vb = a.value, b.value
		else
			va, vb = a.nodes, b.nodes
		end
		if va == vb then
			return a.nodeName < b.nodeName
		end
		if asc then
			return va < vb
		else
			return va > vb
		end
	end)
end

function private.RunSearch()
	local query = (frame.SearchBox:GetText() or ""):lower():trim()
	local activeCat = private.activeCategory or "ALL"
	wipe(private.results)

	local storage = Gatherer.Storage
	for _, zone in storage.GetAreaIndices() do
		local zoneName = Gatherer.ZoneTokens.ZoneNames[zone] or tostring(zone)
		local archfinds, treasures, herbs, ores = storage.GetNodeCountsByGatherType(zone)
		local totalsByType = {
			HERB = herbs or 0,
			MINE = ores or 0,
			OPEN = treasures or 0,
			ARCH = archfinds or 0,
		}

		for _, gatherID, gType in storage.ZoneGatherNames(zone) do
			if activeCat == "ALL" or activeCat == gType then
				local nodeName = Gatherer.Util.GetNodeName(gatherID) or ("Node #" .. tostring(gatherID))
				if query == "" or nodeName:lower():find(query, 1, true) or zoneName:lower():find(query, 1, true) then
					local nodes = storage.GetGatherCountsForZone(zone, gatherID, gType) or 0
					if nodes > 0 then
						local totalCat = math.max(totalsByType[gType] or nodes, 1)
						local pct = math.min(math.floor(nodes * 100 / totalCat + 0.5), 100)
						local unitPrice = (Gatherer.Integrations and Gatherer.Integrations.GetNodeValue and select(1, Gatherer.Integrations.GetNodeValue(gatherID))) or 0
						table.insert(private.results, {
							zone = zone,
							zoneName = zoneName,
							gatherID = gatherID,
							nodeName = nodeName,
							gType = gType,
							nodes = nodes,
							pct = pct,
							value = unitPrice,
						})
					end
				end
			end
		end
	end

	private.SortData()
	private.UpdateRows()
end

function private.UpdateRows()
	local size = #private.results
	frame.Header.Badge:SetText(string.format("|cff00ff96%d|r Zonen-Einträge", size))

	if size == 0 then
		frame.Results.EmptyText:Show()
		frame.Results.Scroll:Hide()
	else
		frame.Results.EmptyText:Hide()
	end

	local offset = 0
	if size <= SEARCH_LINES then
		frame.Results.Scroll:Hide()
	else
		frame.Results.Scroll:Show()
		FauxScrollFrame_Update(frame.Results.Scroll, size, SEARCH_LINES, ROW_HEIGHT)
		offset = FauxScrollFrame_GetOffset(frame.Results.Scroll)
	end

	for i = 1, SEARCH_LINES do
		local row = frame.Rows[i]
		local idx = offset + i
		local entry = private.results[idx]
		if not entry then
			row.entry = nil
			row:Hide()
		else
			row.entry = entry
			row.Icon:SetTexture(Gatherer.Util.GetGatherTexture(entry.gatherID))
			row.Node:SetText(entry.nodeName)
			row.Zone:SetText(entry.zoneName)
			row.Count:SetText(string.format("|cffffffff%d|r", entry.nodes))
			local fillW = math.max(math.floor(72 * (entry.pct / 100)), 2)
			row.BarFill:SetWidth(fillW)
			row.Percent:SetText(string.format("|cff00ff96%d%%|r", entry.pct))
			row.Value:SetText(entry.value > 0 and Gatherer.Integrations and Gatherer.Integrations.FormatMoney(entry.value) or "|cff555c68—|r")
			row:Show()
		end
	end
end
