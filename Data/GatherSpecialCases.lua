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

--[[
	Processing function that does the actual work.  This function nils itself
	out after running, to ensure that it can only ever be run once.  
]]
function Gatherer.SpecialCases.ProcessSpecialCases()
	
	
	-- nil out this function so that it cannot be called again
	Gatherer.SpecialCases.ProcessSpecialCases = nil
end
