if GetLocale() ~= "itIT" then return end

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

GathererLocalizations.itIT = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Inviato nodo di %1 a %2";
	["COMM_NODE_SEND_TWO"]	= "Inviato nodo di %1 a %2 e %3";
	["COMM_RECEIVE_NODE"]	= "Ricevuto nodo di %1 a %2 da %3 (%4)";
	["NODE_ADD"]	= "Aggiunto nodo di %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Mostra Messaggio Caricato";
	["CONFIG_ALL_FILTER_NOTE"]	= "L'opzione %1 fa in modo che i filtri attuali siano ignorati o obbliga a essere mostrati tutti i nodi in quella categoria.";
	["CONFIG_ARCH_MAX_NOTES"]	= "Mostra: %d più vicino";
	["CONFIG_ENABLE_HERB"]	= "Mostra nodi Erbalismo";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Solo per Erboristi";
	["CONFIG_ENABLE_MINE"]	= "Mostra i punti d'estrazione";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Solo per Estrattori";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Solo se tracciati";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Opzioni Pulsante Minimappa";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Opzioni tracciamento minimappa";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Opzioni Mappa del Mondo";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Opzioni Traccia Mappa del Mondo";
	["CONFIG_HERB_FILTER_LABEL"]	= "Nodi erbe da tracciare";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Sei sicuro di voler eliminare tutte le condivisioni dal tuo database di quel giocatore? Questa operazione NON può essere fermata e eliminerà i nodi %d dal tuo database.";
	["CONFIG_IGNORE_PURGE_DONE"]	= "I nodi di %d sono stati rimossi completamente dal tuo database Gatherer.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Desideri rimuovere tutti i nodi che sono stati condivisi da questo giocatore?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Nodi minerali da tracciare";
	["CONFIG_MINIICON_ANGLE"]	= "Angolo del pulsante: %d°";
	["CONFIG_MINIICON_DISTANCE"]	= "Distanza: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Mostra pulsante Minimappa";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Minimappa Aggiuntiva";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Mostra nodi anonimi";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Opacità: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Tingi i nodi anonimi di rosso";
	["CONFIG_MINIMAP_DISTANCE"]	= "Distanza: %d iarde";
	["CONFIG_MINIMAP_ENABLE"]	= "Mostra le note sulla Minimappa";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Scompari a: %d iarde";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Fai scomparire le mini note";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Distanza trasparenza: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Gradenzza Icona: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Ispeziona a: %d iarde";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Evidenzia i nodi come ispezionati";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Trasparenza ispezionati: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Ricontrolla: %d sec.";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Tingi di verde mentre ispezioni";
	["CONFIG_MINIMAP_LABEL"]	= "Opzioni Minimappa";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Mostra: %d più vicina";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Opacità predefinita: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Solo per le abilità traccianti attive";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Converti ad icona tracciante quando chiudi";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Traccia a: %d iarde";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Attiva funzione tracciamento";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Opacità icona: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Nodi del tesoro da tracciare";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Aggiornamento profilo: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Crea una copia";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Crea nuovo";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Attiva il profilo corrente";
	["CONFIG_PROFILE_NEW"]	= "Crea o rimpiazza profilo";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Nuovo nome profilo:";
	["CONFIG_SECTION_ABOUT"]	= "Informazioni";
	["CONFIG_SECTION_GENERAL"]	= "Generali";
	["CONFIG_SECTION_HEADER_CORE"]	= "Opzioni Centrali";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Plugin";
	["CONFIG_SECTION_MINIMAP"]	= "Minimappa";
	["CONFIG_SECTION_OPEN"]	= "Tesoro";
	["CONFIG_SECTION_PROFILES"]	= "Profili";
	["CONFIG_SECTION_SHARING"]	= "Condivisione";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "Su Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Opzioni Archeologia";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Opzioni Principali Gatherer";
	["CONFIG_SECTION_TITLE_HERB"]	= "Opzioni Filtro Erbalismo";
	["CONFIG_SECTION_TITLE_MINE"]	= "Opzioni Filtro Estrazione";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Opzioni minimappa Gatherer";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Opzioni Filtro Tesori";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Imposta, configura e modifica profili";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Opzioni sincronizzazione";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Lista nera condivioni";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Aggiungi il gruppo di raccolta ricevuto al database";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Attiva la sincronizzazione di gruppo";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Condivisione Incursione/Gruppo";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Mostra un messaggio quando ricevi una raccolta dal gruppo";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Mostra un messaggio quando invii una raccolta al gruppo";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Aggiungi le raccolte di gilda al database";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Attiva sincronizzazione di gilda";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Condivisione di Gilda";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Mostra un messaggio quando ricevi una raccolta dalla gilda";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Mostra un messaggio quando invii una raccolta alla gilda";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Mostra un messaggio quando aggiungi la tua raccolta al DB";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Avviso Personale";
	["CONFIG_TOOLTIP_COUNTS"]	= "Mostra il numero delle raccolte";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Mostra la distanza dei nodi";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Mostra il numero di drop";
	["CONFIG_TOOLTIP_ENABLE"]	= "Mostra suggerimenti";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Mostra il tempo dell'ultima raccolta";
	["CONFIG_TOOLTIP_SOURCE"]	= "Mostra la fonte della nota";
	["CONFIG_WORLDMAP_ENABLE"]	= "Mostra le note sulla Mappa del Mondo";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Grandezza Icona: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Mostra: note %d";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Opacità: %d%%";
	["ENABLE_OPEN"]	= "Mostra i nodi dei tesori";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "Essendo il cattivo e crudele che è, il ritorno di Alamorte ha bruciato tutte le erbe, fuso i minerali e obliterato tutti i tesori. Ora devono ricrescere, essere ricristallizati o nascosti dai pirati e sono probabilmente in nuovi luoghi. Caccia al Tesoro!!! (I vecchi deti sono stati cancellati a causa dei cambiamenti geografici globali).";
	["STORAGE_DB_VERSION_INVALID"]	= "ATTENZIONE!!!\nGatherer ha individuato una versione errata del tuo database. Per favore, premi Accetta per eliminare il database, o seleziona ignora se vuoi cercare di riparare manualmente il database.";
	["STORAGE_DB_VERSION_NEWER"]	= "Il database salvato di Gatherer è troppo recente. Il tuo database attuale è stato messo da parte fino a quando non aggiornerai Gatherer.";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "Dist";
	["REPORT_COLUMN_HEADER_REGION"]	= "Regione";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Fonte";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Tipo";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "Vuoi eliminare i nodi %d di Gatherer?";
	["REPORT_DELETE_MARKED"]	= "Elimina selezionati";
	["REPORT_MARKED_NODES_COUNT"]	= "Nodi selezionati: %1";
	["REPORT_MARKING_NOTE"]	= "Nota: Quando selezioni i nodi, rimarranno selezionati fino a quando non li deselezionerai cliccando l'oggetti nel rapporto, oppure usando i pulsanti di Deselezione in alto o ricaricando il gioco.";
	["REPORT_MARK_THESE"]	= "Seleziona questi";
	["REPORT_SEARCH_BY_REGION"]	= "Per Regione";
	["REPORT_SEARCH_BY_SOURCE"]	= "Per Fonte";
	["REPORT_SEARCH_BY_TYPE"]	= "Per Tipo";
	["REPORT_SEND_MARKED"]	= "Invia selezionati";
	["REPORT_TITLE"]	= "Rapporto Raccolti";
	["REPORT_UNMARK_ALL"]	= "Deseleziona tutti";
	["REPORT_UNMARK_THESE"]	= "Deseleziona questi";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Gatherer è un addon che ti consente di memorizzare i luoghi di raccolta e vederli tutti o alcuni sulla mappa principale, la tua minimappa, o su un'interfaccia a schermo. Consente inoltre di condividere le scoperte con la tua gilda, raid o i tuoi amici.";
	["DESCRIPTION_LICENSE"]	= "Gatherer è un sofrware libero ed è licenziato sotto la Licenza Pubblica Generale GNU v2. Per favore leggi il file gpl.txt, incluso con questo AddOn, per la licenza completa.";
	["LOADED_NOTIFICATION"]	= "Gatherer vers%1 -- Caricato!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Attenzione:}} Sembra che la tua installazione di Gatherer abbia differenti versioni dei file.\nAssicurati di aver eliminato la vecchia cartella: \n  %1\nreinstalla una nuova versione da:\n  %2\nriavvia WoW completamente prima di riportare qualunque bug.\n\nGrazie,\n  Il Team Sviluppo Gatherer";
	["VERSION_MESSAGE"]	= "Questo è Gatherer vers.1%";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer non ha potuto identificare le seguenti zone: {{%1}}\nSe queste sono nuove regioni, non è un problema e potrai continuare come al solito. \nSe queste non sono nuove regioni, allora resta tranquillo perchè {{i tuoi dati NON SONO PERDUTI!}} I tuoi dati per queste zone sono ancora intatti, ma dovrai aggiornare Gatherer per accedervi. Fino ad allora potrai continuare a giocare come sempre e ogni nuovo dato che raccoglierai, sarà unito con i tuoi vecchi dati, quando effettuerai l'aggiornamento. \n\n{{Per favore aggiorna Gatherer quando possibile.}}";

	-- Section: Generic Strings
	["ACCEPT"]	= "Accetta";
	["ALL"]	= "Tutti";
	["CANCEL"]	= "Cancella";
	["DELETE"]	= "Elimina";
	["DONE"]	= "Fatto";
	["ENABLE"]	= "Attiva";
	["IGNORE"]	= "Ignora";
	["IGNORE_PLAYER"]	= "Ignora Giocatore";
	["NO"]	= "No";
	["OKAY"]	= "Ok";
	["SEARCH"]	= "Cerca";
	["STOP_IGNORE"]	= "Rimuovi Giocatore";
	["STRATA_BACKGROUND"]	= "Sfondo";
	["STRATA_HIGH"]	= "Alto";
	["STRATA_LOW"]	= "Basso";
	["STRATA_MEDIUM"]	= "Medio";
	["YES"]	= "Si";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Clicca}} per attivare la schermata dei nodi.";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Clic Destro}} per vedere il rapporto di raccolta.";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Maiuscolo-Clic Sinistro}} per attivare l'interfaccia HUD.";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Maiuscolo-Clic Destro}} per modificare le opzioni.";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "Opzioni Finestra HUD";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "Modalità Ricerca Calore HUD";
	["HUD_CONFIG_HIDING_LABEL"]	= "Opzioni Invsibilità HUD";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "Alfa Generale HUD: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Angolo Visuale: %d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Colore Sfondo";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "Ombreggia l'HUD per aumentare la visibilità";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Centra il colore";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Attiva il cerchio del Campo Visivo del giocatore";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Le note scompaiono alla distanza di: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Colore Modalità Calore";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "Tempo di Ricarica traccia: %d secondi";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Mostra la traccia di movimento (calore)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Nessun tempo di ricarica";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "Traccia la grandezza della scia: %d iarde";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Nascondi mentre sei in combattimento";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Nascondi mentre sei in volo";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "Nascondi mentre sei in luoghi chiusi";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Nascondi quando sei su una cavalcatura";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "Nascondi quando ti riposi";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "Nascondi quando sei invisibile";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Nascondi quando nuoti";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Nascondo quando segui un bersaglio";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "Nascondi quando non sei su una cavalcatura";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Grandezza note: %d pixel";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "Numero di Fotogrammi al secondo minimo da disegnare: %dfps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Sezione Orizzontale: %d pixel";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Sezione verticale: %d pixel";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Colore membri del gruppo";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Mostra altri membri del gruppo";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Grandezza icona del gruppo: %d pixel";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Livello prospettiva: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "Raggio di ampiezza HUD: %d pixel";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "Raggio delle Note: %d iarde";
	["HUD_CONFIG_STRATA_LABEL"]	= "Strati HUD (Livello di Disegno)";
	["HUD_CONFIG_USAGE_NOTE"]	= "L'uso dell'HUD consumerà fotogrammi da quelli di gioco, e ne consumerà ancora di più se attiverai il tracciamento a \"Calore\" che tiene conto del tuo traffico precedente attraverso una scia di calore.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "Opzioni Visibilità HUD";
	["HUD_DESCRIPTION"]	= "L'Hud è un componente di navigazione che ti consente di tracciare la posizione dei nodi di raccolta sul tuo schermo, come una sorta di nota in evidenza.";
	["HUD_TITLE"]	= "Gatherer Heads-Up Display Plugin";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "I tuoi dati CT_MapMod sono stati importati.";
	["IMPORT_CTMOD_NODATA"]	= "Non è stato trovato nessun dato CT_MapMod da importare.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Mostra Sempre il Dialogo delle Opzioni";

	-- Section: Labels
	["GENERAL_LABEL"]	= "Generali";
	["LABEL_CONFIG"]	= "Config";
	["LABEL_DENSITY_REPORT"]	= "Ricerca Nodo";
	["LABEL_NOTE"]	= "Note";
	["LABEL_REPORT"]	= "Rapporti Raccolta nodi";
	["MAP_NOTES_HIDE"]	= "Nascondi Oggetti";
	["MAP_NOTES_SHOW"]	= "Mostra Oggetti";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: Avvisi";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "Upload interrotto.";
	["MASS_SHARING_ABORTED"]	= "Interroto al %1";
	["MASS_SHARING_ACCEPTED"]	= "Avvio...";
	["MASS_SHARING_ASKING"]	= "Richiesta in corso...";
	["MASS_SHARING_BUSY"]	= "Utente occupato.";
	["MASS_SHARING_CLOSED"]	= "E' chiuso.";
	["MASS_SHARING_COMPLETE"]	= "Successo!";
	["MASS_SHARING_DONE"]	= "Completato al %1";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s vuole inviarti i nodi %2$d di Gatherer. Confermi?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "Desideri inviare i nodi %1$s a %2$s? (Ricorda, devono avere la finestra Rapporti Gatherer aperta).";
	["MASS_SHARING_RECEIVED_COUNT"]	= "Ricevuto %1";
	["MASS_SHARING_REJECT"]	= "Rifiutato!";
	["MASS_SHARING_SENDING"]	= "Invio...";
	["MASS_SHARING_SENT"]	= "Inviato %1";
	["MASS_SHARING_TIMEOUT"]	= "Tempo scaduto.";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Polline di Nubefatua";
	["ORE_ADAMANTITE"]	= "Adamantite";
	["ORE_BLOODSTONE"]	= "Sanguinite Inferiore";
	["ORE_COPPER"]	= "Rame";
	["ORE_DARKIRON"]	= "Ferroscuro";
	["ORE_FELIRON"]	= "Vilferro";
	["ORE_GOLD"]	= "Oro";
	["ORE_INCENDICITE"]	= "Incendiocite";
	["ORE_INDURIUM"]	= "Indurio";
	["ORE_IRON"]	= "Ferro";
	["ORE_KHORIUM"]	= "Korio";
	["ORE_MITHRIL"]	= "Mithril";
	["ORE_NETHERCITE"]	= "Faturcite";
	["ORE_OBSIDIAN"]	= "Obsidio";
	["ORE_RADAMANTITE"]	= "Ricco di Adamantite";
	["ORE_RTHORIUM"]	= "Ricca di Torio";
	["ORE_SILVER"]	= "Argento";
	["ORE_THORIUM"]	= "Torio";
	["ORE_TIN"]	= "Stagno";
	["ORE_TRUESILVER"]	= "Verargento";
	["TREASURE_BARREL"]	= "Barili";
	["TREASURE_BLOODPETAL"]	= "Germoglio di Petalorosso";
	["TREASURE_BOX"]	= "Scatole";
	["TREASURE_CASK"]	= "Botti";
	["TREASURE_CHEST"]	= "Forzieri del Tesoro";
	["TREASURE_CLAM"]	= "Bivalve Giganti";
	["TREASURE_CRATE"]	= "Casse";
	["TREASURE_FOOTLOCKER"]	= "Scrigni";
	["TREASURE_GLOWCAP"]	= "Cappaluce";
	["TREASURE_NIGHTDRAGON"]	= "Mentina all'Alito di Drago";
	["TREASURE_POWERCRYST"]	= "Cristalli Energetico";
	["TREASURE_SHELLFISHTRAP"]	= "Trappole per Crostacei";
	["TREASURE_SONGFLOWER"]	= "Fiorcantanti";
	["TREASURE_UNGOROSOIL"]	= "Terreno di Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Tubero Sferzarapa";
	["TREASURE_WINDBLOSSOM"]	= "Bacche di Sbocciavento";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Importa";
	["DATABASE_IMPORT_HEADER"]	= "Importa il database dei nodi:";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Posizione";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# Nodi";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Percentuale";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Tipo";
	["DENSITY_SEARCH_TITLE"]	= "Ricerca Densità del Nodo";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 drop aggiuntivi";
	["NOTE_COUNT"]	= "Raccolto %1 volte";
	["NOTE_DISTANCE"]	= "Distanza: %1 metri";
	["NOTE_IMPORTED"]	= "Raccolta Importata";
	["NOTE_LASTVISITED"]	= "Ultima visita: %1";
	["NOTE_OVERALLDROPS"]	= "Probabilità drop complessiva:";
	["NOTE_SOURCE"]	= "Origine: %1";
	["NOTE_UNSKILLED"]	= "Skill raccolta troppo bassa";

	-- Section: Time
	["DAYS"]	= "Giorno";
	["DAYS_ABBR"]	= "Grn";
	["DAYS_ABBR_P1"]	= "Giorni";
	["DAYS_P1"]	= "Grni";
	["HOURS"]	= "Ora";
	["HOURS_ABBR"]	= "Ora";
	["HOURS_ABBR_P1"]	= "Ore";
	["HOURS_P1"]	= "Ore";
	["MINUTES"]	= "Minuto";
	["MINUTES_ABBR"]	= "Min";
	["MINUTES_ABBR_P1"]	= "Min";
	["MINUTES_P1"]	= "Minuti";
	["SECONDS"]	= "Secondo";
	["SECONDS_ABBR"]	= "Sec";
	["SECONDS_ABBR_P1"]	= "Sec";
	["SECONDS_P1"]	= "Secondi";
	["WEEKS"]	= "Settimana";
	["WEEKS_ABBR"]	= "Set";
	["WEEKS_ABBR_P1"]	= "Set";
	["WEEKS_P1"]	= "Settimane";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Archeologia";
	["TRADE_HERBALISM"]	= "Erbalismo";
	["TRADE_MINING"]	= "Estrazione";

}
