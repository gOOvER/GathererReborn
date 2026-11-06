if GetLocale() ~= "deDE" then return end

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

GathererLocalizations.deDE = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Fund von %1 an %2 gesendet";
	["COMM_NODE_SEND_TWO"]	= "Fund von %1 an %2 und %3 gesendet";
	["COMM_RECEIVE_NODE"]	= "Fund von %1 in %2 von %3 erhalten (%4)";
	["NODE_ADD"]	= "Fund von %1 hinzugefügt";
	["GUILD"]	= "Gilde";
	["GROUP"]	= "Gruppe";
	["RAID"]	= "Schlachtzug";
	["PARTY"]	= "Gruppe";
	["WHISPER"]	= "Flüstern";
	["PLAYER"]	= "Spielername";
	["ADD_IGNORE_LABEL"]	= "Spieler zur Ignorierliste für das Teilen hinzufügen:";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Lademeldung beim Start anzeigen";
	["CONFIG_ALL_FILTER_NOTE"]	= "Die Option „%1“ übersteuert alle aktiven Filter und blendet sämtliche Vorkommen dieser Kategorie ein.";
	["CONFIG_ARCH_MAX_NOTES"]	= "Anzeige: %d nächste Vorkommen";
	["CONFIG_ENABLE_HERB"]	= "Kräutervorkommen anzeigen";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Nur für Kräuterkundige";
	["CONFIG_ENABLE_MINE"]	= "Erzvorkommen anzeigen";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Nur für Bergbauer";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Nur bei aktiver Suche";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Minikarten-Schaltfläche";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Anzeige auf der Minikarte";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Weltkarten-Optionen";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Anzeige auf der Weltkarte";
	["CONFIG_HERB_FILTER_LABEL"]	= "Angezeigte Kräutervorkommen";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Möchtest du wirklich alle von diesem Spieler geteilten Vorkommen aus deiner Datenbank löschen?\nDieser Vorgang kann NICHT rückgängig gemacht werden und entfernt bis zu %d Vorkommen aus deiner Gatherer-Datenbank.";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d Vorkommen wurden dauerhaft aus deiner Gatherer-Datenbank entfernt.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Möchtest du alle Vorkommen entfernen, die von diesem Spieler geteilt wurden?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Angezeigte Erzvorkommen";
	["CONFIG_MINIICON_ANGLE"]	= "Position (Winkel): %d°";
	["CONFIG_MINIICON_DISTANCE"]	= "Abstand: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Minikarten-Schaltfläche anzeigen";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Erweiterte Minikarten-Optionen";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Unbekannte Vorkommen anzeigen";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Deckkraft unbekannter Vorkommen: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Unbekannte Vorkommen rot einfärben";
	["CONFIG_MINIMAP_DISTANCE"]	= "Suchradius: %d Meter";
	["CONFIG_MINIMAP_ENABLE"]	= "Vorkommen auf der Minikarte anzeigen";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Ausblenden ab: %d Metern";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Minikarten-Symbole auf Distanz verblassen";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Transparenz beim Verblassen: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Symbolgröße: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Als besucht markieren ab: %d Metern";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Besuchte Vorkommen markieren";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Transparenz besuchter Vorkommen: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Erneut prüfen nach: %d Sek.";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Besuchte Vorkommen grün einfärben";
	["CONFIG_MINIMAP_LABEL"]	= "Minikarten-Optionen";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Anzeige: %d nächste Vorkommen";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Standard-Deckkraft: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Nur für die aktuell aktive Aufspür-Fähigkeit";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "In der Nähe als Aufspür-Punkt darstellen";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Umschalten ab: %d Metern";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Aufspür-Symbol in der Nähe verwenden";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Symbol-Deckkraft: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Angezeigte Schätze & Behälter";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Wechsle Profil: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Kopie erstellen";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Neu erstellen";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Vorhandenes Profil aktivieren";
	["CONFIG_PROFILE_NEW"]	= "Profil erstellen oder überschreiben";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Neuer Profilname:";
	["CONFIG_SECTION_ABOUT"]	= "Über";
	["CONFIG_SECTION_GENERAL"]	= "Allgemein";
	["CONFIG_SECTION_HEADER_CORE"]	= "Haupteinstellungen";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Plugins";
	["CONFIG_SECTION_MINIMAP"]	= "Minikarte";
	["CONFIG_SECTION_OPEN"]	= "Schätze";
	["CONFIG_SECTION_PROFILES"]	= "Profile";
	["CONFIG_SECTION_SHARING"]	= "Teilen";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "Über Gatherer Reforged";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Archäologie-Optionen";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Allgemeine Einstellungen";
	["CONFIG_SECTION_TITLE_HERB"]	= "Kräuterkunde-Filter";
	["CONFIG_SECTION_TITLE_MINE"]	= "Bergbau-Filter";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Minikarten-Einstellungen";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Schatz-Filter";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Profile einrichten, verwalten und bearbeiten";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Synchronisations-Optionen";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Ignorierte Spieler (Blacklist)";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Empfangene Gruppen-Funde in meine Datenbank übernehmen";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Gruppen-Synchronisation aktivieren";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Teilen mit Gruppe / Schlachtzug";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Chatmeldung beim Empfang eines Gruppen-Fundes anzeigen";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Chatmeldung beim Senden eines Gruppen-Fundes anzeigen";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Empfangene Gilden-Funde in meine Datenbank übernehmen";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Gilden-Synchronisation aktivieren";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Teilen mit der Gilde";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Chatmeldung beim Empfang eines Gilden-Fundes anzeigen";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Chatmeldung beim Senden eines Gilden-Fundes anzeigen";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Chatmeldung anzeigen, wenn ein eigener Fund gespeichert wird";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Eigene Fund-Meldung";
	["CONFIG_TOOLTIP_COUNTS"]	= "Anzahl der Sammlungen anzeigen";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Entfernung zum Vorkommen anzeigen";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Beutechancen (Dropraten) anzeigen";
	["CONFIG_TOOLTIP_ENABLE"]	= "Tooltips anzeigen";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Zeitpunkt des letzten Besuchs anzeigen";
	["CONFIG_TOOLTIP_SOURCE"]	= "Quelle des Eintrags anzeigen";
	["CONFIG_WORLDMAP_ENABLE"]	= "Vorkommen auf der Weltkarte anzeigen";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Symbolgröße: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Anzeige: %d Vorkommen";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Deckkraft: %d%%";
	["ENABLE_OPEN"]	= "Schatzvorkommen anzeigen";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "Durch Todesschwinges Rückkehr wurden alte Vorkommen in der Welt neu verteilt.\n(Alte Weltdaten wurden aufgrund der geänderten Gebiete zurückgesetzt.)";
	["STORAGE_DB_VERSION_INVALID"]	= "WARNUNG!\nGatherer Reforged hat eine ungültige Datenbankversion festgestellt.\nKlicke auf „Akzeptieren“, um die Datenbank zurückzusetzen, oder auf „Ignorieren“, falls du sie manuell sichern möchtest.";
	["STORAGE_DB_VERSION_NEWER"]	= "Deine gespeicherte Datenbank stammt aus einer neueren Version von Gatherer Reforged.\nSie bleibt unangetastet, bis du das AddOn aktualisierst.";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "Entf.";
	["REPORT_COLUMN_HEADER_REGION"]	= "Gebiet";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Quelle";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Vorkommen";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "Möchtest du wirklich %d markierte Vorkommen löschen?";
	["REPORT_DELETE_MARKED"]	= "Markierte löschen";
	["REPORT_MARKED_NODES_COUNT"]	= "Markierte Vorkommen: %1";
	["REPORT_MARKING_NOTE"]	= "Hinweis: Markierte Vorkommen bleiben ausgewählt, bis du sie in der Liste anklickst, oben die Auswahl aufhebst oder das UI neu lädst.";
	["REPORT_MARK_THESE"]	= "Angezeigte markieren";
	["REPORT_SEARCH_BY_REGION"]	= "Nach Gebiet";
	["REPORT_SEARCH_BY_SOURCE"]	= "Nach Quelle";
	["REPORT_SEARCH_BY_TYPE"]	= "Nach Art";
	["REPORT_SEND_MARKED"]	= "Markierte senden";
	["REPORT_TITLE"]	= "Gatherer Reforged – Vorkommen-Bericht";
	["REPORT_UNMARK_ALL"]	= "Alle abwählen";
	["REPORT_UNMARK_THESE"]	= "Angezeigte abwählen";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Gatherer Reforged speichert deine Fundorte von Kräutern, Erzen, Schätzen sowie Archäologie-Funden und zeigt sie auf der Weltkarte, der Minikarte oder im HUD an. Fundorte lassen sich zudem automatisch mit deiner Gilde, Gruppe oder deinem Schlachtzug teilen.";
	["DESCRIPTION_LICENSE"]	= "Gatherer Reforged ist freie Open-Source-Software unter der GNU General Public License v3 (siehe gpl.txt im AddOn-Verzeichnis).";
	["LOADED_NOTIFICATION"]	= "Gatherer Reforged v%1 geladen!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Warnung:}} Deine Installation von Gatherer Reforged enthält nicht zusammenpassende Dateiversionen.\n\nBitte lösche das Verzeichnis:\n  %1\nund installiere eine frische Version von:\n  %2\nStarte World of Warcraft danach komplett neu.";
	["VERSION_MESSAGE"]	= "Gatherer Reforged v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer Reforged konnte folgende Zonen nicht zuordnen: {{%1}}\nDeine vorhandenen Daten für diese Gebiete sind {{nicht verloren}} und bleiben vollständig erhalten.";

	-- Section: Generic Strings
	["ACCEPT"]	= "Akzeptieren";
	["ALL"]	= "Alle";
	["CANCEL"]	= "Abbrechen";
	["DELETE"]	= "Löschen";
	["DONE"]	= "Fertig";
	["ENABLE"]	= "Aktivieren";
	["IGNORE"]	= "Ignorieren";
	["IGNORE_PLAYER"]	= "Spieler ignorieren";
	["NO"]	= "Nein";
	["OKAY"]	= "OK";
	["SEARCH"]	= "Suchen";
	["STOP_IGNORE"]	= "Spieler entfernen";
	["STRATA_BACKGROUND"]	= "Hintergrund";
	["STRATA_HIGH"]	= "Hoch";
	["STRATA_LOW"]	= "Niedrig";
	["STRATA_MEDIUM"]	= "Mittel";
	["YES"]	= "Ja";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Linksklick:}} Minikarten-Symbole ein-/ausblenden";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Rechtsklick:}} Vorkommen-Bericht öffnen";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Umschalt+Linksklick:}} HUD-Anzeige ein-/ausblenden";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Umschalt+Rechtsklick:}} Einstellungen öffnen";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "HUD-Anzeigeoptionen";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "HUD-Wegspur (Heat-Tracking)";
	["HUD_CONFIG_HIDING_LABEL"]	= "HUD automatisch ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "Gesamt-Deckkraft des HUDs: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Neigungswinkel: %d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Hintergrundfarbe";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "HUD-Hintergrund zur besseren Sichtbarkeit abdunkeln";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Farbe des Zentrumskreises";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Sichtfeldkreis des Spielers anzeigen";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Symbole verblassen ab: %d%% des Radius";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Farbe der Wegspur";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "Verblassen der Wegspur nach: %d Sek.";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Zurückgelegte Wegspur (Heat-Trail) anzeigen";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Wegspur niemals ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "Breite der Wegspur: %d Meter";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Im Kampf ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Beim Fliegen ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "In Gebäuden / Höhlen ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Auf einem Reittier ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "In Ruhebereichen (Gasthaus/Hauptstadt) ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "In Verstohlenheit ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Beim Schwimmen ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Bei anvisiertem feindlichen Ziel ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "Zu Fuß (nicht aufgesessen) ausblenden";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Symbolgröße: %d Pixel";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "Mindest-FPS für volle Bildwiederholrate: %d FPS";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Horizontaler Versatz: %d Pixel";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Vertikaler Versatz: %d Pixel";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Farbe für Gruppenmitglieder";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Gruppenmitglieder im HUD anzeigen";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Symbolgröße für Gruppenmitglieder: %d Pixel";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Perspektiven-Stärke: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "HUD-Gesamtradius: %d Pixel";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "Erfassungsreichweite: %d Meter";
	["HUD_CONFIG_STRATA_LABEL"]	= "HUD-Zeichenebene (Frame Strata)";
	["HUD_CONFIG_USAGE_NOTE"]	= "Hinweis: Das HUD berechnet Positionen in Echtzeit. Wenn die Wegspur (Heat-Tracking) aktiviert ist, steigt die CPU-Last bei vielen gespeicherten Wegpunkten leicht an.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD-Darstellungsoptionen";
	["HUD_DESCRIPTION"]	= "Das HUD blendet umliegende Kräuter-, Erz- und Schatzvorkommen als dreidimensionale Navigationshilfe direkt auf deinem Bildschirm ein.";
	["HUD_TITLE"]	= "Gatherer Reforged: HUD-Plugin";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "Deine CT_MapMod-Daten wurden erfolgreich importiert.";
	["IMPORT_CTMOD_NODATA"]	= "Keine CT_MapMod-Daten zum Importieren gefunden.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer Reforged";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Einstellungen ein-/ausblenden";

	-- Section: Labels
	["GENERAL_LABEL"]	= "Allgemein";
	["LABEL_CONFIG"]	= "Einstellungen";
	["LABEL_DENSITY_REPORT"]	= "Vorkommen-Suche";
	["LABEL_NOTE"]	= "Hinweis";
	["LABEL_REPORT"]	= "Vorkommen-Bericht";
	["MAP_NOTES_HIDE"]	= "Vorkommen ausblenden";
	["MAP_NOTES_SHOW"]	= "Vorkommen anzeigen";
	["NOTIFICATIONS_TITLE"]	= "Gatherer Reforged: Hinweise";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer Reforged: Vorkommen anzeigen";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "Übertragung abgebrochen.";
	["MASS_SHARING_ABORTED"]	= "Abgebrochen bei %1";
	["MASS_SHARING_ACCEPTED"]	= "Starte Übertragung...";
	["MASS_SHARING_ASKING"]	= "Anfrage gesendet...";
	["MASS_SHARING_BUSY"]	= "Spieler ist beschäftigt.";
	["MASS_SHARING_CLOSED"]	= "Berichtsfenster geschlossen.";
	["MASS_SHARING_COMPLETE"]	= "Übertragung abgeschlossen!";
	["MASS_SHARING_DONE"]	= "%1 abgeschlossen";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s möchte dir %2$d Vorkommen senden. Annehmen?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "Möchtest du %1$s Vorkommen an %2$s senden?\n(Hinweis: Der Empfänger muss das Vorkommen-Berichtsfenster geöffnet haben.)";
	["MASS_SHARING_RECEIVED_COUNT"]	= "%1 empfangen";
	["MASS_SHARING_REJECT"]	= "Abgelehnt!";
	["MASS_SHARING_SENDING"]	= "Sende Daten...";
	["MASS_SHARING_SENT"]	= "%1 gesendet";
	["MASS_SHARING_TIMEOUT"]	= "Zeitüberschreitung.";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Netherstaubpollen";
	["ORE_ADAMANTITE"]	= "Adamantit";
	["ORE_BLOODSTONE"]	= "Geringer Blutstein";
	["ORE_COPPER"]	= "Kupfer";
	["ORE_DARKIRON"]	= "Dunkeleisen";
	["ORE_FELIRON"]	= "Teufelseisen";
	["ORE_GOLD"]	= "Gold";
	["ORE_INCENDICITE"]	= "Pyrophor";
	["ORE_INDURIUM"]	= "Indurium";
	["ORE_IRON"]	= "Eisen";
	["ORE_KHORIUM"]	= "Khorium";
	["ORE_MITHRIL"]	= "Mithril";
	["ORE_NETHERCITE"]	= "Netherit";
	["ORE_OBSIDIAN"]	= "Obsidian";
	["ORE_RADAMANTITE"]	= "Reiches Adamantit";
	["ORE_RTHORIUM"]	= "Reiches Thorium";
	["ORE_SILVER"]	= "Silber";
	["ORE_THORIUM"]	= "Thorium";
	["ORE_TIN"]	= "Zinn";
	["ORE_TRUESILVER"]	= "Echtsilber";
	["TREASURE_BARREL"]	= "Fässer";
	["TREASURE_BLOODPETAL"]	= "Blutblütensprösslinge";
	["TREASURE_BOX"]	= "Kisten";
	["TREASURE_CASK"]	= "Fässlein";
	["TREASURE_CHEST"]	= "Schatztruhen";
	["TREASURE_CLAM"]	= "Riesenmuscheln";
	["TREASURE_CRATE"]	= "Vorratskisten";
	["TREASURE_FOOTLOCKER"]	= "Schließkisten";
	["TREASURE_GLOWCAP"]	= "Glühkappen";
	["TREASURE_NIGHTDRAGON"]	= "Nachtdrachenodem";
	["TREASURE_POWERCRYST"]	= "Machtkristalle";
	["TREASURE_SHELLFISHTRAP"]	= "Schalentierfallen";
	["TREASURE_SONGFLOWER"]	= "Liedblumen";
	["TREASURE_UNGOROSOIL"]	= "Erde von Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Peitscherwurzelknollen";
	["TREASURE_WINDBLOSSOM"]	= "Windblütenbeeren";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Importieren";
	["DATABASE_IMPORT_HEADER"]	= "Datenbank-Import für Vorkommen starten:";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Gebiet";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "Anzahl";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Anteil %";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Vorkommen";
	["DENSITY_SEARCH_TITLE"]	= "Suche nach Vorkommen-Dichte";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 weitere Beute-Gegenstände...";
	["NOTE_COUNT"]	= "%1-mal gesammelt";
	["NOTE_DISTANCE"]	= "Entfernung: %1 Meter";
	["NOTE_IMPORTED"]	= "Importiert";
	["NOTE_LASTVISITED"]	= "Zuletzt besucht: %1";
	["NOTE_OVERALLDROPS"]	= "Gesamte Beuteverteilung:";
	["NOTE_SOURCE"]	= "Quelle: %1";
	["NOTE_UNSKILLED"]	= "Fertigkeit zu niedrig";

	-- Section: Time
	["DAYS"]	= "Tag";
	["DAYS_ABBR"]	= "T.";
	["DAYS_ABBR_P1"]	= "T.";
	["DAYS_P1"]	= "Tage";
	["HOURS"]	= "Stunde";
	["HOURS_ABBR"]	= "Std.";
	["HOURS_ABBR_P1"]	= "Std.";
	["HOURS_P1"]	= "Stunden";
	["MINUTES"]	= "Minute";
	["MINUTES_ABBR"]	= "Min.";
	["MINUTES_ABBR_P1"]	= "Min.";
	["MINUTES_P1"]	= "Minuten";
	["SECONDS"]	= "Sekunde";
	["SECONDS_ABBR"]	= "Sek.";
	["SECONDS_ABBR_P1"]	= "Sek.";
	["SECONDS_P1"]	= "Sekunden";
	["WEEKS"]	= "Woche";
	["WEEKS_ABBR"]	= "Wo.";
	["WEEKS_ABBR_P1"]	= "Wo.";
	["WEEKS_P1"]	= "Wochen";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Archäologie";
	["TRADE_HERBALISM"]	= "Kräuterkunde";
	["TRADE_MINING"]	= "Bergbau";

}
