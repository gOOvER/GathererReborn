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

Gatherer.Settings = {}

local metatable = { __index = getfenv(0) }
setmetatable( Gatherer.Config, metatable )
setfenv(1, Gatherer.Config)

-- increment this number by 1 to wipe all of the user's current
-- settings when they upgrade
local SETTINGS_VERSION = 2

-- place any variables that the settings table should be
-- initialised with here
Default_Settings = {
}

local function getDefault(setting)
	if (setting == "inspect.enable")    then return false   end
	local a,b,c,d = strsplit(".", setting)
	if (a == "show") then 
		if ( b == "arch" ) then return false end
		if (c == "all" or d == "all") then return false end
		if (d == "onlyiftracked") then return false end
		if (d == "onlyifskilled") then return false end
		return true
	end
	if (a == "plugin" and c == "enable") then return false end
	if (b == "enable") then return true end
	if (b == "tooltip" and c == "rate" and d == "num") then return 5 end
	if (b == "tooltip") then return true end
	if (setting == "mainmap.count")     then return 600     end
	if (setting == "mainmap.opacity")   then return 80      end
	if (setting == "mainmap.iconsize")  then return 12      end
	if (setting == "minimap.count")     then return 20      end
	if (setting == "minimap.opacity")   then return 80      end
	if (setting == "minimap.iconsize")  then return 12      end
	if (setting == "minimap.distance")  then return 800     end
	if (setting == "miniicon.angle")    then return 270     end
	if (setting == "miniicon.distance") then return 12      end
	if (setting == "fade.distance")     then return 500     end
	if (setting == "fade.percent")      then return 20      end
	if (setting == "track.circle")      then return true    end
	if (setting == "track.style")       then return "White" end
	if (setting == "track.current")     then return true    end
	if (setting == "track.distance")    then return 110     end
	if (setting == "track.opacity")     then return 80      end
	if (setting == "inspect.tint")      then return true    end
	if (setting == "inspect.distance")  then return 25      end
	if (setting == "inspect.percent")   then return 80      end
	if (setting == "inspect.time")      then return 120     end
	if (setting == "anon.tint")         then return false   end
	if (setting == "anon.opacity")      then return 60      end
	if (setting == "guild.receive")     then return true    end
	if (setting == "guild.print.send")  then return false   end
	if (setting == "guild.print.recv")  then return true    end
	if (setting == "raid.receive")      then return true    end
	if (setting == "raid.print.send")   then return false   end
	if (setting == "raid.print.recv")   then return true    end
	if (setting == "personal.print")    then return false   end
	if (setting == "about.loaded")      then return false   end
	if (setting == "track.colour.HERB") then return "0.250,0.750,0.250" end
	if (setting == "track.colour.MINE") then return "1.000,0.500,0.250" end
	if (setting == "track.colour.FISH") then return "0.100,0.100,1.000" end
	if (setting == "arch.enable")       then return true    end
	if (setting == "arch.minimap.count")then return 20      end
	if (setting == "arch.duration")     then return 60     end
	if (setting == "cooldown.enable")   then return true    end
	if (setting == "cooldown.time")     then return 300     end
	if (setting == "cooldown.opacity")  then return 35      end
	if (setting == "session.enable")    then return true    end
	if (setting == "tooltip.marketprice") then return true  end
	if (setting == "sharing.bridge.enable") then return true end

	-- check for a plugin default
	for _, data in pairs(Gatherer.Plugins.Registrations) do
		local func = data.defaults
		if ( func and func(setting) ) then
			return func(setting)
		end
	end
end

--defines keys which are saved in the PerCharacter settings
PerCharacter = {
}

-- Note: This function WILL NOT handle self referencing table
-- structures correctly (ie. it will never terminate)
local function deepCopy( source, dest )
	for k, v in pairs(source) do
		if ( type(v) == "table" ) then
			if not ( type(dest[k]) == "table" ) then
				dest[k] = {}
			end
			deepCopy(v, dest[k])
		else
			dest[k] = v
		end
	end
end

