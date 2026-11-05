--[[
	Gatherer Reborn Addon for World of Warcraft(tm).
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

local metatable = { __index = getfenv(0) }
setmetatable( Gatherer.Plugins, metatable )
setfenv(1, Gatherer.Plugins)

Data = {}
Registrations = {}
ConfigUpdateFunctions = {}
Commands = {}

local setting = Gatherer.Config.GetSetting

function LoadPluginData()
	for i = 1, GetNumAddOns() do
		local tabName = GetAddOnMetadata(i, "X-Gatherer-Plugin-Name")
		local type = GetAddOnMetadata(i, "X-Gatherer-Plugin-Type")
		if ( tabName ) then
			local cmdName = (GetAddOnMetadata(i, "X-Gatherer-Command-Name") or tabName):lower():gsub("%s+", "")
			local addonName, title, notes, enabled, loadable, reason, security = GetAddOnInfo(i)
			local pluginID = GetAddOnMetadata(i, "X-Gatherer-Plugin-ID") or addonName
			local type = GetAddOnMetadata(i, "X-Gatherer-Plugin-Type")
			local dbID = GetAddOnMetadata(i, "X-Gatherer-Plugin-DatabaseID")
			local name = pluginID:lower()
			Data[name] = {
				tabName = tabName,
				name = name,
				addonName = addonName,
				title = title,
				notes = notes,
				type = type,
				dbID = dbID,
			}
			Commands[cmdName] = {
				name = name;
			}
			if ( type == "DATABASE") then
				RegisterPlugin(name, nil, nil, nil)
			
			else
				local enabled = setting("plugin."..name..".enable")
				if ( enabled ) then
					LoadAddOn(addonName)
				end
			end
		end
	end
end

function RegisterPlugin( name, settingDefaults, makeConfig, configUpdate )
	name = name:lower()
	local data = Data[name]
	if ( data ) then
		Registrations[name] = {
			name = name,
			defaults = settingDefaults,
			makeConfig = makeConfig,
		}
		if ( type(configUpdate) == "function" ) then
			ConfigUpdateFunctions[name] = configUpdate
		end
	end
end

function RegisterDatabaseImport( name, doImport )
	name = name:lower()
	local data = Data[name]
	local regs = Registrations[name]
	if ( data and regs ) then
		regs.doImport = doImport
	end
end

function LoadPlugin( name )
	name = name:lower()
	if ( Data[name] and Data[name].addonName ) then
		local target = Data[name].addonName
		EnableAddOn(target)
		LoadAddOn(target)
	end
end

local Print = Gatherer.Util.ChatPrint
local function PrintUsageLine( plugin, cmd, ... )
	Gatherer.Command.PrintUsageLine("plugin " .. plugin .. " " .. cmd, ...)
end

function ProcessCommands( pluginCmdName, cmd, ... )
	local GetSetting = Gatherer.Config.GetSetting
	local SetSetting = Gatherer.Config.SetSetting
	if ( pluginCmdName == "help" or pluginCmdName == "" or pluginCmdName == nil ) then
		Print("Usage:")
		for cmd, details in pairs(Commands) do
			local pluginStatus = GetSetting("plugin."..details.name..".enable") and "on" or "off"
			PrintUsageLine(cmd, "on||off||toggle", pluginStatus, "turns the " .. Data[details.name].tabName .. " on and off")
		end
	
	elseif ( Commands[pluginCmdName] ) then
		local details = Commands[pluginCmdName]
		local p1, p2 = ...
		local enabled = Gatherer.Command.parseOnOff(cmd)
		if ( enabled ~= nil ) then
			if ( enabled == true ) then
				SetSetting("plugin."..details.name..".enable", true)
				Print("Turned " .. Data[details.name].tabName .. " on")
			
			elseif ( enabled == false ) then
				SetSetting("plugin."..details.name..".enable", false)
				Print("Turned " .. Data[details.name].tabName .. " off")
			
			end
		
		elseif ( cmd == "toggle" ) then
			if ( GetSetting("plugin."..details.name..".enable") ) then
				ProcessCommands(pluginCmdName, "off")
			else
				ProcessCommands(pluginCmdName, "on")
			end
		
		else
			
		
		end
	
	end
end
