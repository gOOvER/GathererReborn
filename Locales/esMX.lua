if GetLocale() ~= "esMX" then return end

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

GathererLocalizations.esMX = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Se envió recolección de %1 a %2";
	["COMM_NODE_SEND_TWO"]	= "Se envió recolección de %1 a %2 y a %3";
	["COMM_RECEIVE_NODE"]	= "Se recibió recolección de %1 en %2 de %3 (%4)";
	["NODE_ADD"]	= "Se agregó recolección de %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Mostrar mensaje cargado";
	["CONFIG_ALL_FILTER_NOTE"]	= "Las opciones '%1' ignorarán los filtros actuales y forzarán la visualización de todos los nodos de esa categoría.";
	["CONFIG_ARCH_MAX_NOTES"]	= "Mostrar: los %d más cercanos";
	["CONFIG_ENABLE_HERB"]	= "Mostrar nodos de herboristería";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Solo herboristas";
	["CONFIG_ENABLE_MINE"]	= "Mostrar nodos de minería";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Solo mineros";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Solo si se rastrea";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Opciones de botones del minimapa";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Opciones de rastreo del minimapa";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Opciones del Mapa del mundo";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Opciones de rastreo del Mapa del mundo";
	["CONFIG_HERB_FILTER_LABEL"]	= "Nodos de herboristería por rastrear";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "¿Estás seguro de que deseas borrar todos los datos compartidos de este jugador de tu base de datos? Esta operación NO SE PUEDE deshacer y eliminará hasta %d nodo(s) de tu base de datos de Gatherer.";
	["CONFIG_IGNORE_PURGE_DONE"]	= "Se eliminaron permanentemente %d nodo(s) de tu base de datos de Gatherer.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "¿Deseas borrar todos los nodos compartidos por este jugador?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Nodos de minerales por rastrear";
	["CONFIG_MINIICON_ANGLE"]	= "Ángulo del botón: %dº";
	["CONFIG_MINIICON_DISTANCE"]	= "Distancia: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Mostrar botón en el minimapa";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Opciones adicionales del minimapa";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Mostrar nodos anónimos";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Opacidad de anón.: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Teñir nodos anónimos de rojo";
	["CONFIG_MINIMAP_DISTANCE"]	= "Distancia: %d metros";
	["CONFIG_MINIMAP_ENABLE"]	= "Mostrar nodos en el minimapa";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Desaparecer a: %d metros";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Desvanecer mininotas";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Distancia de desvanecimiento: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Tamaño de los íconos: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Revisar a: %d metros";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Marcar nodos como revisados";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Desvanecimiento de revisión: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Volver a revisar: %d seg.";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Teñir de verde durante la revisión";
	["CONFIG_MINIMAP_LABEL"]	= "Opciones del minimapa";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Mostrar: los %d más cercanos";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Opacidad predeterminada: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Solo para la habilidad de rastreo activa";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Convertir al ícono de rastreo al estar cerca";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Rastrear a: %d metros";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Activar la función de habilidad de rastreo";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Opacidad de íconos: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Nodos de tesoros por rastrear";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Cambio de perfil: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Crear copia";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Crear nuevo";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Activar un perfil actual";
	["CONFIG_PROFILE_NEW"]	= "Crear o reemplazar un perfil";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Nombre del nuevo perfil:";
	["CONFIG_SECTION_ABOUT"]	= "Acerca de";
	["CONFIG_SECTION_GENERAL"]	= "General";
	["CONFIG_SECTION_HEADER_CORE"]	= "Opciones principales";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Complementos";
	["CONFIG_SECTION_MINIMAP"]	= "Minimapa";
	["CONFIG_SECTION_OPEN"]	= "Tesoros";
	["CONFIG_SECTION_PROFILES"]	= "Perfiles";
	["CONFIG_SECTION_SHARING"]	= "Compartir";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "Acerca de Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Opciones de arqueología";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Opciones principales de Gatherer";
	["CONFIG_SECTION_TITLE_HERB"]	= "Opciones de filtros de herboristería";
	["CONFIG_SECTION_TITLE_MINE"]	= "Opciones de filtros de minería";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Opciones del minimapa de Gatherer";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Opciones del filtro de tesoros";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Configurar y editar perfiles";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Opciones de sincronización";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Lista negra de uso compartido";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Agregar recolecciones recibidas del grupo a mi base de datos";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Activar sincronización con grupo";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Compartir con grupo o banda";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Mostrar un mensaje al recibir una recolección del grupo";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Mostrar un mensaje al enviar una recolección al grupo";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Agregar recolecciones recibidas de la hermandad a mi base de datos";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Activar sincronización con hermandad";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Compartir con hermandad";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Mostrar un mensaje al recibir una recolección de la hermandad";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Mostrar un mensaje al enviar una recolección a la hermandad";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Mostrar un mensaje al agregar una recolección propia a la base de datos";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Alerta personal";
	["CONFIG_TOOLTIP_COUNTS"]	= "Mostrar conteos de recolección";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Mostrar distancia al nodo";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Mostrar frecuencias de apariciones";
	["CONFIG_TOOLTIP_ENABLE"]	= "Mostrar información sobre herramientas";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Mostrar última visita";
	["CONFIG_TOOLTIP_SOURCE"]	= "Mostrar fuente de la nota";
	["CONFIG_WORLDMAP_ENABLE"]	= "Mostrar notas en el Mapa del mundo";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Tamaño de los íconos: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Mostrar: %d notas";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Opacidad: %d%%";
	["ENABLE_OPEN"]	= "Mostrar nodos de tesoros";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "Alamuerte, en su calidad de supervillano malvado, quemó todas las hierbas, derritió todos los depósitos de minerales y destruyó todos los cofres. Ahora, deben volver a crecer, cristalizarse o esconderse, y seguramente lo harán en nuevas ubicaciones. ¡Hay que encontrarlos!\n(Los datos anteriores se eliminaron, debido a los cambios drásticos en la geografía).";
	["STORAGE_DB_VERSION_INVALID"]	= "ADVERTENCIA:\nGatherer detectó que la versión de tu base de datos no es válida. Presiona Aceptar para limpiarla o selecciona Ignorar si deseas intentar repararla manualmente.";
	["STORAGE_DB_VERSION_NEWER"]	= "Tu base de datos de Gatherer guardada es demasiado nueva. Tu base de datos actual se ha apartado hasta que actualices Gatherer.";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "Dist";
	["REPORT_COLUMN_HEADER_REGION"]	= "Región";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Origen";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Tipo";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "¿Quieres eliminar %d nodos de Gatherer?";
	["REPORT_DELETE_MARKED"]	= "Eliminar marcados";
	["REPORT_MARKED_NODES_COUNT"]	= "Nodos marcados: %1";
	["REPORT_MARKING_NOTE"]	= "Cuando se marca nodos, permanecerán marcados hasta que anule las marcas haciendo clic en el elemento de línea en el informe, usando los botones de Numark encima o volver a cargar el juego.";
	["REPORT_MARK_THESE"]	= "Marcar esto";
	["REPORT_SEARCH_BY_REGION"]	= "Por región";
	["REPORT_SEARCH_BY_SOURCE"]	= "Por fuente";
	["REPORT_SEARCH_BY_TYPE"]	= "Por tipo";
	["REPORT_SEND_MARKED"]	= "Enviar marcados.";
	["REPORT_TITLE"]	= "Informe Recolectado";
	["REPORT_UNMARK_ALL"]	= "Desmarcar todo";
	["REPORT_UNMARK_THESE"]	= "Desmarcar esto";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Este es un accesorio que te permite rastrear los nodos de las profesiones de herboristeria y mineria.  'Lordnica'";
	["DESCRIPTION_LICENSE"]	= "Gatherer Reforged is open source software and is licensed under the GNU General Public License v3. Please see gpl.txt, included with this AddOn, for the full license.";
	["LOADED_NOTIFICATION"]	= "Gatherer v%1 -- Loaded!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Warning:}} Your Gatherer installation appears to have mismatching file versions.\n\nPlease make sure you delete the old:\n  %1\ndirectory, reinstall a fresh copy from:\n  %2\nand restart WoW completely before reporting any bugs.\n\nThanks,\n  The Gatherer Dev Team";
	["VERSION_MESSAGE"]	= "This is Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer was unable to identify the following zones: {{%1}}\nIf these are new zones, then this is not a problem, and you can continue as normal.\nIf these are not new zones, then remain calm as {{your data IS NOT LOST!}}  Your data for these zones is still intact, but you will need to update Gatherer in order to access it.  Until then you can continue as normal and any new data you collect will be merged with your old data once you upgrade.  \n\n{{Please upgrade Gatherer when convenient.}}";

	-- Section: Generic Strings
	["ACCEPT"]	= "Aceptar";
	["ALL"]	= "Todos";
	["CANCEL"]	= "Cancelar";
	["DELETE"]	= "Eliminar";
	["DONE"]	= "Hecho";
	["ENABLE"]	= "Habilitar";
	["IGNORE"]	= "Ignorar";
	["IGNORE_PLAYER"]	= "Ignorar jugador";
	["NO"]	= "No";
	["OKAY"]	= "Aceptar";
	["SEARCH"]	= "Buscar";
	["STOP_IGNORE"]	= "Eliminar jugador";
	["STRATA_BACKGROUND"]	= "Fondo";
	["STRATA_HIGH"]	= "Alto";
	["STRATA_LOW"]	= "Bajo";
	["STRATA_MEDIUM"]	= "Medio";
	["YES"]	= "Si";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Click}} to toggle display of nodes.";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Right-Click}} to view the gather report.";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift-Click}} to toggle HUD display.";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift-Right-Click}} to edit the configuration.";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "Opciones de HUD";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "Modo de rastreo HUD";
	["HUD_CONFIG_HIDING_LABEL"]	= "Opciones de ocultar HUD";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "HUD Alpha: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Angulo %d°";
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

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "Your CT_MapMod data has been imported.";
	["IMPORT_CTMOD_NODATA"]	= "No CT_MapMod data found to import.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Abre la ventana de opciones";

	-- Section: Labels
	["GENERAL_LABEL"]	= "General";
	["LABEL_CONFIG"]	= "Config";
	["LABEL_DENSITY_REPORT"]	= "Node Search";
	["LABEL_NOTE"]	= "Note";
	["LABEL_REPORT"]	= "Gatherables Report";
	["MAP_NOTES_HIDE"]	= "Hide Items";
	["MAP_NOTES_SHOW"]	= "Show Items";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: Warnings";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer: Show Items";

	-- Section: Mass Sharing Messages
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

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Polen de polvo abisal";
	["ORE_ADAMANTITE"]	= "Adamantita";
	["ORE_BLOODSTONE"]	= "Sangrita inferior";
	["ORE_COPPER"]	= "Cobre";
	["ORE_DARKIRON"]	= "Hierro negro";
	["ORE_FELIRON"]	= "Hierro vil";
	["ORE_GOLD"]	= "Oro";
	["ORE_INCENDICITE"]	= "Incendicita";
	["ORE_INDURIUM"]	= "Indurio";
	["ORE_IRON"]	= "Hierro";
	["ORE_KHORIUM"]	= "Korio";
	["ORE_MITHRIL"]	= "Mithril";
	["ORE_NETHERCITE"]	= "Abisalita";
	["ORE_OBSIDIAN"]	= "Obsidiana";
	["ORE_RADAMANTITE"]	= "Deposito rico en adamantita";
	["ORE_RTHORIUM"]	= "Deposito rico en torio";
	["ORE_SILVER"]	= "Plata";
	["ORE_THORIUM"]	= "Torio";
	["ORE_TIN"]	= "Estaño";
	["ORE_TRUESILVER"]	= "Veraplata";
	["TREASURE_BARREL"]	= "Barriles";
	["TREASURE_BLOODPETAL"]	= "Brote pétalo de sangre";
	["TREASURE_BOX"]	= "Cajas";
	["TREASURE_CASK"]	= "Barriles";
	["TREASURE_CHEST"]	= "Cofres del tesoro";
	["TREASURE_CLAM"]	= "Almejas gigantes";
	["TREASURE_CRATE"]	= "Cajones";
	["TREASURE_FOOTLOCKER"]	= "Cajas personales";
	["TREASURE_GLOWCAP"]	= "Fluochampiñones";
	["TREASURE_NIGHTDRAGON"]	= "Aliento de Dragón nocturno";
	["TREASURE_POWERCRYST"]	= "Cristales de poder";
	["TREASURE_SHELLFISHTRAP"]	= "Trampas de marisco";
	["TREASURE_SONGFLOWER"]	= "Melodías";
	["TREASURE_UNGOROSOIL"]	= "Tierra de Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Tubérculos de blancoria";
	["TREASURE_WINDBLOSSOM"]	= "Bayas de flor de viento";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Importar";
	["DATABASE_IMPORT_HEADER"]	= "Realizar importación de base de datos de nodos:";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Ubicación";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# Nodos";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Porcentaje";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Tipo";
	["DENSITY_SEARCH_TITLE"]	= "Búsqueda de densidad de nodos";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 aparición(es) adicional(es)";
	["NOTE_COUNT"]	= "Recogido %1 veces";
	["NOTE_DISTANCE"]	= "Distancia: %1 metros";
	["NOTE_IMPORTED"]	= "Recolecciones Importadas";
	["NOTE_LASTVISITED"]	= "Ultima visita: %1";
	["NOTE_OVERALLDROPS"]	= "Frecuencia total de apariciones:";
	["NOTE_SOURCE"]	= "Fuente: %1";
	["NOTE_UNSKILLED"]	= "Recogido Sin Habilidad";

	-- Section: Time
	["DAYS"]	= "Dia";
	["DAYS_ABBR"]	= "Dia";
	["DAYS_ABBR_P1"]	= "Dias";
	["DAYS_P1"]	= "Dias";
	["HOURS"]	= "Hora";
	["HOURS_ABBR"]	= "Hr";
	["HOURS_ABBR_P1"]	= "Hrs";
	["HOURS_P1"]	= "Horas";
	["MINUTES"]	= "Minuto";
	["MINUTES_ABBR"]	= "Min";
	["MINUTES_ABBR_P1"]	= "Mins";
	["MINUTES_P1"]	= "Minutos";
	["SECONDS"]	= "Segundo";
	["SECONDS_ABBR"]	= "Sec";
	["SECONDS_ABBR_P1"]	= "Sec";
	["SECONDS_P1"]	= "Segundos";
	["WEEKS"]	= "Semana";
	["WEEKS_ABBR"]	= "Semana";
	["WEEKS_ABBR_P1"]	= "Semanas";
	["WEEKS_P1"]	= "Semanas";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Arqueología";
	["TRADE_HERBALISM"]	= "Herboristería";
	["TRADE_MINING"]	= "Mineria";

}