function ConvertOldSettings( conversions )
	local Settings = Gatherer.Settings
	for pat, repl in pairs(conversions) do
		if ( type(repl) == "string" ) then
			for name, profileData in pairs(Settings) do
				if ( name:sub(1, 8) == "profile." ) then
					local newSettings = {}
					for setting, value in pairs(profileData) do
						local new, count = setting:gsub(pat, repl)
						if ( count >= 1 ) then
							newSettings[new] = value
							profileData[setting] = nil
						end
					end
					for setting, value in pairs(newSettings) do
						profileData[setting] = value
					end
				end
			end
		elseif ( repl == false ) then
			for name, profileData in pairs(Settings) do
				if ( name:sub(1, 8) == "profile." ) then
					for setting, value in pairs(profileData) do
						if ( setting:find(pat) ) then
							profileData[setting] = nil
						end
					end
				end
			end
		end
	end
end

local oldSettingsConversions = {
	["^hud%.(.*)$"] = "plugin.gatherer_hud.%1", -- convert old non-plugin HUD settings
	["^track.colour.ARCH$"] = false,
	["^show.+arch"] = false,
	
}

--Load settings from the SavedVariables tables
function Load()
	local Settings = Gatherer.Settings
	deepCopy(Default_Settings, Settings)
	
	if ( Gatherer_SavedSettings_AccountWide and 
	     Gatherer_SavedSettings_AccountWide.SETTINGS_VERSION == SETTINGS_VERSION ) then
		deepCopy(Gatherer_SavedSettings_AccountWide, Settings)
	end

	if ( Gatherer_SavedSettings_PerCharacter and 
	     Gatherer_SavedSettings_PerCharacter.SETTINGS_VERSION == SETTINGS_VERSION ) then
		deepCopy(Gatherer_SavedSettings_PerCharacter, Settings)
	end

	ConvertOldSettings(oldSettingsConversions)

	-- Sharing Blacklist
	SharingBlacklist_Load()
end

--Save settings to the SavedVariables tables
-- Call this when the PLAYER_LOGOUT event fires or saved settings
-- will not be updated
function Save()
	local data = Gatherer.Settings

	local accountSettings = { SETTINGS_VERSION = SETTINGS_VERSION }
	for key in pairs(data) do
		accountSettings[key] = data[key]
	end
	_G.Gatherer_SavedSettings_AccountWide = accountSettings

	local characterSettings = { SETTINGS_VERSION = SETTINGS_VERSION }
	for _, key in pairs(PerCharacter) do
		characterSettings[key] = data[key]
	end
	_G.Gatherer_SavedSettings_PerCharacter = characterSettings

	SharingBlacklist_Save()
end

--*****************************************************************************
-- Settings Manipulation Functions
--*****************************************************************************

local function getUserSig()
	local userSig = string.format("users.%s.%s", GetRealmName(), UnitName("player"))
	return userSig
end

local function getUserProfileName()
	local SETTINGS = Gatherer.Settings
	local userSig = getUserSig()
	return SETTINGS[userSig] or "Default"
end

local itc = 0
local function getUserProfile()
	local SETTINGS = Gatherer.Settings
	local profileName = getUserProfileName()
	if (not SETTINGS["profile."..profileName]) then
		if profileName ~= "Default" then
			profileName = "Default"
			SETTINGS[getUserSig()] = "Default"
		end
		if profileName == "Default" then
			SETTINGS["profile."..profileName] = {}
		end
	end
	return SETTINGS["profile."..profileName]
end

local function cleanse( source )
	for k in pairs(source) do
		source[k] = nil
	end
end

local updateTracker = {}
local function setUpdated()
	for k in pairs(updateTracker) do
		updateTracker[k] = nil
	end
end

function Gatherer.Command.IsUpdated(what)
	if not updateTracker[what] then
		updateTracker[what] = true
		return true
	end
	return false
end

local pendingProfileName = ""

