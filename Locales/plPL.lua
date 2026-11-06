if GetLocale() ~= "plPL" then return end

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

GathererLocalizations = GathererLocalizations or {}

GathererLocalizations.plPL = {

	-- Section: Configuration
	["CONFIG_ENABLE_HERB"]	= "Pokaż węzły zielarskie";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Tylko zielarze";
	["CONFIG_ENABLE_MINE"]	= "Pokaż węzły górnicze";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Tylko górnicy";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "tylko jeśli śledzone";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Opcje przycisku minimapy";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "opcje śledzenia na minimapie";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "opcje mapy świata";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "opcje śledzenia na mapie świata";
	["CONFIG_HERB_FILTER_LABEL"]	= "Węzły zielarskie do śledzenia";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Zbieracz, Kolekcjoner";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Przełącz okno opcji";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Piekielny pyłek kwiatowy";
	["ORE_ADAMANTITE"]	= "Adamantium";
	["ORE_BLOODSTONE"]	= "Mniejszy Krwisty Kamień";
	["ORE_COPPER"]	= "Miedź";
	["ORE_DARKIRON"]	= "Mroczne Żelazo";
	["ORE_FELIRON"]	= "Demoniczne Żelazo";
	["ORE_GOLD"]	= "Złoto";
	["ORE_INCENDICITE"]	= "Incedencyt";
	["ORE_INDURIUM"]	= "Indurium";
	["ORE_IRON"]	= "Żelazo";
	["ORE_KHORIUM"]	= "Khorium";
	["ORE_MITHRIL"]	= "Mithril";
	["ORE_NETHERCITE"]	= "Netherocyt";
	["ORE_OBSIDIAN"]	= "Obsydian";
	["ORE_RADAMANTITE"]	= "Bogate Adamantium";
	["ORE_RTHORIUM"]	= "Bogaty Tor";
	["ORE_SILVER"]	= "Srebro";
	["ORE_THORIUM"]	= "Tor";
	["ORE_TIN"]	= "Cyna";
	["ORE_TRUESILVER"]	= "Czyste Srebro";
	["TREASURE_BARREL"]	= "Beczki";
	["TREASURE_BLOODPETAL"]	= "Pęd Krwiopłatka";
	["TREASURE_BOX"]	= "Pudła";
	["TREASURE_CASK"]	= "Baryłka";
	["TREASURE_CHEST"]	= "Skrzynie skarbów";
	["TREASURE_CLAM"]	= "Olbrzymie Małże";
	["TREASURE_CRATE"]	= "Skrzynie";
	["TREASURE_FOOTLOCKER"]	= "Szkatułka";
	["TREASURE_GLOWCAP"]	= "Świecące kapelusze";
	["TREASURE_NIGHTDRAGON"]	= "Oddech Mrocznego Smoka";
	["TREASURE_POWERCRYST"]	= "Kryształy Mocy";
	["TREASURE_SHELLFISHTRAP"]	= "Pułapki na muszloryby";
	["TREASURE_SONGFLOWER"]	= "Kwiaty Pieśni";
	["TREASURE_UNGOROSOIL"]	= "Gleba z Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Leśny Por";
	["TREASURE_WINDBLOSSOM"]	= "Nasiona Kwiatów Wiatru";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 dodatkowych zbiorów";
	["NOTE_COUNT"]	= "Zebrano %1 razy";
	["NOTE_DISTANCE"]	= "Odległość: %1 metrów";
	["NOTE_IMPORTED"]	= "Zaimportowany zbiór";
	["NOTE_LASTVISITED"]	= "Ostatnio odwiedzony: %1";
	["NOTE_OVERALLDROPS"]	= "Lista zbiorów:";
	["NOTE_SOURCE"]	= "Od: %1";
	["NOTE_UNSKILLED"]	= "Zbyt mało doświadczony";

	-- Section: Time
	["DAYS"]	= "Dzień";
	["DAYS_ABBR"]	= "Dzień";
	["DAYS_ABBR_P1"]	= "Dni";
	["DAYS_P1"]	= "Dni";
	["HOURS"]	= "Godzina";
	["HOURS_ABBR"]	= "Godz.";
	["HOURS_ABBR_P1"]	= "Godziny";
	["HOURS_P1"]	= "Godzin(y)";
	["MINUTES"]	= "Minuta";
	["MINUTES_ABBR"]	= "Min.";
	["MINUTES_ABBR_P1"]	= "Min.";
	["MINUTES_P1"]	= "Minuty";
	["SECONDS"]	= "Sekunda";
	["SECONDS_ABBR"]	= "Sek.";
	["SECONDS_ABBR_P1"]	= "Sek.";
	["SECONDS_P1"]	= "Sekund(y)";
	["WEEKS"]	= "Tydzień";
	["WEEKS_ABBR"]	= "Tydz";
	["WEEKS_ABBR_P1"]	= "Tyg";
	["WEEKS_P1"]	= "Tygodni";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Archeologia";
	["TRADE_HERBALISM"]	= "Zielarstwo";
	["TRADE_MINING"]	= "Górnictwo";

}
