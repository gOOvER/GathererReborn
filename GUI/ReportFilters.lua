--[[
	Gatherer Report Filter Modules (Type, Region, Source)
]]

local _tr = Gatherer.Locale.Tr

-- Filter by Node Type / Name
Gatherer.Report.AddButton(_tr("REPORT_COLUMN_HEADER_TYPE"), function(match, zone, id, index, posX, posY, count, harvested, inspected, source, gType)
	local nodeName = Gatherer.Util.GetNodeName(id)
	if nodeName and nodeName:lower():find(match:lower(), 1, true) then
		return true
	end
	if gType and gType:lower():find(match:lower(), 1, true) then
		return true
	end
	return false
end)

-- Filter by Region / Zone Name
Gatherer.Report.AddButton(_tr("REPORT_COLUMN_HEADER_REGION"), function(match, zone, id, index, posX, posY, count, harvested, inspected, source, gType)
	local regionName = Gatherer.ZoneTokens.ZoneNames[zone] or tostring(zone or "")
	if type(regionName) == "string" and regionName:lower():find(match:lower(), 1, true) then
		return true
	end
	return false
end)

-- Filter by Source
Gatherer.Report.AddButton(_tr("REPORT_COLUMN_HEADER_SOURCE"), function(match, zone, id, index, posX, posY, count, harvested, inspected, source, gType)
	if source and tostring(source):lower():find(match:lower(), 1, true) then
		return true
	end
	return false
end)

