--[[
	Gatherer Reforged Addon for World of Warcraft(tm).
	Version: 1.0.0
	Author: gOOvER

	License:
		This program is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, either version 3 of the License, or
		(at your option) any later version.

		This program is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with this program (see gpl.txt); if not, see <https://www.gnu.org/licenses/>.
]]

local _tr = Gatherer.Locale.Tr
local _trC = Gatherer.Locale.TrClient
local _trL = Gatherer.Locale.TrLocale

local ArchTimer = 0

local function safeRegisterEvent(frame, eventName)
	pcall(frame.RegisterEvent, frame, eventName)
end

function Gatherer.Event.RegisterEvents( frame )
	safeRegisterEvent(frame, "WORLD_MAP_UPDATE")
	safeRegisterEvent(frame, "CLOSE_WORLD_MAP")
	safeRegisterEvent(frame, "SPELLS_CHANGED") -- follow current skills
	safeRegisterEvent(frame, "SKILL_LINES_CHANGED") -- follow current skills
	safeRegisterEvent(frame, "UI_ERROR_MESSAGE") -- track failed gathering
	safeRegisterEvent(frame, "ZONE_CHANGED_NEW_AREA") -- for updating the minimap when we change zones
	safeRegisterEvent(frame, "MINIMAP_UPDATE_TRACKING") -- for updating minimap when tracking changes

	-- Events for off world non processing
	safeRegisterEvent(frame, "PLAYER_ENTERING_WORLD")
	safeRegisterEvent(frame, "PLAYER_LEAVING_WORLD")

	-- Addon Loaded and player login/logout events
	safeRegisterEvent(frame, "ADDON_LOADED")
	safeRegisterEvent(frame, "PLAYER_LOGIN")
	safeRegisterEvent(frame, "PLAYER_LOGOUT")

	-- Communications
	safeRegisterEvent(frame, "CHAT_MSG_ADDON")

	-- Archaeology
	safeRegisterEvent(frame, "UNIT_SPELLCAST_SUCCEEDED")
end

function Gatherer.Event.OnLoad()
	if ( Gatherer.Nodes.LoadDynamicNodes ) then
		Gatherer.Nodes.LoadDynamicNodes()
	end

	Gatherer.SpecialCases.ProcessSpecialCases()
	
	local hookFunc = function( ... ) Gatherer.Event.OnLoot(...) end
	Gatherer.Scanner.RegisterHook("Gatherer", hookFunc, hookFunc)
	Gatherer.Scanner.Init()
	
	Gatherer.Config.Load()
	Gatherer.DropRates.Load()
	Gatherer.Var.Loaded = true
	
	Gatherer.MapNotes.Update()
	Gatherer.MiniNotes.Show()
	
	Gatherer.MiniIcon.CreateLDB()
	Gatherer.MiniIcon.Reposition()
	Gatherer.MiniIcon.Update()
	
	--Gatherer.Plugins.LoadPluginData()
	
	if ( Gatherer.Config.GetSetting("about.loaded") ) then
		Gatherer.Util.ChatPrint(_tr("LOADED_NOTIFICATION", Gatherer.Var.Version))
	end

	-- load key Bindings Strings
	BINDING_HEADER_GATHERER = _trC("BINDING_HEADER_GATHERER")
	BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG = _trC("BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG")
end

