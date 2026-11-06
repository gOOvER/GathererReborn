--[[
	Gatherer Reforged - Modern Ace3 GUI & Options System (AceConfig-3.0 / AceGUI-3.0)
	Provides a modern, skinnable Ace3 interface and registers Gatherer Reforged
	directly in the Blizzard Options panel.

	Author: gOOvER
	License: GNU General Public License v3.0 (GPL-3.0)
]]

local AceConfig = LibStub and LibStub("AceConfig-3.0", true)
local AceConfigDialog = LibStub and LibStub("AceConfigDialog-3.0", true)
local AceConfigRegistry = LibStub and LibStub("AceConfigRegistry-3.0", true)

if not (AceConfig and AceConfigDialog and AceConfigRegistry) then
	return
end

local _tr = Gatherer.Locale.Tr
local _trC = Gatherer.Locale.TrClient
local _trL = Gatherer.Locale.TrLocale

local GetSetting = function(key, default)
	return Gatherer.Config.GetSetting(key, default)
end

local SetSetting = function(key, value)
	Gatherer.Config.SetSetting(key, value)
	AceConfigRegistry:NotifyChange("GathererReforged")
end

-- Helper for RGB / RGBA string settings ("r,g,b" or "r,g,b,a")
local function getColorRGB(key, defR, defG, defB)
	local r, g, b = GetSetting(key)
	if type(r) == "string" and not g then
		r, g, b = strsplit(",", r)
	end
	return tonumber(r) or defR or 1, tonumber(g) or defG or 1, tonumber(b) or defB or 1
end

local function setColorRGB(key, r, g, b)
	SetSetting(key, string.format("%.2f,%.2f,%.2f", r or 1, g or 1, b or 1))
end

local function getColorRGBA(key, defR, defG, defB, defA)
	local raw = tostring(GetSetting(key) or "")
	local r, g, b, a = strsplit(",", raw)
	return tonumber(r) or defR or 1, tonumber(g) or defG or 1, tonumber(b) or defB or 1, tonumber(a) or defA or 1
end

local function setColorRGBA(key, r, g, b, a)
	SetSetting(key, string.format("%.2f, %.2f, %.2f, %.2f", r or 1, g or 1, b or 1, a or 1))
end

-- Build node filter arguments dynamically for MINE, HERB, OPEN
local function buildNodeFilterGroup(gTypeLower, titleKey, filterLabelKey)
	local args = {
		header = {
			type = "header",
			name = _trL(titleKey),
			order = 1,
		},
		desc = {
			type = "description",
			name = _trL(filterLabelKey),
			order = 2,
		},
		enableAll = {
			type = "execute",
			name = _trL("ALL") .. " (+)",
			width = "normal",
			order = 3,
			func = function()
				for _, objid in pairs(Gatherer.Nodes.Names) do
					local objType = Gatherer.Nodes.Objects[objid]
					if objType and objType:lower() == gTypeLower then
						Gatherer.Config.SetSetting("show." .. gTypeLower .. "." .. objid, true)
					end
				end
				AceConfigRegistry:NotifyChange("GathererReforged")
			end,
		},
		disableAll = {
			type = "execute",
			name = _trL("DISABLE") .. " (-)",
			width = "normal",
			order = 4,
			func = function()
				for _, objid in pairs(Gatherer.Nodes.Names) do
					local objType = Gatherer.Nodes.Objects[objid]
					if objType and objType:lower() == gTypeLower then
						Gatherer.Config.SetSetting("show." .. gTypeLower .. "." .. objid, false)
					end
				end
				AceConfigRegistry:NotifyChange("GathererReforged")
			end,
		},
		spacer = {
			type = "header",
			name = "",
			order = 5,
		},
	}

	local entries = {}
	local seen = {}
	for _, objid in pairs(Gatherer.Nodes.Names) do
		local objType = Gatherer.Nodes.Objects[objid]
		if objType and objType:lower() == gTypeLower and not seen[objid] then
			seen[objid] = true
			local name = Gatherer.Util.GetNodeName(objid)
			local cat = Gatherer.Categories.ObjectCategories[objid]
			local skill = cat and Gatherer.Constants.SkillLevel[cat] or nil
			table.insert(entries, { id = objid, name = name, skill = skill })
		end
	end

	table.sort(entries, function(a, b)
		if a.skill and b.skill and a.skill ~= b.skill then
			return a.skill < b.skill
		elseif a.skill and not b.skill then
			return true
		elseif not a.skill and b.skill then
			return false
		end
		return tostring(a.name) < tostring(b.name)
	end)

	for idx, item in ipairs(entries) do
		local settingKey = "show." .. gTypeLower .. "." .. item.id
		local label = item.skill and string.format("%s |cff888888[%d]|r", item.name, item.skill) or item.name
		local tex = Gatherer.Util.GetGatherTexture(item.id)
		args["node_" .. item.id] = {
			type = "toggle",
			name = label,
			image = tex,
			width = "normal",
			order = 10 + idx,
			get = function() return GetSetting(settingKey) end,
			set = function(_, val) SetSetting(settingKey, val) end,
		}
	end

	return args
end

local newProfileName = ""
local selectedBlacklistPlayer = nil
local newBlacklistPlayer = ""

