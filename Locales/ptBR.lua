if GetLocale() ~= "ptBR" then return end

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

GathererLocalizations.ptBR = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Coleta enviada de %1 para %2";
	["COMM_NODE_SEND_TWO"]	= "Coleta enviada de %1 para %2 e %3";
	["COMM_RECEIVE_NODE"]	= "Coleta Recebida de %1 em %2 de %3 (%4)";
	["NODE_ADD"]	= "Coleta Adicionada de %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Mostrar Mensagem Carregada";
	["CONFIG_ALL_FILTER_NOTE"]	= "A '%1\" opção faz com que os filtros atuais sejam ignorados e força todos os nodos nessa categoria serem mostrados.";
	["CONFIG_ARCH_MAX_NOTES"]	= "Exibição: %d próximo";
	["CONFIG_ENABLE_HERB"]	= "Mostrar nodos de Herbalismo";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Somente Herbalistas";
	["CONFIG_ENABLE_MINE"]	= "Mostrar nodos de mineração";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Somente Mineradores";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Somente se rastreando";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Opções do Botão do Minimapa";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Opções de Rastreamento do Minimapa";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Opções do Mapa Mundi";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Opções de Rastreamento do Mapa Mundi";
	["CONFIG_HERB_FILTER_LABEL"]	= "Nodos de ervas para rastrear";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Você tem certeza que quer limpar todos os compartilhamentos deste jogador de seu banco de dados? Esta operação NÃO PODE ser desfeita e irá remover %d nodo(s) de seu banco de dados do Gatherer.";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d nodo(s) foram permanentemente removidos do seu banco de dados do Gatherer.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Você deseja remover todos os nodos que foram compartilhados por este jogador?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Nodos minerais para rastrear";
	["CONFIG_MINIICON_ANGLE"]	= "Ângulo do Botão: %dº";
	["CONFIG_MINIICON_DISTANCE"]	= "Distância: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Visualização do Botão do Minimapa";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Minimapa Adicional";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Exibir nodos anônimos";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Opacidade Anon: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Tonalidade dos nodos anônimos vermelha";
	["CONFIG_MINIMAP_DISTANCE"]	= "Distância: %d metros";
	["CONFIG_MINIMAP_ENABLE"]	= "Exibir nodos no Minimapa";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Desaparecer em: %d metros";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Desaparecimento gradual das mini-notas";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Distância de desaparecimento: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Tamanho do Ícone: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Inspecionar em: %d metros";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Marcar nodos conforme inspecionados";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Desaparecimento dos Inspecionados: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Reinspecionar: %d segs";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Tonalidade verde enquanto inspecionando";
	["CONFIG_MINIMAP_LABEL"]	= "Opções do Minimapa";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Exibir: %d próximo";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Opacidade padrão: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Somente para habilidade de rastreamento ativa";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Converter para o ícone de rastreamento quando perto";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Rastrear em: %d metros";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Habilitar o recurso de rastreamento de habilidade";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Opacidade do ícone: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Nodos de tesouros para rastrear";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Mudando perfil: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Criar cópia";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Criar novo";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Ativar o perfil atual";
	["CONFIG_PROFILE_NEW"]	= "Criar ou substituir o perfil";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Nome do novo perfil:";
	["CONFIG_SECTION_ABOUT"]	= "Sobre";
	["CONFIG_SECTION_GENERAL"]	= "Geral";
	["CONFIG_SECTION_HEADER_CORE"]	= "Opções do Núcleo";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Plugins";
	["CONFIG_SECTION_MINIMAP"]	= "Minimapa";
	["CONFIG_SECTION_OPEN"]	= "Tesouro";
	["CONFIG_SECTION_PROFILES"]	= "Perfis";
	["CONFIG_SECTION_SHARING"]	= "Compartilhamento";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "Sobre o Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Opções de Arqueologia";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Opções principais do Gatherer";
	["CONFIG_SECTION_TITLE_HERB"]	= "Opções do Filtro de Herbalismo";
	["CONFIG_SECTION_TITLE_MINE"]	= "Opções do Filtro de Mineração";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Opções do Minimapa do Gatherer";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Opções do Filtro de Tesouro";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Configurar e editar perfis";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Opções de Sincronização";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Compartilhando Lista Negra";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Adicionar grupo de coletas recebido para o meu banco de dados";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Ativar sincronização de grupo";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Compartilhamento de Raide/Grupo";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Publica uma mensagem ao receber um grupo de coleta";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Publica uma mensagem ao enviar um grupo de coleta";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Adicionar coletas de guilda recebidas para o meu banco de dados";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Ativar sincronização de guilda";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Compartilhamento de guilda";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Publica uma mensagem ao receber uma coleta de guilda";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Publica uma mensagem ao enviar uma coleta de guilda";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Publica uma mensagem ao adicionar coleta própria ao BD";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Alerta Pessoal";
	["CONFIG_TOOLTIP_COUNTS"]	= "Exibir contagens de colheita";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Exibir distância dos nodos";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Exibir chances de queda";
	["CONFIG_TOOLTIP_ENABLE"]	= "Exibir dicas de ferramentas";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Exibir a hora vista pela última vez";
	["CONFIG_TOOLTIP_SOURCE"]	= "Exibir a origem da nota";
	["CONFIG_WORLDMAP_ENABLE"]	= "Exibir notas no Mapa Mundi";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Tamanho do Ícone: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Exibir: %d nodos";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Opacidade: %d%%";
	["ENABLE_OPEN"]	= "Mostrar nodos de tesouro";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "Sendo o vil super-vilão que ele é, o retorno do Asa da Morte queimou todas as ervas, derreteu todos os depósitos de minério e obliterou todos os baús. Agora todos têm que voltar a crescer, ser recristalizados ou serem re-escondidos por piratas e provavelmente eles estão todos em novos locais. Caça ao tesouro!!! (Dados do Velho Mundo foram apagados devido a mudanças generalizadas ma geografia.)";
	["STORAGE_DB_VERSION_INVALID"]	= "CUIDADO!!!\no Gatherer detectou que seu banco de dado é inválido. Por favor pressione aceitar para limpar seu banco de dados, ou selecione ignorar se você quer tentar reparar seu banco de dados manualmente.";
	["STORAGE_DB_VERSION_NEWER"]	= "Seu banco de dados do Gatherer é muito novo. Seu banco de dados será deixado de lado até que você atualize o Gatherer.";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%2$d de %1$s";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "Dist";
	["REPORT_COLUMN_HEADER_REGION"]	= "Região";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Origem";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Tipo";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "Você quer deletar %d nodos do Gatherer?";
	["REPORT_DELETE_MARKED"]	= "Deletar Marcados";
	["REPORT_MARKED_NODES_COUNT"]	= "Nodos Marcados: %1";
	["REPORT_MARKING_NOTE"]	= "Nota: Quando você marca nodos, eles permanecerão marcados até que você desmarque-os clicando na linha do item no relatório, usando os botões Desmarcar acima ou recarregar o jogo.";
	["REPORT_MARK_THESE"]	= "Marcar estes";
	["REPORT_SEARCH_BY_REGION"]	= "Por Região";
	["REPORT_SEARCH_BY_SOURCE"]	= "Por Origem";
	["REPORT_SEARCH_BY_TYPE"]	= "Por Tipo";
	["REPORT_SEND_MARKED"]	= "Enviar marcados";
	["REPORT_TITLE"]	= "Relatório de Coletáveis";
	["REPORT_UNMARK_ALL"]	= "Desmarcar todos";
	["REPORT_UNMARK_THESE"]	= "Desmarcar estes";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Gatherer é um addon que permite que você lembre-se dos locais de coleta e visualize-os em seu mapa principal, seu minimapa, ou em uma exibição no seu HUD. Ele também permite que você compartilhe suas descobertas com a sua guilda, raid ou seus amigos.";
	["DESCRIPTION_LICENSE"]	= "Gatherer é um software de código aberto e está licenciado sob a GNU General Public License v2. Por favor, veja GPL.TXT, incluído neste AddOn, para a licença completa.";
	["LOADED_NOTIFICATION"]	= "Gatherer v%1 - Carregado!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Aviso:}} Sua instalação do Gatherer parece ter versões de arquivos incompatíveis.\n\nPor favor certifique-se de apagar o velho:\n  %1\nDiretório, reinstale uma cópia nova de :\n  %2\ne reinicie o WoW completamente antes de reportar qualquer bug.\n\nObrigado, \n O Dev Team Gatherer";
	["VERSION_MESSAGE"]	= "Este é o Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer foi incapaz de identificar as seguintes zonas: {{%1}}\nSe estas são novas zonas, então este não é um problema, e você pode continuar normalmente. \nSe estas não são novas zonas, então mantenha a calma que {{seus dados NÃO ESTÃO PERDIDOS!}} Seus dados para estas zonas ainda estão intactos, mas você vai precisar atualizar o Gatherer a fim de acessá-los. Até lá, você pode continuar normalmente e quaisquer novos dados que você coletar serão mesclados com os dados antigos, quando você atualizar. \n\n{{Por favor, atualize o Gatherer quando for conveniente.}}";

	-- Section: Generic Strings
	["ACCEPT"]	= "Aceitar";
	["ALL"]	= "Todos";
	["CANCEL"]	= "Cancelar";
	["DELETE"]	= "Deletar";
	["DONE"]	= "Feito";
	["ENABLE"]	= "Ativar";
	["IGNORE"]	= "Ignorar";
	["IGNORE_PLAYER"]	= "Ignorar Jogador";
	["NO"]	= "Não";
	["OKAY"]	= "Certo";
	["SEARCH"]	= "Procurar";
	["STOP_IGNORE"]	= "Remover Jogador";
	["STRATA_BACKGROUND"]	= "Fundo";
	["STRATA_HIGH"]	= "Alto";
	["STRATA_LOW"]	= "Baixo";
	["STRATA_MEDIUM"]	= "Médio";
	["YES"]	= "Sim";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Clique}} para alternar a exibição dos nodos.";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Clique-Direito}} para visualizar o relatório de coletagem.";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift+Clique}} para alternar a visualização do HUD.";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift+Clique-Direito}} para editar a configuração.";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "Opções de Exibição do HUD";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "Modo de Rastreamento Térmico do HUD";
	["HUD_CONFIG_HIDING_LABEL"]	= "Opções de Ocultação do HUD";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "Alfa Global do HUD: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Ângulo de Visualização: %dº";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Cor Subjacente";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "Escurecer o HUD para melhorar a visibilidade";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Cor Central";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Ativar Círculo de Campo de Visão do Jogador";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Notas desaparecem em: %d%% do raio";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Cor Térmica";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "Recarga do Rastreamento: %d segundos";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Mostrar rastreamento de viagens (térmico)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Nunca recarregar";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "Largura do caminho de Rastreamento: %d metros";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Ocultar enquanto em combate";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Ocultar durante o voo";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "Ocultar enquanto no interior";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Ocultar enquanto estiver montado";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "Ocultar enquanto descansa";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "Ocultar enquanto furtivo";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Ocultar enquanto nada";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Ocultar ao alvejar";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "Ocultar enquanto não estiver montado";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Tamanho da Nota: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "Taxa de quadros mínima para desenhar cada quadro: %dqps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Deslocamento Horizontal: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Deslocamento Vertical: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Cor dos membros do Grupo";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Mostrar outros membros do grupo";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Tamanho do ícone do grupo: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Nível de perspectiva: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "Raio Geral do HUD: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "Alcance da Nota: %d metros";
	["HUD_CONFIG_STRATA_LABEL"]	= "Camadas do HUD (Nível de Desenho)";
	["HUD_CONFIG_USAGE_NOTE"]	= "O uso do HUD irá consumir quadros da sua Taxa de Quadros, e irá consumir ainda mais quadros se você ativar o modo de rastreamento \"Térmico\" que mantém registro do seu tráfego passado pelo caminho térmico.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "Opções de Visibilidade do HUD";
	["HUD_DESCRIPTION"]	= "O HUD é um componente de navegação que lhe permite controlar a localização de coletáveis em sua tela em uma sobreposição de estilo sobre-a-cabeça.";
	["HUD_TITLE"]	= "Plugin de Visualização Sobre a Cabeça do Gatherer";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "Seus dados CT_MapMod foram importados.";
	["IMPORT_CTMOD_NODATA"]	= "Nenhum dado CT_MapMod foi localizado para importação.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Alternar Janela de Opções";

	-- Section: Labels
	["GENERAL_LABEL"]	= "Geral";
	["LABEL_CONFIG"]	= "Configuração";
	["LABEL_DENSITY_REPORT"]	= "Pesquisa de Nodos";
	["LABEL_NOTE"]	= "Nota";
	["LABEL_REPORT"]	= "Relatório de Coletáveis";
	["MAP_NOTES_HIDE"]	= "Ocultar Itens\nOcultar Notas";
	["MAP_NOTES_SHOW"]	= "Mostrar Itens\nMostrar Notas";
	["NOTIFICATIONS_TITLE"]	= "Avisos";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer: Mostrar Itens";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "Upload Abortado.";
	["MASS_SHARING_ABORTED"]	= "Abortado em %1";
	["MASS_SHARING_ACCEPTED"]	= "Iniciando...";
	["MASS_SHARING_ASKING"]	= "Solicitando...";
	["MASS_SHARING_BUSY"]	= "Usuário Ocupado.";
	["MASS_SHARING_CLOSED"]	= "Está fechado.";
	["MASS_SHARING_COMPLETE"]	= "Sucesso!";
	["MASS_SHARING_DONE"]	= "Concluído %1";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s quer enviar para você %2$d nodos do Gatherer. Aceitar?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "Você deseja enviar %1$s nodos para %2$s? (Lembre, eles precisam ter a janela de Relatório de Coletáveis aberta.";
	["MASS_SHARING_RECEIVED_COUNT"]	= "Recebido %1";
	["MASS_SHARING_REJECT"]	= "Rejeitado!";
	["MASS_SHARING_SENDING"]	= "Enviando...";
	["MASS_SHARING_SENT"]	= "Enviado %1";
	["MASS_SHARING_TIMEOUT"]	= "Expirou.";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Pólen de Poeira Etérea";
	["ORE_ADAMANTITE"]	= "Adamantita";
	["ORE_BLOODSTONE"]	= "Pedra-sangrenta Inferior";
	["ORE_COPPER"]	= "Cobre";
	["ORE_DARKIRON"]	= "Ferro Negro";
	["ORE_FELIRON"]	= "Ferrovil";
	["ORE_GOLD"]	= "Ouro";
	["ORE_INCENDICITE"]	= "Incendicita";
	["ORE_INDURIUM"]	= "Indúrio";
	["ORE_IRON"]	= "Ferro";
	["ORE_KHORIUM"]	= "Kório";
	["ORE_MITHRIL"]	= "Mithril";
	["ORE_NETHERCITE"]	= "Etercita";
	["ORE_OBSIDIAN"]	= "Obsídio";
	["ORE_RADAMANTITE"]	= "Adamantita Abundante";
	["ORE_RTHORIUM"]	= "Tório Abundante";
	["ORE_SILVER"]	= "Prata";
	["ORE_THORIUM"]	= "Tório";
	["ORE_TIN"]	= "Estanho";
	["ORE_TRUESILVER"]	= "Veraprata";
	["TREASURE_BARREL"]	= "Barris";
	["TREASURE_BLOODPETAL"]	= "Brotos de Pétala Sangrenta";
	["TREASURE_BOX"]	= "Caixas";
	["TREASURE_CASK"]	= "Barril";
	["TREASURE_CHEST"]	= "Baú de Tesouro";
	["TREASURE_CLAM"]	= "Mariscos Gigantes";
	["TREASURE_CRATE"]	= "Caixote";
	["TREASURE_FOOTLOCKER"]	= "Baús";
	["TREASURE_GLOWCAP"]	= "Chapéus opalinos";
	["TREASURE_NIGHTDRAGON"]	= "Sopro de Dragão Noturno";
	["TREASURE_POWERCRYST"]	= "Cristais de Poder";
	["TREASURE_SHELLFISHTRAP"]	= "Armadilha de Lagostins";
	["TREASURE_SONGFLOWER"]	= "Songflowers";
	["TREASURE_UNGOROSOIL"]	= "Solo de Un'Goro";
	["TREASURE_WHIPPERROOT"]	= "Tubérculo de Raiz-açoite";
	["TREASURE_WINDBLOSSOM"]	= "Amoras do Botão Selvagem";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Importar";
	["DATABASE_IMPORT_HEADER"]	= "Importar Base de Dados de Nodos";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Localização";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# Nodos";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Porcentagem";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Tipo";
	["DENSITY_SEARCH_TITLE"]	= "Pesquisar Densidade do Nodo";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 queda(s) adicional(is)...";
	["NOTE_COUNT"]	= "Coletado %1 vezes";
	["NOTE_DISTANCE"]	= "Distância: %1 metros";
	["NOTE_IMPORTED"]	= "Coleta importada";
	["NOTE_LASTVISITED"]	= "Última visita: %1";
	["NOTE_OVERALLDROPS"]	= "Taxas gerais de queda:";
	["NOTE_SOURCE"]	= "Fonte: %1";
	["NOTE_UNSKILLED"]	= "Coleta não qualificada";

	-- Section: Time
	["DAYS"]	= "Dia";
	["DAYS_ABBR"]	= "Dia";
	["DAYS_ABBR_P1"]	= "Dias";
	["DAYS_P1"]	= "Dias";
	["HOURS"]	= "Hora";
	["HOURS_ABBR"]	= "H";
	["HOURS_ABBR_P1"]	= "Hs";
	["HOURS_P1"]	= "Horas";
	["MINUTES"]	= "Minutos";
	["MINUTES_ABBR"]	= "Min";
	["MINUTES_ABBR_P1"]	= "Mins";
	["MINUTES_P1"]	= "Minutos";
	["SECONDS"]	= "Segundo";
	["SECONDS_ABBR"]	= "Seg";
	["SECONDS_ABBR_P1"]	= "Segs";
	["SECONDS_P1"]	= "Segundos";
	["WEEKS"]	= "Semana";
	["WEEKS_ABBR"]	= "Sem";
	["WEEKS_ABBR_P1"]	= "Sems";
	["WEEKS_P1"]	= "Semanas";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Arqueologia";
	["TRADE_HERBALISM"]	= "Herborismo";
	["TRADE_MINING"]	= "Mineração";

}
