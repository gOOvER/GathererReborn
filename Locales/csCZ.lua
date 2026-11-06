if GetLocale() ~= "csCZ" then return end

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

GathererLocalizations.csCZ = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Odeslat položku z %1 na %2";
	["COMM_NODE_SEND_TWO"]	= "Odeslat položku z %1 na %2 a %3";
	["COMM_RECEIVE_NODE"]	= "Odeslat položku z %1 na %2 a %3 (%4)";
	["NODE_ADD"]	= "Přidat položku z %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Ukaž načtenou zpravu";
	["CONFIG_ARCH_MAX_NOTES"]	= "Zobraz: %d najbliších";
	["CONFIG_ENABLE_HERB"]	= "Ukaž pozice kytek";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Pouze kytky";
	["CONFIG_ENABLE_MINE"]	= "Ukaž pozice mineralů";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Pouze minerály";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Tlačitko nastavení na minimape";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Zobrazení surovin na minimape";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Nastavení svetové mapy";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d záznam(ov) bolo permanentne zmazaných z tvojej Gatherer databáze";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Naozaj chceš zmazať všetky záznamy zdielané týmto hráčom?";
	["CONFIG_MINIICON_ANGLE"]	= "Uhol tlačítka: %d°";

	-- Section: Database Version Messages
	["STORAGE_DB_VERSION_INVALID"]	= "POZOR!!!\nGatherer objevil, že vaše verze databáze je zastaralá. Prosím Klikněte na tlačítko potvrdit pro smazání databaze, nebo klikněte na ignorovat a pokuste se databázi opravit manualně.";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Klikni - Pravým tlačítkem myši}} aby si viděl report z toho co jsi natěžil.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Možnosti";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Netherdust Pollen";
	["ORE_ADAMANTITE"]	= "Tvrdokov";
	["ORE_BLOODSTONE"]	= "Chudý krvekov";
	["ORE_COPPER"]	= "Měď";
	["ORE_DARKIRON"]	= "Černé železo";
	["ORE_FELIRON"]	= "Felezo";
	["ORE_GOLD"]	= "Zlato";
	["ORE_INCENDICITE"]	= "Plamenec";
	["ORE_INDURIUM"]	= "Trvalec";
	["ORE_IRON"]	= "Železo";
	["ORE_KHORIUM"]	= "Chorium";
	["ORE_MITHRIL"]	= "Mitril";
	["ORE_NETHERCITE"]	= "Nethercite";
	["ORE_OBSIDIAN"]	= "Obsidián";
	["ORE_RADAMANTITE"]	= "Bohatý tvrdokov";
	["ORE_RTHORIUM"]	= "Bohaté torium";
	["ORE_SILVER"]	= "Stříbro";
	["ORE_THORIUM"]	= "Chudé torium";
	["ORE_TIN"]	= "Cín";
	["ORE_TRUESILVER"]	= "Rtuť";
	["TREASURE_BARREL"]	= "Sudy";
	["TREASURE_BLOODPETAL"]	= "Výhonky Krvekvětu";
	["TREASURE_BOX"]	= "Krabice";
	["TREASURE_CASK"]	= "Soudky";
	["TREASURE_CHEST"]	= "Truhly pokladů";
	["TREASURE_CLAM"]	= "Obří škeble";
	["TREASURE_CRATE"]	= "Bedny";
	["TREASURE_FOOTLOCKER"]	= "Skříňky";
	["TREASURE_GLOWCAP"]	= "Zářekvěty";
	["TREASURE_NIGHTDRAGON"]	= "Dech Draka Noci";
	["TREASURE_POWERCRYST"]	= "Krystaly síly";
	["TREASURE_SHELLFISHTRAP"]	= "Pasti na korýše";
	["TREASURE_SONGFLOWER"]	= "Zpěvokvěty";
	["TREASURE_UNGOROSOIL"]	= "Hlína z Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Třasohlízy";
	["TREASURE_WINDBLOSSOM"]	= "Větrůvky";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "$1 další drop";
	["NOTE_COUNT"]	= "Vytěženo %1-krát";
	["NOTE_DISTANCE"]	= "Vzdálenost: %1 yardů";
	["NOTE_IMPORTED"]	= "Importovaný objev";
	["NOTE_LASTVISITED"]	= "Naposled navštíveno: %1";
	["NOTE_OVERALLDROPS"]	= "Přehled nálezů zde:";
	["NOTE_SOURCE"]	= "Objevitel: %1";
	["NOTE_UNSKILLED"]	= "Objeveno bez možnosti vytěžení";

	-- Section: Time
	["DAYS"]	= "Den";
	["DAYS_ABBR"]	= "D";
	["DAYS_ABBR_P1"]	= "Dny";
	["DAYS_P1"]	= "D";
	["HOURS"]	= "Hodina";
	["HOURS_ABBR"]	= "H";
	["HOURS_ABBR_P1"]	= "H";
	["HOURS_P1"]	= "Hodin(-y)";
	["MINUTES"]	= "Minuta";
	["MINUTES_ABBR"]	= "Min";
	["MINUTES_ABBR_P1"]	= "Min";
	["MINUTES_P1"]	= "Minut(-y)";
	["SECONDS"]	= "Sekund";
	["SECONDS_ABBR"]	= "S";
	["SECONDS_ABBR_P1"]	= "S";
	["SECONDS_P1"]	= "Sekund(-y)";
	["WEEKS"]	= "Týden";
	["WEEKS_ABBR"]	= "Týden";
	["WEEKS_ABBR_P1"]	= "Týdny(-ů)";
	["WEEKS_P1"]	= "Týdny(-ů)";

	-- Section: Trade Skill Names
	["TRADE_HERBALISM"]	= "Bylinkářství";
	["TRADE_MINING"]	= "Kov-kopectví";

}