local function buildOptionsTable()
	local options = {
		type = "group",
		name = "Gatherer Reforged " .. tostring(Gatherer.Var.Version or "1.0.0"),
		childGroups = "tab",
		args = {
			openReport = {
				type = "execute",
				name = _tr("LABEL_REPORT"),
				desc = _tr("LABEL_REPORT"),
				order = 1,
				width = "normal",
				func = function()
					AceConfigDialog:Close("GathererReforged")
					Gatherer.Report.Show()
				end,
			},
			openSearch = {
				type = "execute",
				name = _tr("LABEL_DENSITY_REPORT"),
				desc = _tr("LABEL_DENSITY_REPORT"),
				order = 2,
				width = "normal",
				func = function()
					AceConfigDialog:Close("GathererReforged")
					Gatherer.NodeSearch.Show()
				end,
			},

			----------------------------------------------------------------------
			-- 1. General
			----------------------------------------------------------------------
			general = {
				type = "group",
				name = _trL("CONFIG_SECTION_GENERAL"),
				order = 10,
				args = {
					worldmapGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_GENERAL_WORLDMAP_LABEL"),
						order = 1,
						args = {
							enable = {
								type = "toggle",
								name = _trL("CONFIG_WORLDMAP_ENABLE"),
								width = "full",
								order = 1,
								get = function() return GetSetting("mainmap.enable") end,
								set = function(_, v) SetSetting("mainmap.enable", v) end,
							},
							count = {
								type = "range",
								name = _trL("CONFIG_WORLDMAP_MAX_NOTES"),
								min = 10, max = 2500, step = 10,
								order = 2,
								get = function() return tonumber(GetSetting("mainmap.count", 600)) or 600 end,
								set = function(_, v) SetSetting("mainmap.count", v) end,
							},
							opacity = {
								type = "range",
								name = _trL("CONFIG_WORLDMAP_NOTE_OPACITY"),
								min = 10, max = 100, step = 2,
								order = 3,
								get = function() return tonumber(GetSetting("mainmap.opacity", 80)) or 80 end,
								set = function(_, v) SetSetting("mainmap.opacity", v) end,
							},
							iconsize = {
								type = "range",
								name = _trL("CONFIG_WORLDMAP_ICON_SIZE"),
								min = 4, max = 64, step = 1,
								order = 4,
								get = function() return tonumber(GetSetting("mainmap.iconsize", 16)) or 16 end,
								set = function(_, v) SetSetting("mainmap.iconsize", v) end,
							},
							tooltipEnable = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_ENABLE"),
								width = "full",
								order = 5,
								get = function() return GetSetting("mainmap.tooltip.enable") end,
								set = function(_, v) SetSetting("mainmap.tooltip.enable", v) end,
							},
							tooltipCount = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_COUNTS"),
								order = 6,
								get = function() return GetSetting("mainmap.tooltip.count") end,
								set = function(_, v) SetSetting("mainmap.tooltip.count", v) end,
							},
							tooltipSource = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_SOURCE"),
								order = 7,
								get = function() return GetSetting("mainmap.tooltip.source") end,
								set = function(_, v) SetSetting("mainmap.tooltip.source", v) end,
							},
							tooltipSeen = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_LAST_SEEN"),
								order = 8,
								get = function() return GetSetting("mainmap.tooltip.seen") end,
								set = function(_, v) SetSetting("mainmap.tooltip.seen", v) end,
							},
							tooltipRate = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_DROP_RATES"),
								order = 9,
								get = function() return GetSetting("mainmap.tooltip.rate") end,
								set = function(_, v) SetSetting("mainmap.tooltip.rate", v) end,
							},
						},
					},
					miniiconGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_GENERAL_MINIICON_LABEL"),
						order = 2,
						args = {
							enable = {
								type = "toggle",
								name = _trL("CONFIG_MINIICON_ENABLE"),
								order = 1,
								get = function() return GetSetting("miniicon.enable") end,
								set = function(_, v) SetSetting("miniicon.enable", v) end,
							},
							angle = {
								type = "range",
								name = _trL("CONFIG_MINIICON_ANGLE"),
								min = 0, max = 360, step = 1,
								order = 2,
								get = function() return tonumber(GetSetting("miniicon.angle", 220)) or 220 end,
								set = function(_, v) SetSetting("miniicon.angle", v) end,
							},
							distance = {
								type = "range",
								name = _trL("CONFIG_MINIICON_DISTANCE"),
								min = -80, max = 80, step = 1,
								order = 3,
								get = function() return tonumber(GetSetting("miniicon.distance", 12)) or 12 end,
								set = function(_, v) SetSetting("miniicon.distance", v) end,
							},
						},
					},
					minimapTrackingGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"),
						order = 3,
						args = {
							mine = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_MINE"),
								order = 1,
								get = function() return GetSetting("show.minimap.mine") end,
								set = function(_, v) SetSetting("show.minimap.mine", v) end,
							},
							mineAll = {
								type = "toggle",
								name = _trL("ALL") .. " (" .. _trL("TRADE_MINING") .. ")",
								order = 2,
								get = function() return GetSetting("show.minimap.mine.all") end,
								set = function(_, v) SetSetting("show.minimap.mine.all", v) end,
							},
							mineSkilled = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_MINE_MINER_ONLY"),
								order = 3,
								get = function() return GetSetting("show.minimap.mine.onlyifskilled") end,
								set = function(_, v) SetSetting("show.minimap.mine.onlyifskilled", v) end,
							},
							mineTracked = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_ONLY_IF_TRACKING"),
								order = 4,
								get = function() return GetSetting("show.minimap.mine.onlyiftracked") end,
								set = function(_, v) SetSetting("show.minimap.mine.onlyiftracked", v) end,
							},
							herb = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_HERB"),
								order = 5,
								get = function() return GetSetting("show.minimap.herb") end,
								set = function(_, v) SetSetting("show.minimap.herb", v) end,
							},
							herbAll = {
								type = "toggle",
								name = _trL("ALL") .. " (" .. _trL("TRADE_HERBALISM") .. ")",
								order = 6,
								get = function() return GetSetting("show.minimap.herb.all") end,
								set = function(_, v) SetSetting("show.minimap.herb.all", v) end,
							},
							herbSkilled = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_HERB_HERBALIST_ONLY"),
								order = 7,
								get = function() return GetSetting("show.minimap.herb.onlyifskilled") end,
								set = function(_, v) SetSetting("show.minimap.herb.onlyifskilled", v) end,
							},
							herbTracked = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_ONLY_IF_TRACKING"),
								order = 8,
								get = function() return GetSetting("show.minimap.herb.onlyiftracked") end,
								set = function(_, v) SetSetting("show.minimap.herb.onlyiftracked", v) end,
							},
							open = {
								type = "toggle",
								name = _trL("ENABLE_OPEN"),
								order = 9,
								get = function() return GetSetting("show.minimap.open") end,
								set = function(_, v) SetSetting("show.minimap.open", v) end,
							},
							openAll = {
								type = "toggle",
								name = _trL("ALL") .. " (" .. _trL("CONFIG_SECTION_OPEN") .. ")",
								order = 10,
								get = function() return GetSetting("show.minimap.open.all") end,
								set = function(_, v) SetSetting("show.minimap.open.all", v) end,
							},
						},
					},
					worldmapTrackingGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"),
						order = 4,
						args = {
							mine = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_MINE"),
								order = 1,
								get = function() return GetSetting("show.mainmap.mine") end,
								set = function(_, v) SetSetting("show.mainmap.mine", v) end,
							},
							mineAll = {
								type = "toggle",
								name = _trL("ALL") .. " (" .. _trL("TRADE_MINING") .. ")",
								order = 2,
								get = function() return GetSetting("show.mainmap.mine.all") end,
								set = function(_, v) SetSetting("show.mainmap.mine.all", v) end,
							},
							mineSkilled = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_MINE_MINER_ONLY"),
								order = 3,
								get = function() return GetSetting("show.mainmap.mine.onlyifskilled") end,
								set = function(_, v) SetSetting("show.mainmap.mine.onlyifskilled", v) end,
							},
							mineTracked = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_ONLY_IF_TRACKING"),
								order = 4,
								get = function() return GetSetting("show.mainmap.mine.onlyiftracked") end,
								set = function(_, v) SetSetting("show.mainmap.mine.onlyiftracked", v) end,
							},
							herb = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_HERB"),
								order = 5,
								get = function() return GetSetting("show.mainmap.herb") end,
								set = function(_, v) SetSetting("show.mainmap.herb", v) end,
							},
							herbAll = {
								type = "toggle",
								name = _trL("ALL") .. " (" .. _trL("TRADE_HERBALISM") .. ")",
								order = 6,
								get = function() return GetSetting("show.mainmap.herb.all") end,
								set = function(_, v) SetSetting("show.mainmap.herb.all", v) end,
							},
							herbSkilled = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_HERB_HERBALIST_ONLY"),
								order = 7,
								get = function() return GetSetting("show.mainmap.herb.onlyifskilled") end,
								set = function(_, v) SetSetting("show.mainmap.herb.onlyifskilled", v) end,
							},
							herbTracked = {
								type = "toggle",
								name = _trL("CONFIG_ENABLE_ONLY_IF_TRACKING"),
								order = 8,
								get = function() return GetSetting("show.mainmap.herb.onlyiftracked") end,
								set = function(_, v) SetSetting("show.mainmap.herb.onlyiftracked", v) end,
							},
							open = {
								type = "toggle",
								name = _trL("ENABLE_OPEN"),
								order = 9,
								get = function() return GetSetting("show.mainmap.open") end,
								set = function(_, v) SetSetting("show.mainmap.open", v) end,
							},
							openAll = {
								type = "toggle",
								name = _trL("ALL") .. " (" .. _trL("CONFIG_SECTION_OPEN") .. ")",
								order = 10,
								get = function() return GetSetting("show.mainmap.open.all") end,
								set = function(_, v) SetSetting("show.mainmap.open.all", v) end,
							},
						},
					},
				},
			},

			----------------------------------------------------------------------
			-- 2. Minimap
			----------------------------------------------------------------------
			minimap = {
				type = "group",
				name = _trL("CONFIG_SECTION_MINIMAP"),
				order = 20,
				args = {
					baseGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_MINIMAP_LABEL"),
						order = 1,
						args = {
							enable = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_ENABLE"),
								width = "full",
								order = 1,
								get = function() return GetSetting("minimap.enable") end,
								set = function(_, v) SetSetting("minimap.enable", v) end,
							},
							count = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_MAX_NOTES"),
								min = 1, max = 50, step = 1,
								order = 2,
								get = function() return tonumber(GetSetting("minimap.count", 20)) or 20 end,
								set = function(_, v) SetSetting("minimap.count", v) end,
							},
							opacity = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_NOTE_OPACITY"),
								min = 0, max = 100, step = 1,
								order = 3,
								get = function() return tonumber(GetSetting("minimap.opacity", 80)) or 80 end,
								set = function(_, v) SetSetting("minimap.opacity", v) end,
							},
							iconsize = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_ICON_SIZE"),
								min = 4, max = 64, step = 1,
								order = 4,
								get = function() return tonumber(GetSetting("minimap.iconsize", 12)) or 12 end,
								set = function(_, v) SetSetting("minimap.iconsize", v) end,
							},
							distance = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_DISTANCE"),
								min = 100, max = 5000, step = 50,
								order = 5,
								get = function() return tonumber(GetSetting("minimap.distance", 800)) or 800 end,
								set = function(_, v) SetSetting("minimap.distance", v) end,
							},
							tooltipEnable = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_ENABLE"),
								width = "full",
								order = 6,
								get = function() return GetSetting("minimap.tooltip.enable") end,
								set = function(_, v) SetSetting("minimap.tooltip.enable", v) end,
							},
							tooltipCount = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_COUNTS"),
								order = 7,
								get = function() return GetSetting("minimap.tooltip.count") end,
								set = function(_, v) SetSetting("minimap.tooltip.count", v) end,
							},
							tooltipSource = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_SOURCE"),
								order = 8,
								get = function() return GetSetting("minimap.tooltip.source") end,
								set = function(_, v) SetSetting("minimap.tooltip.source", v) end,
							},
							tooltipSeen = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_LAST_SEEN"),
								order = 9,
								get = function() return GetSetting("minimap.tooltip.seen") end,
								set = function(_, v) SetSetting("minimap.tooltip.seen", v) end,
							},
							tooltipDistance = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_DISTANCE"),
								order = 10,
								get = function() return GetSetting("minimap.tooltip.distance") end,
								set = function(_, v) SetSetting("minimap.tooltip.distance", v) end,
							},
							tooltipRate = {
								type = "toggle",
								name = _trL("CONFIG_TOOLTIP_DROP_RATES"),
								order = 11,
								get = function() return GetSetting("minimap.tooltip.rate") end,
								set = function(_, v) SetSetting("minimap.tooltip.rate", v) end,
							},
						},
					},
					extraGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_MINIMAP_ADD_LABEL"),
						order = 2,
						args = {
							fadeEnable = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_FADE_ENABLE"),
								width = "full",
								order = 1,
								get = function() return GetSetting("fade.enable") end,
								set = function(_, v) SetSetting("fade.enable", v) end,
							},
							fadeDist = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_FADE_DIST"),
								min = 10, max = 1000, step = 10,
								order = 2,
								get = function() return tonumber(GetSetting("fade.distance", 500)) or 500 end,
								set = function(_, v) SetSetting("fade.distance", v) end,
							},
							fadePercent = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_FADE_PERCENT"),
								min = 0, max = 100, step = 1,
								order = 3,
								get = function() return tonumber(GetSetting("fade.percent", 50)) or 50 end,
								set = function(_, v) SetSetting("fade.percent", v) end,
							},
							trackEnable = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_TRACKING_ENABLE"),
								width = "full",
								order = 4,
								get = function() return GetSetting("track.enable") end,
								set = function(_, v) SetSetting("track.enable", v) end,
							},
							trackCircle = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"),
								order = 5,
								get = function() return GetSetting("track.circle") end,
								set = function(_, v) SetSetting("track.circle", v) end,
							},
							trackCurrent = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"),
								order = 6,
								get = function() return GetSetting("track.current") end,
								set = function(_, v) SetSetting("track.current", v) end,
							},
							trackColorMine = {
								type = "color",
								name = _trC("TRADE_MINING"),
								order = 7,
								get = function() return getColorRGB("track.colour.MINE", 1, 0, 0) end,
								set = function(_, r, g, b) setColorRGB("track.colour.MINE", r, g, b) end,
							},
							trackColorHerb = {
								type = "color",
								name = _trC("TRADE_HERBALISM"),
								order = 8,
								get = function() return getColorRGB("track.colour.HERB", 0, 1, 0) end,
								set = function(_, r, g, b) setColorRGB("track.colour.HERB", r, g, b) end,
							},
							trackDist = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_TRACKING_DISTANCE"),
								min = 50, max = 150, step = 1,
								order = 9,
								get = function() return tonumber(GetSetting("track.distance", 100)) or 100 end,
								set = function(_, v) SetSetting("track.distance", v) end,
							},
							trackOpacity = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_TRACKING_OPACITY"),
								min = 0, max = 100, step = 1,
								order = 10,
								get = function() return tonumber(GetSetting("track.opacity", 80)) or 80 end,
								set = function(_, v) SetSetting("track.opacity", v) end,
							},
							inspectEnable = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_INSPECT_ENABLE"),
								width = "full",
								order = 11,
								get = function() return GetSetting("inspect.enable") end,
								set = function(_, v) SetSetting("inspect.enable", v) end,
							},
							inspectTint = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_INSPECT_TINT_ENABLE"),
								order = 12,
								get = function() return GetSetting("inspect.tint") end,
								set = function(_, v) SetSetting("inspect.tint", v) end,
							},
							inspectDist = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_INSPECT_DIST"),
								min = 1, max = 100, step = 1,
								order = 13,
								get = function() return tonumber(GetSetting("inspect.distance", 25)) or 25 end,
								set = function(_, v) SetSetting("inspect.distance", v) end,
							},
							inspectPercent = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_INSPECT_FADING"),
								min = 0, max = 100, step = 1,
								order = 14,
								get = function() return tonumber(GetSetting("inspect.percent", 80)) or 80 end,
								set = function(_, v) SetSetting("inspect.percent", v) end,
							},
							inspectTime = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_INSPECT_TIMEOUT"),
								min = 10, max = 900, step = 10,
								order = 15,
								get = function() return tonumber(GetSetting("inspect.time", 120)) or 120 end,
								set = function(_, v) SetSetting("inspect.time", v) end,
							},
							anonEnable = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_ANON_ENABLE"),
								width = "full",
								order = 16,
								get = function() return GetSetting("anon.enable") end,
								set = function(_, v) SetSetting("anon.enable", v) end,
							},
							anonTint = {
								type = "toggle",
								name = _trL("CONFIG_MINIMAP_ANON_TINT"),
								order = 17,
								get = function() return GetSetting("anon.tint") end,
								set = function(_, v) SetSetting("anon.tint", v) end,
							},
							anonOpacity = {
								type = "range",
								name = _trL("CONFIG_MINIMAP_ANON_OPACITY"),
								min = 0, max = 100, step = 1,
								order = 18,
								get = function() return tonumber(GetSetting("anon.opacity", 60)) or 60 end,
								set = function(_, v) SetSetting("anon.opacity", v) end,
							},
						},
					},
				},
			},

			----------------------------------------------------------------------
			-- 3. Mining / Herbalism / Treasure / Archaeology Filters
			----------------------------------------------------------------------
			mining = {
				type = "group",
				name = _trL("TRADE_MINING"),
				order = 30,
				args = buildNodeFilterGroup("mine", "CONFIG_SECTION_TITLE_MINE", "CONFIG_MINE_FILTER_LABEL"),
			},
			herbalism = {
				type = "group",
				name = _trL("TRADE_HERBALISM"),
				order = 40,
				args = buildNodeFilterGroup("herb", "CONFIG_SECTION_TITLE_HERB", "CONFIG_HERB_FILTER_LABEL"),
			},
			treasure = {
				type = "group",
				name = _trL("CONFIG_SECTION_OPEN"),
				order = 50,
				args = buildNodeFilterGroup("open", "CONFIG_SECTION_TITLE_OPEN", "CONFIG_OPEN_FILTER_LABEL"),
			},
			archaeology = {
				type = "group",
				name = _trL("PROFESSIONS_ARCHAEOLOGY"),
				order = 60,
				args = {
					header = {
						type = "header",
						name = _trL("CONFIG_SECTION_TITLE_ARCH"),
						order = 1,
					},
					enable = {
						type = "toggle",
						name = _trL("ENABLE"),
						order = 2,
						get = function() return GetSetting("arch.enable") end,
						set = function(_, v) SetSetting("arch.enable", v) end,
					},
					count = {
						type = "range",
						name = _trL("CONFIG_ARCH_MAX_NOTES"),
						min = 1, max = 50, step = 1,
						order = 3,
						get = function() return tonumber(GetSetting("arch.minimap.count", 20)) or 20 end,
						set = function(_, v) SetSetting("arch.minimap.count", v) end,
					},
				},
			},

			----------------------------------------------------------------------
			-- 4. Sharing & Sync
			----------------------------------------------------------------------
			sharing = {
				type = "group",
				name = _trL("CONFIG_SECTION_SHARING"),
				order = 70,
				args = {
					guildGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_SHARING_GUILD_LABEL"),
						order = 1,
						args = {
							enable = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GUILD_ENABLE"),
								width = "full",
								order = 1,
								get = function() return GetSetting("guild.enable") end,
								set = function(_, v) SetSetting("guild.enable", v) end,
							},
							receive = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GUILD_DATABASE"),
								width = "full",
								order = 2,
								get = function() return GetSetting("guild.receive") end,
								set = function(_, v) SetSetting("guild.receive", v) end,
							},
							printSend = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GUILD_MESSAGE_SENT"),
								width = "full",
								order = 3,
								get = function() return GetSetting("guild.print.send") end,
								set = function(_, v) SetSetting("guild.print.send", v) end,
							},
							printRecv = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GUILD_MESSAGE_RECV"),
								width = "full",
								order = 4,
								get = function() return GetSetting("guild.print.recv") end,
								set = function(_, v) SetSetting("guild.print.recv", v) end,
							},
						},
					},
					raidGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_SHARING_GROUP_LABEL"),
						order = 2,
						args = {
							enable = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GROUP_ENABLE"),
								width = "full",
								order = 1,
								get = function() return GetSetting("raid.enable") end,
								set = function(_, v) SetSetting("raid.enable", v) end,
							},
							receive = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GROUP_DATABASE"),
								width = "full",
								order = 2,
								get = function() return GetSetting("raid.receive") end,
								set = function(_, v) SetSetting("raid.receive", v) end,
							},
							printSend = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GROUP_MESSAGE_SENT"),
								width = "full",
								order = 3,
								get = function() return GetSetting("raid.print.send") end,
								set = function(_, v) SetSetting("raid.print.send", v) end,
							},
							printRecv = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_GROUP_MESSAGE_RECV"),
								width = "full",
								order = 4,
								get = function() return GetSetting("raid.print.recv") end,
								set = function(_, v) SetSetting("raid.print.recv", v) end,
							},
						},
					},
					personalGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_SHARING_PERSONAL_LABEL"),
						order = 3,
						args = {
							print = {
								type = "toggle",
								name = _trL("CONFIG_SHARING_PERSONAL_ENABLE"),
								width = "full",
								order = 1,
								get = function() return GetSetting("personal.print") end,
								set = function(_, v) SetSetting("personal.print", v) end,
							},
						},
					},
					bridgeGroup = {
						type = "group",
						inline = true,
						name = "Cross-Addon Sharing-Bridge (Gatherer Reborn / GatherMate2 / GatherLite)",
						order = 3.5,
						args = {
							enable = {
								type = "toggle",
								name = "Cross-Addon Sharing-Bridge aktivieren (GRBNode, GM2SD, GMSD, GatherLite & Live-Sync)",
								desc = "Empfängt und sendet geteilte Vorkommen kompatibel zu Gatherer Reborn (GRBNode), GatherMate2_Sharing (GM2SD/GMSD) und GatherLite (G2G) und synchronisiert live mit einer lokalen GatherMate2- oder Gatherer-Reborn-Installation.",
								width = "full",
								order = 1,
								get = function() return GetSetting("sharing.bridge.enable", true) end,
								set = function(_, v) SetSetting("sharing.bridge.enable", v) end,
							},
						},
					},
					blacklistGroup = {
						type = "group",
						inline = true,
						name = _trL("CONFIG_SHARING_BLACKLIST_LABEL"),
						order = 4,
						args = {
							addInput = {
								type = "input",
								name = _trL("IGNORE_PLAYER"),
								order = 1,
								get = function() return newBlacklistPlayer end,
								set = function(_, val)
									newBlacklistPlayer = (val or ""):trim()
									if newBlacklistPlayer ~= "" then
										Gatherer.Config.SharingBlacklist_Add(newBlacklistPlayer)
										newBlacklistPlayer = ""
										AceConfigRegistry:NotifyChange("GathererReforged")
									end
								end,
							},
							selectIgnored = {
								type = "select",
								name = _trL("CONFIG_SHARING_BLACKLIST_LABEL"),
								order = 2,
								values = function()
									local t = {}
									if type(Gatherer_SharingBlacklist) == "table" then
										for _, name in ipairs(Gatherer_SharingBlacklist) do
											t[name] = name
										end
									end
									return t
								end,
								get = function() return selectedBlacklistPlayer end,
								set = function(_, val) selectedBlacklistPlayer = val end,
							},
							removeBtn = {
								type = "execute",
								name = _trL("STOP_IGNORE"),
								order = 3,
								disabled = function() return not selectedBlacklistPlayer end,
								func = function()
									if selectedBlacklistPlayer then
										Gatherer.Config.SharingBlacklist_Remove(selectedBlacklistPlayer)
										selectedBlacklistPlayer = nil
										AceConfigRegistry:NotifyChange("GathererReforged")
									end
								end,
							},
						},
					},
				},
			},

			----------------------------------------------------------------------
			-- 5. HUD Plugin (GathererReforged_HUD)
			----------------------------------------------------------------------
			hud = {
				type = "group",
				name = "HUD",
				order = 80,
				args = {
					enable = {
						type = "toggle",
						name = _trL("ENABLE") .. " (Gatherer Reforged HUD)",
						width = "full",
						order = 1,
						get = function() return GetSetting("plugin.gatherer_hud.enable") end,
						set = function(_, v) SetSetting("plugin.gatherer_hud.enable", v) end,
					},
					note = {
						type = "description",
						name = _tr("HUD_CONFIG_USAGE_NOTE"),
						order = 2,
					},
					displayGroup = {
						type = "group",
						inline = true,
						name = _trL("HUD_CONFIG_DISPLAY_LABEL"),
						order = 3,
						args = {
							strata = {
								type = "select",
								name = _trL("HUD_CONFIG_STRATA_LABEL"),
								order = 1,
								values = {
									[1] = _trL("STRATA_BACKGROUND"),
									[2] = _trL("STRATA_LOW"),
									[3] = _trL("STRATA_MEDIUM"),
									[4] = _trL("STRATA_HIGH"),
								},
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.strata", 1)) or 1 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.strata", v) end,
							},
							radius = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.radius"),
								min = 25, max = 800, step = 25,
								order = 2,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.radius", 500)) or 500 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.radius", v) end,
							},
							iconsize = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.iconsize"),
								min = 5, max = 80, step = 1,
								order = 3,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.iconsize", 40)) or 40 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.iconsize", v) end,
							},
							offsetH = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"),
								min = -800, max = 800, step = 10,
								order = 4,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.offset.horizontal", 0)) or 0 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.offset.horizontal", v) end,
							},
							offsetV = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.offset.vertical"),
								min = -800, max = 800, step = 10,
								order = 5,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.offset.vertical", -200)) or -200 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.offset.vertical", v) end,
							},
							alpha = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.alpha"),
								min = 1, max = 100, step = 1,
								order = 6,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.alpha", 70)) or 70 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.alpha", v) end,
							},
							yards = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.yards"),
								min = 100, max = 2000, step = 100,
								order = 7,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.yards", 1200)) or 1200 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.yards", v) end,
							},
							fade = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.fade"),
								min = 1, max = 100, step = 1,
								order = 8,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.fade", 45)) or 45 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.fade", v) end,
							},
							angle = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.angle"),
								min = 1, max = 90, step = 1,
								order = 9,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.angle", 40)) or 40 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.angle", v) end,
							},
							perspective = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.perspective"),
								min = 2, max = 10, step = 0.1,
								order = 10,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.perspective", 10)) or 10 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.perspective", v) end,
							},
							framerate = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"),
								min = 0, max = 100, step = 1,
								order = 11,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.min_fullframerate", 100)) or 100 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.min_fullframerate", v) end,
							},
						},
					},
					hideGroup = {
						type = "group",
						inline = true,
						name = _trL("HUD_CONFIG_HIDING_LABEL"),
						order = 4,
						args = {
							combat = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.combat"),
								order = 1,
								get = function() return GetSetting("plugin.gatherer_hud.hide.combat") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.combat", v) end,
							},
							target = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.target"),
								order = 2,
								get = function() return GetSetting("plugin.gatherer_hud.hide.target") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.target", v) end,
							},
							flying = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.flying"),
								order = 3,
								get = function() return GetSetting("plugin.gatherer_hud.hide.flying") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.flying", v) end,
							},
							inside = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.inside"),
								order = 4,
								get = function() return GetSetting("plugin.gatherer_hud.hide.inside") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.inside", v) end,
							},
							mounted = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.mounted"),
								order = 5,
								get = function() return GetSetting("plugin.gatherer_hud.hide.mounted") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.mounted", v) end,
							},
							walking = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.walking"),
								order = 6,
								get = function() return GetSetting("plugin.gatherer_hud.hide.walking") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.walking", v) end,
							},
							resting = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.resting"),
								order = 7,
								get = function() return GetSetting("plugin.gatherer_hud.hide.resting") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.resting", v) end,
							},
							stealth = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.stealth"),
								order = 8,
								get = function() return GetSetting("plugin.gatherer_hud.hide.stealth") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.stealth", v) end,
							},
							swimming = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.hide.swimming"),
								order = 9,
								get = function() return GetSetting("plugin.gatherer_hud.hide.swimming") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.hide.swimming", v) end,
							},
						},
					},
					visualGroup = {
						type = "group",
						inline = true,
						name = _trL("HUD_CONFIG_VISIBILITY_LABEL"),
						order = 5,
						args = {
							baseEnable = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.base.enable"),
								order = 1,
								get = function() return GetSetting("plugin.gatherer_hud.base.enable") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.base.enable", v) end,
							},
							baseColor = {
								type = "color",
								hasAlpha = true,
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.base.color"),
								order = 2,
								get = function() return getColorRGBA("plugin.gatherer_hud.base.color", 0, 0, 0, 0.5) end,
								set = function(_, r, g, b, a) setColorRGBA("plugin.gatherer_hud.base.color", r, g, b, a) end,
							},
							centerEnable = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.center.enable"),
								order = 3,
								get = function() return GetSetting("plugin.gatherer_hud.center.enable") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.center.enable", v) end,
							},
							centerColor = {
								type = "color",
								hasAlpha = true,
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.center.color"),
								order = 4,
								get = function() return getColorRGBA("plugin.gatherer_hud.center.color", 1, 1, 1, 0.4) end,
								set = function(_, r, g, b, a) setColorRGBA("plugin.gatherer_hud.center.color", r, g, b, a) end,
							},
							heatEnable = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.heat.enable"),
								order = 5,
								get = function() return GetSetting("plugin.gatherer_hud.heat.enable") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.heat.enable", v) end,
							},
							heatColor = {
								type = "color",
								hasAlpha = true,
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.heat.color"),
								order = 6,
								get = function() return getColorRGBA("plugin.gatherer_hud.heat.color", 1, 0.3, 0, 0.7) end,
								set = function(_, r, g, b, a) setColorRGBA("plugin.gatherer_hud.heat.color", r, g, b, a) end,
							},
							partyEnable = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.party.enable"),
								order = 7,
								get = function() return GetSetting("plugin.gatherer_hud.party.enable") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.party.enable", v) end,
							},
							partyColor = {
								type = "color",
								hasAlpha = true,
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.party.color"),
								order = 8,
								get = function() return getColorRGBA("plugin.gatherer_hud.party.color", 0.2, 0.2, 1, 0.7) end,
								set = function(_, r, g, b, a) setColorRGBA("plugin.gatherer_hud.party.color", r, g, b, a) end,
							},
							partySize = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.party.size"),
								min = 5, max = 80, step = 1,
								order = 9,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.party.size", 40)) or 40 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.party.size", v) end,
							},
							heatCooldown = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"),
								min = 10, max = 4800, step = 10,
								order = 10,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.heat.cooldown", 600)) or 600 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.heat.cooldown", v) end,
							},
							heatNeverCooldown = {
								type = "toggle",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"),
								order = 11,
								get = function() return GetSetting("plugin.gatherer_hud.heat.nevercooldown") end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.heat.nevercooldown", v) end,
							},
							heatSize = {
								type = "range",
								name = _trL("HUD_CONFIG_plugin.gatherer_hud.heat.size"),
								min = 0, max = 300, step = 10,
								order = 12,
								get = function() return tonumber(GetSetting("plugin.gatherer_hud.heat.size", 120)) or 120 end,
								set = function(_, v) SetSetting("plugin.gatherer_hud.heat.size", v) end,
							},
						},
					},
				},
			},

			----------------------------------------------------------------------
			-- 6. Profiles
			----------------------------------------------------------------------
			profiles = {
				type = "group",
				name = _trL("CONFIG_SECTION_PROFILES"),
				order = 90,
				args = {
					header = {
						type = "header",
						name = _trL("CONFIG_SECTION_TITLE_PROFILES"),
						order = 1,
					},
					currentProfile = {
						type = "select",
						name = _trL("CONFIG_PROFILE_CURRENT_LABEL"),
						order = 2,
						values = function()
							local res = {}
							local list = GetSetting("profile.profiles") or { "Default" }
							for _, p in ipairs(list) do
								res[p] = p
							end
							return res
						end,
						get = function() return GetSetting("profile") or "Default" end,
						set = function(_, val) SetSetting("profile", val) end,
					},
					deleteProfile = {
						type = "execute",
						name = _trL("DELETE"),
						order = 3,
						confirm = true,
						disabled = function() return (GetSetting("profile") or "Default") == "Default" end,
						func = function()
							SetSetting("profile.delete", true)
						end,
					},
					newHeader = {
						type = "header",
						name = _trL("CONFIG_PROFILE_NEW"),
						order = 4,
					},
					newName = {
						type = "input",
						name = _trL("CONFIG_PROFILE_NEW_LABEL"),
						order = 5,
						get = function() return newProfileName end,
						set = function(_, val)
							newProfileName = (val or ""):trim()
							SetSetting("profile.name", newProfileName)
						end,
					},
					createNew = {
						type = "execute",
						name = _trL("CONFIG_PROFILE_CREATE_NEW"),
						order = 6,
						disabled = function() return newProfileName == "" end,
						func = function()
							SetSetting("profile.name", newProfileName)
							SetSetting("profile.save", true)
							newProfileName = ""
						end,
					},
					copyNew = {
						type = "execute",
						name = _trL("CONFIG_PROFILE_CREATE_COPY"),
						order = 7,
						disabled = function() return newProfileName == "" end,
						func = function()
							SetSetting("profile.name", newProfileName)
							SetSetting("profile.copy", true)
							newProfileName = ""
						end,
					},
				},
			},

			----------------------------------------------------------------------
			-- 6.5 Database & Integrations (GatherMate2, Session Tracker, AH, Cooldowns)
			----------------------------------------------------------------------
			integrations = {
				type = "group",
				name = "Integrationen & DB",
				order = 85,
				args = {
					importGroup = {
						type = "group",
						inline = true,
						name = "GatherMate2 & GatherMate2_Data Datenbank-Import",
						order = 1,
						args = {
							desc = {
								type = "description",
								name = "Importiert vorhandene Vorkommen aus |cffffd200GatherMate2|r sowie die vorgefertigten Wowhead-Datenbanken aus |cffffd200GatherMate2_Data|r (inkl. Classic, TBC, Wrath, Retail & WoW Forever) direkt in Gatherer Reforged.",
								order = 1,
							},
							importSaved = {
								type = "execute",
								name = "GatherMate2 Daten importieren",
								desc = "Importiert deine gespeicherten GatherMate2-Vorkommen.",
								width = "normal",
								order = 2,
								func = function()
									if Gatherer.Integrations and Gatherer.Integrations.ImportGatherMate2 then
										Gatherer.Integrations.ImportGatherMate2(false)
										AceConfigRegistry:NotifyChange("GathererReforged")
									end
								end,
							},
							importFullData = {
								type = "execute",
								name = "GatherMate2 + GatherMate2_Data importieren",
								desc = "Lädt GatherMate2_Data (falls installiert) und importiert alle Weltkarten-Vorkommen.",
								width = "double",
								order = 3,
								func = function()
									if Gatherer.Integrations and Gatherer.Integrations.ImportGatherMate2 then
										Gatherer.Integrations.ImportGatherMate2(true)
										AceConfigRegistry:NotifyChange("GathererReforged")
									end
								end,
							},
							bridgeEnable = {
								type = "toggle",
								name = "Cross-Addon Live-Sharing-Bridge aktivieren (Gatherer Reborn / GatherMate2 / GatherLite)",
								desc = "Teilt und empfängt Vorkommen über Gatherer Reborn (GRBNode), GatherMate2_Sharing (GM2SD/GMSD) und GatherLite (G2G) und synchronisiert gefundene/empfangene Knoten live mit GatherMate2 & Gatherer Reborn.",
								width = "full",
								order = 4,
								get = function() return GetSetting("sharing.bridge.enable", true) end,
								set = function(_, v) SetSetting("sharing.bridge.enable", v) end,
							},
						},
					},
					sessionGroup = {
						type = "group",
						inline = true,
						name = "Session- & Gold-pro-Stunde-Tracker (GPH)",
						order = 2,
						args = {
							enable = {
								type = "toggle",
								name = "Session-Tracker & LDB-Anzeige aktivieren",
								width = "full",
								order = 1,
								get = function() return GetSetting("session.enable", true) end,
								set = function(_, v)
									SetSetting("session.enable", v)
									if Gatherer.MiniIcon and Gatherer.MiniIcon.UpdateLDBText then
										Gatherer.MiniIcon.UpdateLDBText()
									end
								end,
							},
							marketPrice = {
								type = "toggle",
								name = "Live-Auktionshaus-Preise in Tooltips anzeigen (Auctionator / TSM / OE)",
								width = "full",
								order = 2,
								get = function() return GetSetting("tooltip.marketprice", true) end,
								set = function(_, v) SetSetting("tooltip.marketprice", v) end,
							},
							statsText = {
								type = "description",
								fontSize = "medium",
								order = 3,
								name = function()
									if not (Gatherer.Integrations and Gatherer.Integrations.Session) then
										return ""
									end
									local s = Gatherer.Integrations.Session.GetSummary()
									local mins = math.floor(s.elapsed / 60)
									local secs = s.elapsed % 60
									return string.format(
										"|cffffd200Aktuelle Sitzung (%02d:%02d Min.):|r  |cff00ff96%d Vorkommen|r (%d/Std.)   |   Marktwert: %s   |   GPH: %s/Std.",
										mins, secs, s.nodes, s.nodesPerHour,
										Gatherer.Integrations.FormatMoney(s.totalValue),
										Gatherer.Integrations.FormatMoney(s.goldPerHour)
									)
								end,
							},
							resetBtn = {
								type = "execute",
								name = "Session zurücksetzen",
								order = 4,
								func = function()
									if Gatherer.Integrations and Gatherer.Integrations.Session then
										Gatherer.Integrations.Session.Reset()
										AceConfigRegistry:NotifyChange("GathererReforged")
									end
								end,
							},
						},
					},
					cooldownGroup = {
						type = "group",
						inline = true,
						name = "Respawn-Timer: Kürzlich abgebaute Vorkommen dimmen",
						order = 3,
						args = {
							enable = {
								type = "toggle",
								name = "Kürzlich abgebaute Knoten auf Minimap & 3D-HUD abblenden",
								width = "full",
								order = 1,
								get = function() return GetSetting("cooldown.enable", true) end,
								set = function(_, v) SetSetting("cooldown.enable", v) end,
							},
							time = {
								type = "range",
								name = "Abklingzeit / Respawn-Dauer (Sekunden)",
								min = 30, max = 1200, step = 15,
								order = 2,
								get = function() return tonumber(GetSetting("cooldown.time", 300)) or 300 end,
								set = function(_, v) SetSetting("cooldown.time", v) end,
							},
							opacity = {
								type = "range",
								name = "Sichtbarkeit während Abklingzeit (%)",
								min = 10, max = 90, step = 5,
								order = 3,
								get = function() return tonumber(GetSetting("cooldown.opacity", 35)) or 35 end,
								set = function(_, v) SetSetting("cooldown.opacity", v) end,
							},
						},
					},
				},
			},

			----------------------------------------------------------------------
			-- 7. About
			----------------------------------------------------------------------
			about = {
				type = "group",
				name = _trL("CONFIG_SECTION_ABOUT"),
				order = 100,
				args = {
					header = {
						type = "header",
						name = _trL("CONFIG_SECTION_TITLE_ABOUT"),
						order = 1,
					},
					loadedMsg = {
						type = "toggle",
						name = _trL("CONFIG_ABOUT_LOADED_ENABLE"),
						width = "full",
						order = 2,
						get = function() return GetSetting("about.loaded") end,
						set = function(_, v) SetSetting("about.loaded", v) end,
					},
					version = {
						type = "description",
						name = "|cffffd200" .. _tr("VERSION_MESSAGE", Gatherer.Var.Version) .. "|r\nAuthor: |cff00ff96gOOvER|r\n",
						fontSize = "medium",
						order = 3,
					},
					desc1 = {
						type = "description",
						name = _trL("DESCRIPTION") .. "\n",
						order = 4,
					},
					desc2 = {
						type = "description",
						name = _trL("DESCRIPTION_LICENSE"),
						order = 5,
					},
				},
			},
		},
	}

	return options
