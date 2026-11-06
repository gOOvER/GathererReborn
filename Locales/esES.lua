if GetLocale() ~= "esES" then return end

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

GathererLocalizations.esES = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Se envió recolección de %1 a %2";
	["COMM_NODE_SEND_TWO"]	= "Se envió recolección de %1 a %2 y %3";
	["COMM_RECEIVE_NODE"]	= "Se recibió recolección de %1 en %2 de %3 (%4)";
	["NODE_ADD"]	= "Se agregó recolección de %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Mostrar Mensaje Cargado";
	["CONFIG_ALL_FILTER_NOTE"]	= "La opción '1%' hace que el filtro actual sea ignorado y fuerza que todos los nodos en esa categoría sean mostrados.";
	["CONFIG_ARCH_MAX_NOTES"]	= "Mostrar: %d más cercano.";
	["CONFIG_ENABLE_HERB"]	= "Mostrar nodos de Herbalismo.";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Solo Herboristas";
	["CONFIG_ENABLE_MINE"]	= "Mostrar nodos de Minería";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Solo mineros";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Solo si se está rastreando";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Opciones del botón del minimapa";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Opciones del seguimiento del minimapa";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Opciones del mapa del mundo";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Opciones de seguimiento del mapa del mundo";
	["CONFIG_HERB_FILTER_LABEL"]	= "Nodos de herboristería a rastrear";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Estás seguro que quieres purgar todos los datos compartidos de este jugador en tu base de datos? Esta operación NO ES REVERSIBLE y eliminará %d nodo(s) de tu base de datos Gatherer.";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d nodo(s) han sido eliminados permanentemente de tu base de datos Gatherer.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Deseas eliminar todos los nodos que han sido compartidos por este jugador?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Nodos de mineral a rastrear";
	["CONFIG_MINIICON_ANGLE"]	= "Ángulo de botón: %d°";
	["CONFIG_MINIICON_DISTANCE"]	= "Distancia: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Mostrar el botón del minimapa";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Minimapa adicional";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Mostrar nodos anónimos";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Opacidad Anon: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Mostrar nodos anónimos en rojo";
	["CONFIG_MINIMAP_DISTANCE"]	= "Distancia: %d yards";
	["CONFIG_MINIMAP_ENABLE"]	= "Mostrar notas en minimapa";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Ocultar a: %d yardas";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Ocultar mini-notas";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Distancia the apagar gradualmente: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Tamaño del icono: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Inspeccionar a: %d yardas";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Marcar nodos como inspeccionados.";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Ocultar gradualmente inspeccionados: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Re-inspeccionar: %d segundos";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Matizar verde mientras se está inspeccionando";
	["CONFIG_MINIMAP_LABEL"]	= "Opciones Minimapa";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Mostrar: %d más cercano";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Opacidad por defecto: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Solo para la habilidad de rastreo activa";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Convertir en icono de seguimiento mientras esté cerrado";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Seguir a: %d yardas";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Activar la función de habilidad de rastreo";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Opacidad del icono: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Nodos de tesoros a rastrear";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Cambiando perfil: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Crear copia";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Crear nuevo";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Activar el perfil actual";
	["CONFIG_PROFILE_NEW"]	= "Crear o reemplazar un perfil";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Nuevo nombre de perfil";
	["CONFIG_SECTION_ABOUT"]	= "Acerca de";
	["CONFIG_SECTION_GENERAL"]	= "General";
	["CONFIG_SECTION_HEADER_CORE"]	= "Opciones principales";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Plugins";
	["CONFIG_SECTION_MINIMAP"]	= "Minimapa";
	["CONFIG_SECTION_OPEN"]	= "Tesoros";
	["CONFIG_SECTION_PROFILES"]	= "Perfiles";
	["CONFIG_SECTION_SHARING"]	= "Comopartir";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "Acerca de Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Opciones de arqueología";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Opciones principales de Gatherer";
	["CONFIG_SECTION_TITLE_HERB"]	= "Opciones de filtros de Herboristería";
	["CONFIG_SECTION_TITLE_MINE"]	= "Opciones de filtros de Minería";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Opciones del minimapa de gatherer";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Opciones del filtro de tesoros";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Configurar y editar perfiles";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Opciones de sincronización";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Lista negra de uso compartido";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Agregar recolecciones recibidas del grupo a mi base de datos";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Habilitar sincronización de grupo";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Compartir con grupo o banda";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Mostrar un mensaje al recibir una recolección de grupo";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Mostrar un mensaje al enviar una recolección al grupo";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Agregar recolecciones enviadas a la hermandad a mi base de datos";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Habilitar sincronización con la hermandad";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Compartir con hermandad";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Mostrar un mensaje al recibir una recolección de la hermandad";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Mostrar un mensaje cuando se comparta una recolección con la hermandad";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Mostrar un mensaje cuando se añada tu propia recolección a tu base de datos";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Alerta personal";
	["CONFIG_TOOLTIP_COUNTS"]	= "Mostrar conteos de recolección";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Mostrar distancia al nodo";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Mostrar porcentajes de caida";
	["CONFIG_TOOLTIP_ENABLE"]	= "Mostrar información sobre herramientas";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Mostrar ultima vez visto";
	["CONFIG_TOOLTIP_SOURCE"]	= "Mostrar fuente de la nota";
	["CONFIG_WORLDMAP_ENABLE"]	= "Mostrar notas en el mapa del mundo";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Tamaño del icono: %d";
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
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Fuente";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Tipo";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "Seguro que quieres borrar %d nodos de recolección?";
	["REPORT_DELETE_MARKED"]	= "Eliminar los marcados";
	["REPORT_MARKED_NODES_COUNT"]	= "Nodos marcados: &1";
	["REPORT_MARKING_NOTE"]	= "Nota: Cuando marcas nodos, estos permanecerán marcados hasta que los desmarques ya sea haciendo click en la linea del objeto, usando el botón de desmarcar o recargando el juego.";
	["REPORT_MARK_THESE"]	= "Marcar esos";
	["REPORT_SEARCH_BY_REGION"]	= "Por región";
	["REPORT_SEARCH_BY_SOURCE"]	= "Por fuente";
	["REPORT_SEARCH_BY_TYPE"]	= "Por tipo";
	["REPORT_SEND_MARKED"]	= "Enviar marcados";
	["REPORT_TITLE"]	= "informe de la recolección";
	["REPORT_UNMARK_ALL"]	= "Desmarcar todos";
	["REPORT_UNMARK_THESE"]	= "Desmarcar esos";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Gatherer es un addon que te permite recordar las zonas de recolección y verlas ya sea en todo el mapa del mundo o en tu minimapa. Tambien te permite compartir tus zonas de recolección con tu hermandad, raids o amigos.";
	["DESCRIPTION_LICENSE"]	= "Gatherer es un software de código abierto y está licenciado bajo la liencia pública GNU v2. Por favor revisa el archivo gpl.txt incluido en el AddOn para leer la licencia completa.";
	["LOADED_NOTIFICATION"]	= "Gatherer v%1 -- Cargado!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Atencion:}} Parece que tu instalación de Gatherer tiene un problema de versiones.\n\nPor favor asegúrate de que has borrado la instalación anterior en el directorio:\n %1\ny reinstala una copia actualizada desde:\n %2\nRecuerda reiniciar WoW completamente antes de enviar ningún problema.\n\nGracias,\n  El equipo de desarrolladores de Gatherer";
	["VERSION_MESSAGE"]	= "Versión de Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer ha sido incapaz de identificar las siguentes zonas: {{%1}}\nSi son nuevas zonas, esto no es un problema y puedes seguir jugando de forma normal.\nSi no son nuevas zonas, ¡mantén la calma! {{tus datos NO están perdidos!}}  Los datos de esas zonas continúan intactos, pero deberás actualizar Gatherer para poder acceder a ellos. Hasta entonces puedes continuar de forma normal y los nuevos datos que vayas recolectando serán unidos con tus viejos datos una vez actualizado.\n\n{{Por favor actualiza Gatherer en cuanto sea posible.}}";

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
	["OKAY"]	= "Okay";
	["SEARCH"]	= "Buscar";
	["STOP_IGNORE"]	= "Eliminar jugador";
	["STRATA_BACKGROUND"]	= "Fondo";
	["STRATA_HIGH"]	= "Alto";
	["STRATA_LOW"]	= "Bajo";
	["STRATA_MEDIUM"]	= "Medio";
	["YES"]	= "Si";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Click}} para intercambiar los nodos a mostrar.";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Click-Derecho}} para ver el informe de la recolección.";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift-Click}} para mostrar HUD.";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift-Click-Derecho}} para editar la configuración.";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "Opciones de pantalla de HUB";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "Modo de seguimiento del movimiento.";
	["HUD_CONFIG_HIDING_LABEL"]	= "Opciones de ocultación de HUD";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "Alfa global de HUD: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Angulo de visión: %dº";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Color de fondo";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "Oscurecer HUD para mejorar la visibilidad";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Color central";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Habilitar circulo de campo de visión del jugador";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Las notas desaparecen a: %d%% de radio";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Color cálido";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "Recarga el rastreamiento cada: %d segundos";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Mostrar segimiento de viaje (cálido)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Nunca recargar";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "longitud de la cola de seguimiento: %d yardas";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Ocultar mientras se está en combate";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Ocultar mientras se esta volando";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "Ocultar en interiores";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Ocultar mientras se esta en monturas";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "Ocultar mientras se descansa";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "Ocultar en modo furtivo";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Ocultar mientras se está nadando";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Ocultar al apuntar a un objetivo";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "Ocultar mientras NO se esta en una montura";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Tamaño de la nota: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "velocidad de fotoframas mínimo para dibujar en cada fotograma: %dfps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Compensación horizontal: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Compensación vertical: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Color de los miembros del grupo";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Mostrar otros miembros del grupo";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Tamaño del icono del grupo: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Nivel de perspectiva: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "Radio general de HUD: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "Rango de notas: %d yards";
	["HUD_CONFIG_STRATA_LABEL"]	= "HUD Strata (Nivel del dibujo)";
	["HUD_CONFIG_USAGE_NOTE"]	= "El uso de HUD consumirá fotogramas de tus fotogramas por segundo, e incluso consumirá mas fotogramas si habilitas el \"calor\" el modo en el que se continua el seguimiento de tu movimiento pasado.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "Opciones de visivilidad de HUD";
	["HUD_DESCRIPTION"]	= "El HUD es un componente de navegación que te permite el seguimiento de la localización de tu recolección en la pantalla.";
	["HUD_TITLE"]	= "Gatherer Heads-Up Display Plugin";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "Los datos de CT_MapMod han sido importados.";
	["IMPORT_CTMOD_NODATA"]	= "No ha sido posible encontrar los datos de CT_MapMod a importar.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Recopilador";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Activa la Ventana de Opciones";

	-- Section: Labels
	["GENERAL_LABEL"]	= "General";
	["LABEL_CONFIG"]	= "Configuración";
	["LABEL_DENSITY_REPORT"]	= "Búsqueda de nodo";
	["LABEL_NOTE"]	= "Nota";
	["LABEL_REPORT"]	= "Informe";
	["MAP_NOTES_HIDE"]	= "Ocultar objetos";
	["MAP_NOTES_SHOW"]	= "Mostrar Objetos";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: Avisos";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer: mostrar objetos";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "Subida cancelada";
	["MASS_SHARING_ABORTED"]	= "Cancelada a %1";
	["MASS_SHARING_ACCEPTED"]	= "Comenzando...";
	["MASS_SHARING_ASKING"]	= "Preguntando...";
	["MASS_SHARING_BUSY"]	= "Usuario ocupado.";
	["MASS_SHARING_CLOSED"]	= "Está cerrado.";
	["MASS_SHARING_COMPLETE"]	= "Éxito!";
	["MASS_SHARING_DONE"]	= "Completado %1";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s desea enviarte %2$d nodos de recolección. ¿Aceptas?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "¿Deseas enviarle %1$s nodos a %2$s?\n(Recuerda, deben tener la ventana de informe de recolecciones abierta.)";
	["MASS_SHARING_RECEIVED_COUNT"]	= "Recivido %1";
	["MASS_SHARING_REJECT"]	= "Rechazado!";
	["MASS_SHARING_SENDING"]	= "Enviando...";
	["MASS_SHARING_SENT"]	= "Enviado %1";
	["MASS_SHARING_TIMEOUT"]	= "Tiempo expirado.";

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
	["ORE_MITHRIL"]	= "Mitril";
	["ORE_NETHERCITE"]	= "Abisalita";
	["ORE_OBSIDIAN"]	= "Obsidiana";
	["ORE_RADAMANTITE"]	= "Adamantita enriquecida";
	["ORE_RTHORIUM"]	= "Torio enriquecido";
	["ORE_SILVER"]	= "Plata";
	["ORE_THORIUM"]	= "Torio";
	["ORE_TIN"]	= "Estaño";
	["ORE_TRUESILVER"]	= "Veraplata";
	["TREASURE_BARREL"]	= "Barriles";
	["TREASURE_BLOODPETAL"]	= "Brotes pétalo de sangre";
	["TREASURE_BOX"]	= "Cajas";
	["TREASURE_CASK"]	= "Barriles";
	["TREASURE_CHEST"]	= "Cofres del tesoro";
	["TREASURE_CLAM"]	= "Almejas gigantes";
	["TREASURE_CRATE"]	= "Cajones";
	["TREASURE_FOOTLOCKER"]	= "Cajas personales";
	["TREASURE_GLOWCAP"]	= "Fluochampiñones";
	["TREASURE_NIGHTDRAGON"]	= "Alientos de Dragón nocturno";
	["TREASURE_POWERCRYST"]	= "Cristales de poder";
	["TREASURE_SHELLFISHTRAP"]	= "Trampas de marisco";
	["TREASURE_SONGFLOWER"]	= "Melodías";
	["TREASURE_UNGOROSOIL"]	= "Tierra de Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Tubérculos de blancoria";
	["TREASURE_WINDBLOSSOM"]	= "Frutos de la flor del viento";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Importar";
	["DATABASE_IMPORT_HEADER"]	= "Importar base de datos de nodos";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Localización";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# Nodos";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Por ciento";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Tipo";
	["DENSITY_SEARCH_TITLE"]	= "Búsqueda por densidad de nodos";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 aparición(es) adicional(es)";
	["NOTE_COUNT"]	= "Recogido %1 veces";
	["NOTE_DISTANCE"]	= "Distancia: %1 metros";
	["NOTE_IMPORTED"]	= "Recogido Importado";
	["NOTE_LASTVISITED"]	= "Última visita: %1";
	["NOTE_OVERALLDROPS"]	= "Frecuencia general de apariciones:";
	["NOTE_SOURCE"]	= "Fuente: %1";
	["NOTE_UNSKILLED"]	= "Recogido Sin Habilidad";

	-- Section: Time
	["DAYS"]	= "Day";
	["DAYS_ABBR"]	= "Day";
	["DAYS_ABBR_P1"]	= "Day";
	["DAYS_P1"]	= "Días";
	["HOURS"]	= "Day";
	["HOURS_ABBR"]	= "Day";
	["HOURS_ABBR_P1"]	= "Hrs";
	["HOURS_P1"]	= "Horas";
	["MINUTES"]	= "Minuto";
	["MINUTES_ABBR"]	= "Min";
	["MINUTES_ABBR_P1"]	= "Min";
	["MINUTES_P1"]	= "Minutos";
	["SECONDS"]	= "Segundo";
	["SECONDS_ABBR"]	= "Seg";
	["SECONDS_ABBR_P1"]	= "Seg";
	["SECONDS_P1"]	= "Segundos";
	["WEEKS"]	= "Semana";
	["WEEKS_ABBR"]	= "Sem";
	["WEEKS_ABBR_P1"]	= "Sems";
	["WEEKS_P1"]	= "Semanas";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Arqueología";
	["TRADE_HERBALISM"]	= "Herboristería";
	["TRADE_MINING"]	= "Minería";

	-- Section: Fallback / Synchronized Keys
	["GUILD"]	= "guild";
	["GROUP"]	= "group";
	["RAID"]	= "raid";
	["PARTY"]	= "party";
	["WHISPER"]	= "whisper";
	["PLAYER"]	= "Player";
	["ADD_IGNORE_LABEL"]	= "Add player to sharing ignore list:";
	["DISABLE"]	= "Disable";
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

}
