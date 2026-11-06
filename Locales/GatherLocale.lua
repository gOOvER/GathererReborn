--[[
	Gatherer Reforged Addon for World of Warcraft(tm).
	Version: 1.0.0

	Localization routines (Native AceLocale-3.0 + Gatherer.Locale bridge)

	License:
		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.
]]

local clientLocale = GetLocale() or "enUS"
if clientLocale == "enGB" then clientLocale = "enUS" end

local AceLocale = LibStub and LibStub("AceLocale-3.0", true)
local aceL = AceLocale and AceLocale:GetLocale("GathererReforged", true)
Gatherer.L = aceL

local function lookupLocaleString(locale, key)
	if not key then return nil end
	if aceL then
		local val = rawget(aceL, key)
		if val then return val end
	end
	local locTable = GathererLocalizations and GathererLocalizations[locale or clientLocale]
	if locTable and locTable[key] then
		return locTable[key]
	end
	local enTable = GathererLocalizations and GathererLocalizations["enUS"]
	if enTable and enTable[key] then
		return enTable[key]
	end
	return nil
end

Gatherer.Locale.GetString = function(key, default)
	return lookupLocaleString(clientLocale, key) or default or key
end

local metatable = { __index = getfenv(0) }
setmetatable( Gatherer.Locale, metatable )
setfenv(1, Gatherer.Locale)

SECTION_HIGHLIGHT_CODE = HIGHLIGHT_FONT_COLOR_CODE

function Tr(key, ...)
	local localization = lookupLocaleString(clientLocale, key) or key
	return Translate(localization, ...)
end
function TrClient(key)
	return lookupLocaleString(clientLocale, key) or key
end
function TrLocale(key)
	return lookupLocaleString(clientLocale, key) or key
end

function Translate(localization, ...)
	if (not localization) then return "" end
	local newloc = ""

	for i = 1, select("#", ...) do
		local s, b, e
		s = 1 b = 1
		while (b > 0) do
			b,e = string.find(localization, "%"..i, s, true)
			if (b and b > 0) then
				local argv = select(i, ...) or ""
				if (type(argv) == "table") then argv = "TABLE" end
				newloc = newloc .. string.sub(localization, s, b-1) .. argv;
				s = e + 1
			else
				b = 0
			end
		end
		newloc = newloc .. string.sub(localization, s)
		localization = newloc
		newloc = ""
	end
	for highlightSection in localization:gmatch("%b{}") do
		local highlight = highlightSection:gsub("^{{(.+)}}$", SECTION_HIGHLIGHT_CODE.."%1".."|r")
		if ( highlight ~= highlightSection ) then
			local s, f = localization:find(highlightSection, 1, true)
			localization = localization:sub(1,s-1)..highlight..localization:sub(f+1)
		end
	end
	return localization
end

function GetText( token, ordinal )
	if ( ordinal and ordinal > 1 ) then
		token = token.."_P1"
	end
	return TrLocale(token)
end