end

local registered = false
local function ensureRegistered()
	if registered then return end
	registered = true

	AceConfig:RegisterOptionsTable("GathererReforged", buildOptionsTable)
	AceConfigDialog:SetDefaultSize("GathererReforged", 840, 620)
	pcall(function()
		AceConfigDialog:AddToBlizOptions("GathererReforged", "Gatherer Reforged")
	end)
end

-- Override Gatherer.Config Show / Hide / ToggleOptions to use AceConfigDialog-3.0
function Gatherer.Config.Show()
	ensureRegistered()
	AceConfigDialog:Open("GathererReforged")
end

function Gatherer.Config.ShowOptions()
	Gatherer.Config.Show()
end

function Gatherer.Config.Hide()
	if registered then
		AceConfigDialog:Close("GathererReforged")
	end
end

function Gatherer.Config.HideOptions()
	Gatherer.Config.Hide()
end

function Gatherer.Config.ToggleOptions()
	ensureRegistered()
	if AceConfigDialog.OpenFrames and AceConfigDialog.OpenFrames["GathererReforged"] then
		AceConfigDialog:Close("GathererReforged")
	else
		AceConfigDialog:Open("GathererReforged")
	end
end

-- Register in Blizzard Options on PLAYER_LOGIN
Gatherer.ElvUI = Gatherer.ElvUI or {}
function Gatherer.ElvUI.SkinFrames() end

local initFrame = CreateFrame("Frame")
initFrame:RegisterEvent("PLAYER_LOGIN")
initFrame:SetScript("OnEvent", function()
	ensureRegistered()
end)

