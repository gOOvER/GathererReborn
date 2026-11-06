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

	-- Section: Fallback / Synchronized Keys
	["GUILD"]	= "guild";
	["GROUP"]	= "group";
	["RAID"]	= "raid";
	["PARTY"]	= "party";
	["WHISPER"]	= "whisper";
	["PLAYER"]	= "Player";
	["ADD_IGNORE_LABEL"]	= "Add player to sharing ignore list:";
	["CONFIG_ALL_FILTER_NOTE"]	= "The '%1' options cause the current filters to be ignored and force all nodes in that category to be shown.";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Only if tracking";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "World Map Tracking Options";
	["CONFIG_HERB_FILTER_LABEL"]	= "Herbal nodes to track";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Are you sure you wish to purge all shares from this player from your database?  This operation CANNOT be undone and will remove up to %d node(s) from your Gatherer database.";
	["CONFIG_MINE_FILTER_LABEL"]	= "Mineral nodes to track";
	["CONFIG_MINIICON_DISTANCE"]	= "Distance: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Display Minimap Button";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Minimap Additional";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Display anonymous nodes";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Anon opacity: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Tint anonymous nodes red";
	["CONFIG_MINIMAP_DISTANCE"]	= "Distance: %d yards";
	["CONFIG_MINIMAP_ENABLE"]	= "Display notes on Minimap";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Fade at: %d yards";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Fade out mini-notes";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Distance fading: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Icon Size: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Inspect at: %d yards";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Mark nodes as inspected";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Inspected fading: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Reinspect: %d secs";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Tint green while inspecting";
	["CONFIG_MINIMAP_LABEL"]	= "Minimap Options";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Display: %d closest";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Default opacity: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Only for active tracking skill";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Convert to tracking icon when close";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Track at: %d yards";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Enable tracking skill feature";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Icon opacity: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Treasure nodes to track";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Changing profile: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Create copy";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Create new";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Activate a current profile";
	["CONFIG_PROFILE_NEW"]	= "Create or replace a profile";
	["CONFIG_PROFILE_NEW_LABEL"]	= "New profile name:";
	["CONFIG_SECTION_ABOUT"]	= "About";
	["CONFIG_SECTION_GENERAL"]	= "General";
	["CONFIG_SECTION_HEADER_CORE"]	= "Core Options";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Plugins";
	["CONFIG_SECTION_MINIMAP"]	= "Minimap";
	["CONFIG_SECTION_OPEN"]	= "Treasure";
	["CONFIG_SECTION_PROFILES"]	= "Profiles";
	["CONFIG_SECTION_SHARING"]	= "Sharing";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "About Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Archaeology Options";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Main Gatherer Options";
	["CONFIG_SECTION_TITLE_HERB"]	= "Herbalism Filter Options";
	["CONFIG_SECTION_TITLE_MINE"]	= "Mining Filter Options";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Minimap Gatherer Options";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Treasure Filter Options";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Setup, configure and edit profiles";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Synchronization Options";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Sharing Blacklist";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Add received group gathers to my database";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Enable group synchronization";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Raid/Party Sharing";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Print a message when receiving a group gather";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Print a message when sending a group gather";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Add received guild gathers to my database";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Enable guild synchronization";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Guild Sharing";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Print a message when receiving a guild gather";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Print a message when sending a guild gather";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Print a message when adding own gather to DB";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Personal Alert";
	["CONFIG_TOOLTIP_COUNTS"]	= "Display harvest counts";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Display node distance";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Display drop rates";
	["CONFIG_TOOLTIP_ENABLE"]	= "Display tooltips";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Display last seen time";
	["CONFIG_TOOLTIP_SOURCE"]	= "Display note source";
	["CONFIG_WORLDMAP_ENABLE"]	= "Display notes on World Map";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Icon Size: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Display: %d notes";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Opacity: %d%%";
	["ENABLE_OPEN"]	= "Show treasure nodes";
	["STORAGE_DB_CATACLYSMIC"]	= "Being the mean super-villan that he is, Deathwing's return has burned all the herbs, melted all the ore deposits and obliterated all of the chests.  Now they all have to regrow, be recrystallized or be re-hidden by pirates and they're probably all in new locations.  Treasure Hunt!!!\n(Old World data has been wiped due to widespread geography changes.)";
	["STORAGE_DB_VERSION_NEWER"]	= "Your saved Gatherer database is too new.  Your current database has been set aside until you upgrade Gatherer.";
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";
	["REPORT_COLUMN_HEADER_DIST"]	= "Dist";
	["REPORT_COLUMN_HEADER_REGION"]	= "Region";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Source";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Type";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "Do you want to delete %d Gatherer nodes?";
	["REPORT_DELETE_MARKED"]	= "Delete marked";
	["REPORT_MARKED_NODES_COUNT"]	= "Marked nodes: %1";
	["REPORT_MARKING_NOTE"]	= "Note: When you mark nodes, they will remain marked until you unmark them by either clicking the line item in the report, using the Unmark buttons above or reloading the game.";
	["REPORT_MARK_THESE"]	= "Mark these";
	["REPORT_SEARCH_BY_REGION"]	= "By Region";
	["REPORT_SEARCH_BY_SOURCE"]	= "By Source";
	["REPORT_SEARCH_BY_TYPE"]	= "By Type";
	["REPORT_SEND_MARKED"]	= "Send marked";
	["REPORT_TITLE"]	= "Gatherables Report";
	["REPORT_UNMARK_ALL"]	= "Unmark all";
	["REPORT_UNMARK_THESE"]	= "Unmark these";
	["DESCRIPTION"]	= "Gatherer is an addon that allows you to remember your gathering locations and view them on either or all of your main map, your minimap, or in an onscreen display HUD. It also allows you to share your finds with your guild, raid or your friends.";
	["DESCRIPTION_LICENSE"]	= "Gatherer Reforged is open source software and is licensed under the GNU General Public License v3. Please see gpl.txt, included with this AddOn, for the full license.";
	["LOADED_NOTIFICATION"]	= "Gatherer v%1 -- Loaded!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Warning:}} Your Gatherer installation appears to have mismatching file versions.\n\nPlease make sure you delete the old:\n  %1\ndirectory, reinstall a fresh copy from:\n  %2\nand restart WoW completely before reporting any bugs.\n\nThanks,\n  The Gatherer Dev Team";
	["VERSION_MESSAGE"]	= "This is Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer was unable to identify the following zones: {{%1}}\nIf these are new zones, then this is not a problem, and you can continue as normal.\nIf these are not new zones, then remain calm as {{your data IS NOT LOST!}}  Your data for these zones is still intact, but you will need to update Gatherer in order to access it.  Until then you can continue as normal and any new data you collect will be merged with your old data once you upgrade.  \n\n{{Please upgrade Gatherer when convenient.}}";
	["ACCEPT"]	= "Accept";
	["ALL"]	= "All";
	["CANCEL"]	= "Cancel";
	["DELETE"]	= "Delete";
	["DISABLE"]	= "Disable";
	["DONE"]	= "Done";
	["ENABLE"]	= "Enable";
	["IGNORE"]	= "Ignore";
	["IGNORE_PLAYER"]	= "Ignore Player";
	["NO"]	= "No";
	["OKAY"]	= "Okay";
	["SEARCH"]	= "Search";
	["STOP_IGNORE"]	= "Remove Player";
	["STRATA_BACKGROUND"]	= "Background";
	["STRATA_HIGH"]	= "High";
	["STRATA_LOW"]	= "Low";
	["STRATA_MEDIUM"]	= "Medium";
	["YES"]	= "Yes";
	["MINIICON_ACTIONS_CLICK"]	= "{{Click}} to toggle display of nodes.";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift-Click}} to toggle HUD display.";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift-Right-Click}} to edit the configuration.";
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "HUD Display Options";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "HUD Heat Tracking Mode";
	["HUD_CONFIG_HIDING_LABEL"]	= "HUD Hiding Options";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "Overall HUD Alpha: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Viewing Angle: %d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Underlay colour";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "Darken HUD to improve visibility";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Center colour";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Enable player Field Of View circle";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Notes fade out at: %d%% of radius";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Heat colour";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "Tracking cooldown: %d seconds";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Show travel tracking (heat)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Never cooldown";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "Tracking trail width: %d yards";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Hide while in combat";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Hide while flying";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "Hide while inside";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Hide while mounted";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "Hide while resting";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "Hide while stealthed";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Hide while swimming";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Hide while targetting";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "Hide while not mounted";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Note Size: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "Minimum framerate to draw every frame: %dfps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Horizontal Offset: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Vertical Offset: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Party member colour";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Show other party members";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Party icon size: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Perspective Level: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "Overall HUD radius: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "Note Range: %d yards";
	["HUD_CONFIG_STRATA_LABEL"]	= "HUD Strata (Drawing Level)";
	["HUD_CONFIG_USAGE_NOTE"]	= "The use of the HUD will consume frames from your framerate, and will consume even more frames if you enable the \"Heat\" tracking mode which keeps track of your past traffic via a heat trail.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD Visibility Options";
	["HUD_DESCRIPTION"]	= "The HUD is a navigation component that allows you to track the location of gatherables on your screen in a heads-up style overlay.";
	["HUD_TITLE"]	= "Gatherer Heads-Up Display Plugin";
	["IMPORT_CTMOD_DONE"]	= "Your CT_MapMod data has been imported.";
	["IMPORT_CTMOD_NODATA"]	= "No CT_MapMod data found to import.";
	["GENERAL_LABEL"]	= "General";
	["LABEL_CONFIG"]	= "Config";
	["LABEL_DENSITY_REPORT"]	= "Node Search";
	["LABEL_NOTE"]	= "Note";
	["LABEL_REPORT"]	= "Gatherables Report";
	["MAP_NOTES_HIDE"]	= "Hide Items";
	["MAP_NOTES_SHOW"]	= "Show Items";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: Warnings";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer: Show Items";
	["MASS_SHARING_ABORT"]	= "Aborted upload.";
	["MASS_SHARING_ABORTED"]	= "Aborted at %1";
	["MASS_SHARING_ACCEPTED"]	= "Beginning...";
	["MASS_SHARING_ASKING"]	= "Asking...";
	["MASS_SHARING_BUSY"]	= "User busy.";
	["MASS_SHARING_CLOSED"]	= "Is closed.";
	["MASS_SHARING_COMPLETE"]	= "Success!";
	["MASS_SHARING_DONE"]	= "Finished %1";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s wants to send you %2$d Gatherer nodes. Accept?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "Do you wish to send %1$s nodes to %2$s?\n(Remember, they need to have the Gatherables Report window open.)";
	["MASS_SHARING_RECEIVED_COUNT"]	= "Received %1";
	["MASS_SHARING_REJECT"]	= "Rejected!";
	["MASS_SHARING_SENDING"]	= "Sending...";
	["MASS_SHARING_SENT"]	= "Sent %1";
	["MASS_SHARING_TIMEOUT"]	= "Timed out.";
	["ARCH_ARAKKOA"]	= "Arakkoa";
	["ARCH_DRAENEI"]	= "Draenei";
	["ARCH_DRAENORCLANS"]	= "Draenor Clans";
	["ARCH_DWARF"]	= "Dwarf";
	["ARCH_FOSSIL"]	= "Fossil";
	["ARCH_MANTID"]	= "Mantid";
	["ARCH_MOGU"]	= "Mogu";
	["ARCH_NERUBIAN"]	= "Nerubian";
	["ARCH_NIGHTELF"]	= "Night Elf";
	["ARCH_OGRE"]	= "Ogre";
	["ARCH_ORC"]	= "Orc";
	["ARCH_PANDAREN"]	= "Pandaren";
	["ARCH_TOLVIR"]	= "Tol'vir";
	["ARCH_TROLL"]	= "Troll";
	["ARCH_VRYKUL"]	= "Vrykul";
	["HERB_AZSHARASVEIL"]	= "Azshara's Veil";
	["HERB_CINDERBLOOM"]	= "Cinderbloom";
	["HERB_FROSTLOTUS"]	= "Frost Lotus";
	["HERB_HEARTBLOSSOM"]	= "Heartblossom";
	["HERB_STORMVINE"]	= "Stormvine";
	["HERB_TWILIGHTJASMINE"]	= "Twilight Jasmine";
	["HERB_WHIPTAIL"]	= "Whiptail";
	["ORE_BLACKROCK"]	= "Blackrock";
	["ORE_ELEMENTIUM"]	= "Elementium";
	["ORE_GHOSTIRON"]	= "Ghost Iron";
	["ORE_KYPARITE"]	= "Kyparite";
	["ORE_OBSIDIUM"]	= "Obsidium";
	["ORE_PYRITE"]	= "Pyrite";
	["ORE_RBLACKROCK"]	= "Rich Blackrock";
	["ORE_RELEMENTIUM"]	= "Rich Elementium";
	["ORE_RGHOSTIRON"]	= "Rich Ghost Iron";
	["ORE_RKYPARITE"]	= "Rich Kyparite";
	["ORE_ROBSIDIUM"]	= "Rich Obsidium";
	["ORE_RPYRITE"]	= "Rich Pyrite";
	["ORE_RTRILLIUM"]	= "Rich Trillium";
	["ORE_RTRUEIRON"]	= "Rich True Iron";
	["ORE_TRILLIUM"]	= "Trillium";
	["ORE_TRUEIRON"]	= "True Iron";
	["TREASURE_EGG"]	= "Netherwing Eggs";
	["TREASURE_EVERFROSTCHIP"]	= "Everfrost Chips";
	["TREASURE_ONYXEGG"]	= "Onyx Eggs";
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Import";
	["DATABASE_IMPORT_HEADER"]	= "Perform import of node database:";
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Location";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# Nodes";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Percent";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Type";
	["DENSITY_SEARCH_TITLE"]	= "Node Density Search";
	["PROFESSIONS_ARCHAEOLOGY"]	= "Archaeology";

}
