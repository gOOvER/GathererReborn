if GetLocale() ~= "frFR" then return end

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

GathererLocalizations.frFR = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Envoi de %1 à %2";
	["COMM_NODE_SEND_TWO"]	= "Envoi de %1 à %2 et %3";
	["COMM_RECEIVE_NODE"]	= "Réception %1 à %2 venant de %3 (%4)";
	["NODE_ADD"]	= "Ajout %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Voir message au chargement";
	["CONFIG_ALL_FILTER_NOTE"]	= "l'option '%1' force les filtres courants à être ignorés et affichera tous les ressources de cette catégorie";
	["CONFIG_ARCH_MAX_NOTES"]	= "Affichage : %d le plus proche";
	["CONFIG_ENABLE_HERB"]	= "Voir notes d'herboristerie";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Herboristerie Seulement";
	["CONFIG_ENABLE_MINE"]	= "Voir notes de minage";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Mineur Seulement";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Seulement en recherche";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Bouton d'option Minimap";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Options de recherche Minimap";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Options Carte du Monde";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Options de recherche Carte de Monde";
	["CONFIG_HERB_FILTER_LABEL"]	= "Ressources d'herboristerie à rechercher";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Êtes-vous certain de vouloir effacer de votre base de donnée toutes les informations partagées par ce joueur? Cettes opération NE PEU PAS être annulé et retirera %d ressources de votre base de donnée";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d ressource(s) ont été effacée(s) de manière permanente de votre base de donnée Gatherer";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Voulez-vous retirer toutes les ressources qui ont été partagée par ce joueur?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Ressources de minerais à surveiller";
	["CONFIG_MINIICON_ANGLE"]	= "Angle du bouton: %d°";
	["CONFIG_MINIICON_DISTANCE"]	= "Distance: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Afficher Bouton Minimap";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Option Minimap";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Afficher les ressources inderterminées";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "opacité des ressources indéterminées";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Colorer les ressources indéterminées en rouge";
	["CONFIG_MINIMAP_DISTANCE"]	= "Distance : %d mètres";
	["CONFIG_MINIMAP_ENABLE"]	= "Afficher les notes sur la Minimap";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Transparence à: %d mètres";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Disparition des mini-notes";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Disparition vue: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Taille icônes : %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Inspection à : %d mètres";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Marquer comme inspecté";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Inspecté disparition: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Réinspecté: %d secs";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Afficher en vert les inspectés";
	["CONFIG_MINIMAP_LABEL"]	= "Options Minimap";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Affiche les: %d plus proches";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Opacité par défaut: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Seulement si recherche actif";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Transformer en icone de recherche quand refermé";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Chercher à: %d mètres";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Activer la fonctionnalité de suivi";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Opacité d'icône: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Choisir les trésors à chercher";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Changement de profil: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Créer copie";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Créer nouveau";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Profil actuellement activé";
	["CONFIG_PROFILE_NEW"]	= "Créer ou remplacer un profil";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Nouveau nom de profil:";
	["CONFIG_SECTION_ABOUT"]	= "A propos";
	["CONFIG_SECTION_GENERAL"]	= "Général";
	["CONFIG_SECTION_HEADER_CORE"]	= "Options Général";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Plugins";
	["CONFIG_SECTION_MINIMAP"]	= "Minimap";
	["CONFIG_SECTION_OPEN"]	= "Trésor";
	["CONFIG_SECTION_PROFILES"]	= "Profils";
	["CONFIG_SECTION_SHARING"]	= "Partage";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "A propos de Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Option d'archéologie";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Options Générales Gatherer";
	["CONFIG_SECTION_TITLE_HERB"]	= "Options Filtre Herboristerie";
	["CONFIG_SECTION_TITLE_MINE"]	= "Options Filtre Minage";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Option Minimap Gatherer";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Option Filtre Trésor";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Configuration de profil";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Option de Synchronisation";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Liste Noire de Partage";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Ajouter les notes envoyées par les membres du groupe dans ma base de données";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Synchronisation de groupe activée";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Partage Raid/Groupe";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Afficher un message lors d'une notification de récolte du groupe";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Afficher un message lors de l'envoi d'une note au groupe";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Ajouter les notes venant des membres de la guilde";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Synchronisation de guilde activé";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Partage de Guilde";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Afficher un message lors d'une notification de récolte de la guilde";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Afficher un message lors de l'envoi d'une note à la guilde";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Afficher un message quand une note s'ajoute à ma base de donnée";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Alerte personnelle";
	["CONFIG_TOOLTIP_COUNTS"]	= "Afficher le nombre de zones de ressources";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Afficher distance note";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Afficher taux de drop";
	["CONFIG_TOOLTIP_ENABLE"]	= "Afficher les astuces";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Afficher la plus récente visualisation de la ressource";
	["CONFIG_TOOLTIP_SOURCE"]	= "Afficher la source de la note";
	["CONFIG_WORLDMAP_ENABLE"]	= "Afficher la note sur la carte du monde";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Taille d'icône: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Afficher: %d notes";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Opacité: %d%%";
	["ENABLE_OPEN"]	= "Voir note trésor";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "Depuis l'arrivée du boss Aile-de-mort avec l'extension Cataclysm, certaines zones ont subis une transformation et donc les notes de l'ancien monde ont été supprimées";
	["STORAGE_DB_VERSION_INVALID"]	= "ATTENTION !!!\nGatherer à détecté que la version de votre base de donnée est invalide. Appuyer sur \"accepter\" pour effacer votre base de donnée, ou sur \"ignorer\" si vous voulez essayer de la réparer manuellement";
	["STORAGE_DB_VERSION_NEWER"]	= "Votre base de donnée de Gatherer est trop récente. Votre base de donnée à été mise de coté jusqu'à ce que vous mettiez Gatherer à jour.";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "Distance";
	["REPORT_COLUMN_HEADER_REGION"]	= "Région";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Source";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Type";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "Voulez-vous supprimer les %d marques ?";
	["REPORT_DELETE_MARKED"]	= "Effacer la sélection";
	["REPORT_MARKED_NODES_COUNT"]	= "notes sélectionnées : %1";
	["REPORT_MARKING_NOTE"]	= "Lorsque vous sélectionnez les notes, elles le resteront  jusqu'à ce que vous les dé-sélectionnez en utilisant les boutons ci-dessus.";
	["REPORT_MARK_THESE"]	= "Tout marquer";
	["REPORT_SEARCH_BY_REGION"]	= "Par Région";
	["REPORT_SEARCH_BY_SOURCE"]	= "Par Source";
	["REPORT_SEARCH_BY_TYPE"]	= "Par Type";
	["REPORT_SEND_MARKED"]	= "Envoyer la selection";
	["REPORT_TITLE"]	= "Rapport de ressources";
	["REPORT_UNMARK_ALL"]	= "Tout déselectionner";
	["REPORT_UNMARK_THESE"]	= "Décocher celles-ci";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Gatherer est un addon qui vous permet de mémoriser les emplacements de collecte et de les revoir sur votre Carte, Minimap ou de les afficher sur une interface à l'écran. Il vous permet également de faire un partage des marques découvertes avec votre guilde, raid ou vos amis en groupe.";
	["DESCRIPTION_LICENSE"]	= "Gatherer est un addon en Open-Source et est sous licence GNU v2 General Public License. Pour plus d'information sur la licence voir le fichier gpl.txt inclus avec l'addon.";
	["LOADED_NOTIFICATION"]	= "Gatherer v%1 -- Chargé!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "Attention : Votre installation de Gatherer semble avoir certains fichiers corrompu.\n\nS'il vous plaît assurez-vous d'avoir correctement supprimé l'ancien: 1% répertoire et réinstaller une nouvelle version à partir de: 2% et redémarrer WoW Complètement avant de faire une requête de bug.\n\nMerci, l'Equipe de Dev. Gatherer";
	["VERSION_MESSAGE"]	= "Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer ne peut identifier les zones suivantes: {{1}}%\nSi ce sont de nouvelles zones, alors ce n'est pas un problème et vous pouvez donc continuer comme d'habitude.\nSi ce ne sont pas de nouvelle zones, vous devez donc mettre à jour votre Gatherer pour y accéder, les anciennes marques seront toujours présente et les nouvelles collecte seront fusionnés avec vos anciennes données une fois la mise à jour effectuée.";

	-- Section: Generic Strings
	["ACCEPT"]	= "Accepter";
	["ALL"]	= "Tous";
	["CANCEL"]	= "Annuler";
	["DELETE"]	= "Supprimer";
	["DONE"]	= "Fini";
	["ENABLE"]	= "Activer";
	["IGNORE"]	= "Ignorer";
	["IGNORE_PLAYER"]	= "Ignorer joueur";
	["NO"]	= "Non";
	["OKAY"]	= "Ok";
	["SEARCH"]	= "Chercher";
	["STOP_IGNORE"]	= "Supprimer joueur";
	["STRATA_BACKGROUND"]	= "Fond";
	["STRATA_HIGH"]	= "Haut";
	["STRATA_LOW"]	= "Bas";
	["STRATA_MEDIUM"]	= "Moyen";
	["YES"]	= "Oui";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Clic}} pour afficher/cacher les notes.";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Clic-Droit}} Pour voir le tableau des marques.";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Maj-Clic}} Pour voir le HUD à l'écran.";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Maj-Clic-Droit}} pour afficher les options.";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "HUD Option d'affichage";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "HUD : Suivi du trajet parcouru";
	["HUD_CONFIG_HIDING_LABEL"]	= "HUD : Options d'affichage et masquage";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "HUD alpha général : %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Angle de vue: %d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Couleur de soulignement";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "Assombrir HUD pour améliorer la visibilité";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Couleur du centre";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Activer la zone de vue autour du joueur";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Atténuation de l'affichage des notes à : %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Couleur principale";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "Temps de suivi : %d secondes";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Afficher le chemin parcouru";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Pas de cooldown";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "Largeur du tracé de chemin parcouru";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Cacher pendant le combat";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Cacher en vol";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "Cacher en intérieur";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Cacher quand monté";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "Cacher pendant la regen";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "Cacher pendant le camouflage";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Cacher pendant la nage";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Cacher en ciblant";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "cacher quand non monté";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Taille note: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "FPS minimal pour affichage optimal : %dfps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Décalage Horizontale: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Décalage Verticale: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Couleur des membres du groupe";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Voir les autres membres du groupe";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Taille d'icône groupe: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Niveau de perspective : %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "Taille générale du HUD : %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "distance des notes : %d yards";
	["HUD_CONFIG_STRATA_LABEL"]	= "Qualité d'affichage du HUD";
	["HUD_CONFIG_USAGE_NOTE"]	= "L'utilisation du HUD peut entrainer une baisse de votre fps, et plus encore si vous utilisez le suivi du trajet parcouru.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD Options Visibilité";
	["HUD_DESCRIPTION"]	= "Le HUD est un outil de navigation qui vous permet de suivre les emplacements des ressources sur votre écran à la façon d'un viseur tête haute";
	["HUD_TITLE"]	= "Plugin de Visualisation Tête Haute pour Gatherer";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "Vos marques CT_MapMod ont été importées.";
	["IMPORT_CTMOD_NODATA"]	= "Aucune marque CT_MapMod n'a été trouvée.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Affiche/Ferme les Options";

	-- Section: Labels
	["GENERAL_LABEL"]	= "Général";
	["LABEL_CONFIG"]	= "Configuration";
	["LABEL_DENSITY_REPORT"]	= "Recherche note";
	["LABEL_NOTE"]	= "Note";
	["LABEL_REPORT"]	= "Tableau des marques";
	["MAP_NOTES_HIDE"]	= "Masquer les objets";
	["MAP_NOTES_SHOW"]	= "Afficher les objets";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: Alerte";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer: Afficher les objets";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "Chargement annulé.";
	["MASS_SHARING_ABORTED"]	= "Annulé à %1";
	["MASS_SHARING_ACCEPTED"]	= "Début...";
	["MASS_SHARING_ASKING"]	= "Demande...";
	["MASS_SHARING_BUSY"]	= "Joueur absent.";
	["MASS_SHARING_CLOSED"]	= "Fermé.";
	["MASS_SHARING_COMPLETE"]	= "Succès!";
	["MASS_SHARING_DONE"]	= "Terminé %1";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s veut vous envoyer %2$d marques, Accepter?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "Voulez-vous envoyer %1$s marques à %2$s\n(Rappel, l'autre joueur doit ouvrir sa fenêtre de Gatherer.)";
	["MASS_SHARING_RECEIVED_COUNT"]	= "Reçu 1%";
	["MASS_SHARING_REJECT"]	= "Rejeté!";
	["MASS_SHARING_SENDING"]	= "Envoi...";
	["MASS_SHARING_SENT"]	= "Expédié 1%";
	["MASS_SHARING_TIMEOUT"]	= "Temps écoulé.";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Pollen de pruinéante";
	["ORE_ADAMANTITE"]	= "Adamantite";
	["ORE_BLOODSTONE"]	= "Pierre de Sang Inférieure";
	["ORE_COPPER"]	= "Cuivre";
	["ORE_DARKIRON"]	= "Sombrefer";
	["ORE_FELIRON"]	= "Gangrefer";
	["ORE_GOLD"]	= "Or";
	["ORE_INCENDICITE"]	= "Incendicite";
	["ORE_INDURIUM"]	= "Indurium";
	["ORE_IRON"]	= "Fer";
	["ORE_KHORIUM"]	= "Khorium";
	["ORE_MITHRIL"]	= "Mithril";
	["ORE_NETHERCITE"]	= "Néanticite";
	["ORE_OBSIDIAN"]	= "Obsidienne";
	["ORE_RADAMANTITE"]	= "Riche gisement d'adamantite";
	["ORE_RTHORIUM"]	= "Riche filon de thorium";
	["ORE_SILVER"]	= "Argent";
	["ORE_THORIUM"]	= "Thorium";
	["ORE_TIN"]	= "Etain";
	["ORE_TRUESILVER"]	= "Vrai-argent";
	["TREASURE_BARREL"]	= "Tonneaux";
	["TREASURE_BLOODPETAL"]	= "Pousse de Pétale-de-sang";
	["TREASURE_BOX"]	= "Boîtes";
	["TREASURE_CASK"]	= "Tonneaux";
	["TREASURE_CHEST"]	= "Coffres";
	["TREASURE_CLAM"]	= "Palourdes Géantes";
	["TREASURE_CRATE"]	= "Caisses";
	["TREASURE_FOOTLOCKER"]	= "Cantines";
	["TREASURE_GLOWCAP"]	= "Chapeluisant";
	["TREASURE_NIGHTDRAGON"]	= "Souffle de dragon nocturne";
	["TREASURE_POWERCRYST"]	= "Cristaux de puissance";
	["TREASURE_SHELLFISHTRAP"]	= "Casier à crustacés";
	["TREASURE_SONGFLOWER"]	= "Fleur-de-chant";
	["TREASURE_UNGOROSOIL"]	= "Humus d'Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Tubercule de navetille";
	["TREASURE_WINDBLOSSOM"]	= "Baie de fleur-de-vent";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Importer";
	["DATABASE_IMPORT_HEADER"]	= "Importation de la base de données en cours";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Localisation";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "Notes";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Pourcentage";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Type";
	["DENSITY_SEARCH_TITLE"]	= "Rechercher un objet";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 objet(s) supplémentaire(s)";
	["NOTE_COUNT"]	= "Collecté %1 fois";
	["NOTE_DISTANCE"]	= "Distance: %1 mètre(s)";
	["NOTE_IMPORTED"]	= "Collecte importée";
	["NOTE_LASTVISITED"]	= "Dernière visite: %1";
	["NOTE_OVERALLDROPS"]	= "Fréquence générale:";
	["NOTE_SOURCE"]	= "Source: %1";
	["NOTE_UNSKILLED"]	= "Collecte hors-compétence";

	-- Section: Time
	["DAYS"]	= "Jour";
	["DAYS_ABBR"]	= "Jour";
	["DAYS_ABBR_P1"]	= "Jours";
	["DAYS_P1"]	= "Jours";
	["HOURS"]	= "Heure";
	["HOURS_ABBR"]	= "H";
	["HOURS_ABBR_P1"]	= "H";
	["HOURS_P1"]	= "Heures";
	["MINUTES"]	= "minute";
	["MINUTES_ABBR"]	= "Min";
	["MINUTES_ABBR_P1"]	= "Min";
	["MINUTES_P1"]	= "Minutes";
	["SECONDS"]	= "Seconde";
	["SECONDS_ABBR"]	= "Sec";
	["SECONDS_ABBR_P1"]	= "Sec";
	["SECONDS_P1"]	= "Secondes";
	["WEEKS"]	= "Semaine";
	["WEEKS_ABBR"]	= "Sem";
	["WEEKS_ABBR_P1"]	= "Sem";
	["WEEKS_P1"]	= "Semaines";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Archéologie";
	["TRADE_HERBALISM"]	= "Herboristerie";
	["TRADE_MINING"]	= "Minage";

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
