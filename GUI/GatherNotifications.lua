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
setmetatable( Gatherer.Notifications, metatable )
setfenv(1, Gatherer.Notifications)

Tooltip = nil -- will be set by the OnLoad function
Messages = {}

local function DisplayNotification()
	if ( IsLoggedIn() and Messages[1] ) then
		Tooltip:ClearLines()
		if not ( Tooltip:IsShown() ) then
			Tooltip:SetOwner(UIParent, "ANCHOR_PRESERVE")
		end
		local C = HIGHLIGHT_FONT_COLOR
		Tooltip:SetText(_tr("NOTIFICATIONS_TITLE"), C.r, C.g, C.b)
		for _, text in ipairs(Messages) do
			Tooltip:AddLine("———————————————————————————————————————————————————") -- I'd perfer if this produced a solid line :/
			Tooltip:AddLine(text, nil, nil, nil, true)
		end
		Tooltip:Show()
	end
end

function AddInfo( text )
	table.insert(Messages, text)
	DisplayNotification()
end


function OnLoad( tooltip )
	Tooltip = tooltip
	tooltip:RegisterEvent("PLAYER_LOGIN")
end

function OnShow( tooltip )
	tooltip.timeVisible = 0
end

function OnHide( tooltip )
	Messages = {}
end

function OnUpdate( tooltip, elapsed )
	timeVisible = tooltip.timeVisible
	timeVisible = timeVisible + elapsed
	if ( MouseIsOver(tooltip) ) then
		tooltip.timeVisible = 0
		tooltip:Show()
	else
		if ( timeVisible > 30 ) then
			if ( tooltip.FadeOut ) then
				pcall(tooltip.FadeOut, tooltip)
			else
				tooltip:Hide()
			end
			tooltip.timeVisible = -1000
		else
			tooltip.timeVisible = timeVisible
		end
	end
end

function OnEvent(self, event, ...)
	if ( event == "PLAYER_LOGIN" ) then
		DisplayNotification()
		Tooltip.timeVisible = -15
	end
end