local function setter(setting, value)
	local SETTINGS = Gatherer.Settings
	local a,b,c = strsplit(".", setting)
	if (a == "profile") then
		if (setting == "profile.name") then
			pendingProfileName = tostring(value or "")
		elseif (setting == "profile.save") then
			local profileName = (type(value) == "string" and value ~= "") and value or pendingProfileName
			if profileName and profileName ~= "" then
				SETTINGS["profile."..profileName] = {}
				SETTINGS[getUserSig()] = profileName
				local profiles = SETTINGS["profiles"]
				if (not profiles) then
					profiles = { "Default" }
					SETTINGS["profiles"] = profiles
				end
				local found = false
				for _, name in ipairs(profiles) do
					if (name == profileName) then found = true end
				end
				if (not found) then
					table.insert(profiles, profileName)
					table.sort(profiles)
				end
				pendingProfileName = ""
				setUpdated()
				Gatherer.MiniNotes.Show()
				Gatherer.MapNotes.Update()
				DEFAULT_CHAT_FRAME:AddMessage("Saved profile: "..profileName)
			end
		elseif (setting == "profile.copy") then
			local profileName = (type(value) == "string" and value ~= "") and value or pendingProfileName
			if profileName and profileName ~= "" then
				local curprofile = getUserProfileName()
				SETTINGS["profile."..profileName] = {}
				if type(SETTINGS["profile."..curprofile]) == "table" then
					deepCopy(SETTINGS["profile."..curprofile], SETTINGS["profile."..profileName])
				end
				SETTINGS[getUserSig()] = profileName
				local profiles = SETTINGS["profiles"]
				if (not profiles) then
					profiles = { "Default" }
					SETTINGS["profiles"] = profiles
				end
				local found = false
				for _, name in ipairs(profiles) do
					if (name == profileName) then found = true end
				end
				if (not found) then
					table.insert(profiles, profileName)
					table.sort(profiles)
				end
				pendingProfileName = ""
				setUpdated()
				Gatherer.MiniNotes.Show()
				Gatherer.MapNotes.Update()
				DEFAULT_CHAT_FRAME:AddMessage("Saved profile: "..profileName)
			end
		elseif (setting == "profile.delete") then
			local profileName = (type(value) == "string" and value ~= "") and value or getUserProfileName()
			if (profileName and profileName ~= "Default") then
				if type(SETTINGS["profile."..profileName]) == "table" then
					cleanse(SETTINGS["profile."..profileName])
				end
				SETTINGS["profile."..profileName] = nil
				local profiles = SETTINGS["profiles"]
				if (profiles) then
					for pos, name in ipairs(profiles) do
						if (name == profileName and name ~= "Default") then
							table.remove(profiles, pos)
							break
						end
					end
				end
				if (getUserProfileName() == profileName) then
					SETTINGS[getUserSig()] = "Default"
				end
				setUpdated()
				Gatherer.MiniNotes.Show()
				Gatherer.MapNotes.Update()
				DEFAULT_CHAT_FRAME:AddMessage("Deleted profile: "..profileName)
			end
		elseif (setting == "profile") then
			if type(value) == "string" and value ~= "" then
				SETTINGS[getUserSig()] = value
				setUpdated()
				Gatherer.MiniNotes.Show()
				Gatherer.MapNotes.Update()
				DEFAULT_CHAT_FRAME:AddMessage(_tr("CONFIG_PROFILE_CHANGE_NOTIFICATION", value))
			end
		end
	else
		-- Set the value for this setting in the current profile
		local db = getUserProfile()
		db[setting] = value
		setUpdated()
		Gatherer.MiniNotes.Show()
		Gatherer.MapNotes.Update()
	end

	if ( a == "plugin" ) then
		if ( (c == "enable") and value ) then
			Gatherer.Plugins.LoadPlugin(b:lower())
		end
		local func = Gatherer.Plugins.ConfigUpdateFunctions[b]
		if ( func ) then
			func(setting, value)
		end
	end

	if (a == "miniicon") then
		Gatherer.MiniIcon.Reposition()
	end
	if (a == "minimap") then
		Gatherer.MiniIcon.Update()
	end
end
function SetSetting(...)
	setter(...)
end
	

local function getter(setting)
	local SETTINGS = Gatherer.Settings
	if not setting then return end

	local a,b,c = strsplit(".", setting)
	if (a == 'profile') then
		if (b == 'profiles') then
			local pList = SETTINGS["profiles"]
			if (not pList) then
				pList = { "Default" }
			end
			return pList
		end
	end
	if (setting == 'profile') then
		return getUserProfileName()
	end
	local db = getUserProfile()
	if ( db[setting] ~= nil ) then
		return db[setting]
	else
		return getDefault(setting)
	end