function Gatherer.Event.OnEvent( event, ... )
	if (event == "PLAYER_ENTERING_WORLD" ) then
		Gatherer.MiniNotes.Show()

	elseif (event == "PLAYER_LEAVING_WORLD" ) then
		Gatherer.MiniNotes.Hide()

	elseif (event == "WORLD_MAP_UPDATE") then
		Gatherer.MapNotes.MapDraw()
	
	elseif ( event == "CLOSE_WORLD_MAP") then
		Gatherer.MapNotes.MapDraw()

	elseif( event == "ADDON_LOADED" ) then
		local addon = select(1, ...)
		if (addon and (string.lower(addon) == "gathererreforged" or string.lower(addon) == "gatherer")) then
			Gatherer.Event.OnLoad()
			Gatherer.Comm.OnLoad()
		end
	
	elseif ( event == "PLAYER_LOGIN" ) then
		Gatherer.Util.StartClientItemCacheRefresh()
		Gatherer.Util.GetSkills()
		Gatherer.Util.UpdateTrackingState()
		Gatherer.Plugins.LoadPluginData() -- * FIX for borked LoadAddOn *
	
	elseif ( event == "PLAYER_LOGOUT" ) then
		Gatherer.Config.Save()
		Gatherer.DropRates.Save()
	
	elseif ( event == "LEARNED_SPELL_IN_TAB" ) then
		Gatherer.Util.GetSkills()
	
	elseif ( event == "SPELLS_CHANGED" ) then
		Gatherer.Util.GetSkills()
	
	elseif ( event == "SKILL_LINES_CHANGED" ) then
		Gatherer.Util.GetSkills()
	
	elseif ( event == "MINIMAP_UPDATE_TRACKING" ) then
		Gatherer.Util.UpdateTrackingState()
		Gatherer.MiniNotes.ForceUpdate()
	
	elseif ( event == "CHAT_MSG_ADDON" ) then
		local prefix, msg, how, who = select(1, ...)
		if ( prefix == "GathX" ) then
			Gatherer.Comm.Receive( msg, how, who )
		elseif ( prefix == "Gatherer" ) then
			Gatherer.Comm.General(msg, how, who)
		elseif ( Gatherer.Integrations and Gatherer.Integrations.IsExternalSharingPrefix and Gatherer.Integrations.IsExternalSharingPrefix(prefix) ) then
			Gatherer.Integrations.OnExternalAddonMessage(prefix, msg, how, who)
		end
		
	elseif ( event == "ZONE_CHANGED_NEW_AREA" ) then
		Gatherer.MiniNotes.Show()
	
	elseif ( event == "UI_ERROR_MESSAGE" ) then
		local arg1, arg2 = ...
		local err_number = (type(arg1) == "number") and arg1 or nil
		local msg = (type(arg2) == "string" and arg2) or (type(arg1) == "string" and arg1) or nil

		local isLockErr = false
		local errGType = nil
		if err_number and (
			(LE_GAME_ERR_USE_LOCKED_WITH_SPELL_S and err_number == LE_GAME_ERR_USE_LOCKED_WITH_SPELL_S) or
			(LE_GAME_ERR_USE_LOCKED_WITH_SPELL_KNOWN_SI and err_number == LE_GAME_ERR_USE_LOCKED_WITH_SPELL_KNOWN_SI) or
			(LE_GAME_ERR_USE_LOCKED_WITH_ITEM_S and err_number == LE_GAME_ERR_USE_LOCKED_WITH_ITEM_S) or
			(LE_GAME_ERR_USE_LOCKED and err_number == LE_GAME_ERR_USE_LOCKED)
		) then
			isLockErr = true
		end

		if type(msg) == "string" and Gatherer.Locale and Gatherer.Locale.TrClient then
			local herbName = Gatherer.Locale.TrClient("TRADE_HERBALISM")
			local mineName = Gatherer.Locale.TrClient("TRADE_MINING")
			if herbName and msg:find(herbName, 1, true) then
				isLockErr = true
				errGType = "HERB"
			elseif mineName and msg:find(mineName, 1, true) then
				isLockErr = true
				errGType = "MINE"
			end
		end

		if not isLockErr and type(msg) == "string" and Gatherer.Util and Gatherer.Util.ParseFormattedMessage then
			local skill = (ERR_USE_LOCKED_WITH_SPELL_S and Gatherer.Util.ParseFormattedMessage(ERR_USE_LOCKED_WITH_SPELL_S, msg))
				or (ERR_USE_LOCKED_WITH_SPELL_KNOWN_SI and Gatherer.Util.ParseFormattedMessage(ERR_USE_LOCKED_WITH_SPELL_KNOWN_SI, msg))
				or (ERR_USE_LOCKED_WITH_ITEM_S and Gatherer.Util.ParseFormattedMessage(ERR_USE_LOCKED_WITH_ITEM_S, msg))
				or (LOCKED_WITH_SPELL and Gatherer.Util.ParseFormattedMessage(LOCKED_WITH_SPELL, msg))
				or (LOCKED_WITH_SPELL_KNOWN and Gatherer.Util.ParseFormattedMessage(LOCKED_WITH_SPELL_KNOWN, msg))
			if skill and skill ~= "" then
				isLockErr = true
			end
		end

		if isLockErr then
			Gatherer.Scanner.SetTooltip()
			local tooltip = Gatherer.Scanner.GetLastTip()
			if tooltip and tooltip.tip then
				Gatherer.Scanner.RecordUnskilledGather(tooltip.tip, errGType or tooltip.gType)
			end
		end
	
	elseif ( event == "UNIT_SPELLCAST_SUCCEEDED" ) then
		local unit, arg2, spellID = ...
		if ( unit == "player" and (spellID == 80451 or (Gatherer.Constants.SurveySpellName and arg2 == Gatherer.Constants.SurveySpellName)) ) then
			GathererFrame:Show()
			ArchTimer = Gatherer.Config.GetSetting("arch.duration")
			Gatherer.Var.ArchaeologyActive = true
			Gatherer.MiniNotes.ForceUpdate()
		end
	
	elseif ( event ) then
		Gatherer.Util.Debug("Gatherer Unknown event: "..event)
	end
end

function Gatherer.Event.OnUpdate(elapsed)
	-- update timers
	ArchTimer = ArchTimer - elapsed
	if ( ArchTimer <= 0 ) then
		GathererFrame:Hide()
		Gatherer.Var.ArchaeologyActive = false
	end
end

function Gatherer.Event.OnLoot(lootType, lootTable, coinAmount, extraData)
	Gatherer.Util.Debug("Gatherer.Event.OnLoot", lootType)
	if (lootType and lootType ~= "KILL") then
		local node = "Unknown"
		if (extraData and extraData.tip) then node = extraData.tip end

		local object = Gatherer.Nodes.Names[node]
		if (not object) then return end
		
		local objectType = Gatherer.Nodes.Objects[object]
		if (objectType ~= lootType) then return end
		
		-- increments only if both lootTable and coinAmount are non-nil
		Gatherer.Api.AddGather(object, lootType, nil, nil, coinAmount, lootTable, (lootTable and coinAmount) and true or false)
	end
end