end
function GetSetting(setting, default)
	local option = getter(setting)
	if ( option ~= nil ) then
		local a,b,c = strsplit(".", setting)
		if ( a == "track" and b == "colour" ) then
			local r, g, b = strsplit(",", tostring(option))
			return r, g, b
		end
		return option
	else
		return default
	end
end

function DisplayFilter_MainMap( nodeId, gType )
	if ( gType and not nodeId ) then
		return getter("show.mainmap."..tostring(gType):lower())
	end
	local nodeType = Gatherer.Nodes.Objects[nodeId]
	if not ( nodeType ) then
		return false
	end
	local skill = Gatherer.Var.Skills[nodeType]
	nodeType = nodeType:lower()
	local showType = "show.mainmap."..nodeType
	local showAll = showType..".all"
	local showObject = "show."..nodeType.."."..nodeId
	local isTracked = Gatherer.Util.IsGatherTracked
	local onlyIfTracked = getter("show.mainmap."..nodeType..".onlyiftracked")
	local onlyIfSkilled = getter("show.mainmap."..nodeType..".onlyifskilled")
	return (
		getter(showType) and
		(getter(showAll) or getter(showObject)) and
		((not onlyIfTracked) or isTracked(nodeId)) and
		((not onlyIfSkilled) or skill)
	)
end

function DisplayFilter_MiniMap( nodeId, gType )
	if ( gType and not nodeId ) then
		return getter("show.minimap."..tostring(gType):lower())
	end
	local nodeType = Gatherer.Nodes.Objects[nodeId]
	if not ( nodeType ) then
		return false
	end
	local skill = Gatherer.Var.Skills[nodeType]
	nodeType = nodeType:lower()
	local showType = "show.minimap."..nodeType
	local showAll = showType..".all"
	local showObject = "show."..nodeType.."."..nodeId
	local isTracked = Gatherer.Util.IsGatherTracked
	local onlyIfTracked = getter("show.minimap."..nodeType..".onlyiftracked")
	local onlyIfSkilled = getter("show.minimap."..nodeType..".onlyifskilled")
	return (
		getter(showType) and
		(getter(showAll) or getter(showObject)) and
		((not onlyIfTracked) or isTracked(nodeId)) and
		((not onlyIfSkilled) or skill)
	)
end

--**************************************
-- Blacklist Functionality
--**************************************

SharingBlacklist = {}
SelectedIgnore = 1
LastIgnoredPlayer = nil

function SharingBlacklist_IsPlayerIgnored( name )
	if ( SharingBlacklist[name] ) then
		return true
	else
		return false
	end
end

function SharingBlacklist_Load()
	if ( Gatherer_SharingBlacklist ) then
		SharingBlacklist = Gatherer_SharingBlacklist
	end
	for i, name in ipairs(SharingBlacklist) do
		SharingBlacklist[name] = i
	end
end

function SharingBlacklist_Save()
	for key in pairs(SharingBlacklist) do
		if not ( type(key) == "number" ) then
			SharingBlacklist[key] = nil
		end
	end
	_G.Gatherer_SharingBlacklist = SharingBlacklist
end

function SharingBlacklist_Add( name )
	-- name validity checks
	if ( (not name) or name == "" ) then return end
	if ( #name < 2 ) then return end
	name = name:sub(1,1):upper()..name:sub(2)
	local currentSelection = SharingBlacklist[SelectedIgnore]

	if not ( SharingBlacklist[name] ) then
		table.insert(SharingBlacklist, name)
		LastIgnoredPlayer = name
		StaticPopup_Show("GATHERER_REMOVE_BLACKLISTED_NODES")
	end
	table.sort(SharingBlacklist)
	for i, name in ipairs(SharingBlacklist) do
		SharingBlacklist[name] = i
	end
	SelectedIgnore = SharingBlacklist[currentSelection] or 1
end

function SharingBlacklist_Remove( name )
	if ( SharingBlacklist[name] ) then
		SharingBlacklist[name] = nil
		for i, ignoreName in ipairs(SharingBlacklist) do
			if ( ignoreName == name ) then
				table.remove(SharingBlacklist, i)
			end
		end
		SelectedIgnore = 1
	end
	table.sort(SharingBlacklist)
	for i, name in ipairs(SharingBlacklist) do
		SharingBlacklist[name] = i
	end
end

function SharingBlacklist_RemoveBlacklistedNodes()
	if ( LastIgnoredPlayer ) then
		local numRemoved = 0
		for i, zone in Gatherer.Storage.GetAreaIndices() do
			for _, gatherId, gatherType in Gatherer.Storage.ZoneGatherNames(zone) do
				local result, _, count = Gatherer.Storage.RemoveGather(zone, gatherId, gatherType, LastIgnoredPlayer)
				numRemoved = numRemoved + count
			end
		end
		if ( numRemoved > 0 ) then
			PlaySound(SOUNDKIT and SOUNDKIT.IG_QUEST_LOG_ABANDON_QUEST or 845)
			Gatherer.MiniNotes.ForceUpdate()
			StaticPopup_Show("GATHERER_REMOVED_NODE_COUNT", numRemoved)
		end
	end
	LastIgnoredPlayer = nil
end

function SharingBlacklist_CountBlacklistedNodes()
	local count = 0
	if ( LastIgnoredPlayer ) then
		local storage = Gatherer.Storage
		for i, zone in storage.GetAreaIndices() do
			for _, gatherType in pairs(Gatherer.Constants.SupportedGatherTypes) do
				for nodeIndex in storage.ZoneGatherNodes(zone, gatherType) do
					for _, _, _, _, source in storage.GetNodeGatherNames(zone, gatherType, nodeIndex) do
						if ( source == LastIgnoredPlayer ) then
							count = count + 1
						end
					end
				end
			end
		end
	end
	return count
end

StaticPopupDialogs["GATHERER_ADD_SHARING_IGNORE"] = {
	text = _trL("ADD_IGNORE_LABEL"),
	button1 = _trL("ACCEPT"),
	button2 = _trL("CANCEL"),
	hasEditBox = 1,
	maxLetters = 12,
	OnAccept = function( self )
		local editBox = self.editBox or (self.GetEditBox and self:GetEditBox())
		if ( editBox ) then
			SharingBlacklist_Add(editBox:GetText());
		end
	end,
	OnShow = function( self )
		local editBox = self.editBox or (self.GetEditBox and self:GetEditBox())
		if ( editBox ) then
			editBox:SetFocus();
		end
	end,
	OnHide = function( self )
		local editBox = self.editBox or (self.GetEditBox and self:GetEditBox())
		if ( editBox ) then
			editBox:SetText("");
		end
	end,
	EditBoxOnEnterPressed = function( self )
		local parent = self:GetParent()
		local editBox = parent.editBox or (parent.GetEditBox and parent:GetEditBox()) or self
		local name = editBox:GetText();
		parent:Hide();
		SharingBlacklist_Add(name);
	end,
	EditBoxOnEscapePressed = function( self )
		self:GetParent():Hide();
	end,
	timeout = 0,
	exclusive = 1,
	whileDead = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["GATHERER_REMOVE_BLACKLISTED_NODES"] = {
	text = _trL("CONFIG_IGNORE_PURGE_QUESTION"),
	button1 = _trL("YES"),
	button2 = _trL("NO"),
	OnAccept = function( self )
		StaticPopup_Show("GATHERER_CONFIRM_REMOVE_BLACKLISTED_NODES", SharingBlacklist_CountBlacklistedNodes())
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["GATHERER_CONFIRM_REMOVE_BLACKLISTED_NODES"] = {
	text = _trL("CONFIG_IGNORE_PURGE_CONFIRM"),
	button1 = _trL("YES"),
	button2 = _trL("NO"),
	OnAccept = function( self )
		SharingBlacklist_RemoveBlacklistedNodes()
	end,
	timeout = 0,
	whileDead = 1,
	exclusive = 1,
	hideOnEscape = 1
};

StaticPopupDialogs["GATHERER_REMOVED_NODE_COUNT"] = {
	text = _trL("CONFIG_IGNORE_PURGE_DONE"),
	button1 = _trL("ACCEPT"),
	timeout = 0,
	whileDead = 1,
	hideOnEscape = 1
};
