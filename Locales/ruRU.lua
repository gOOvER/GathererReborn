if GetLocale() ~= "ruRU" then return end

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

GathererLocalizations.ruRU = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "Отправка точки %1 в %2";
	["COMM_NODE_SEND_TWO"]	= "Отправка точки %1 в %2 и %3";
	["COMM_RECEIVE_NODE"]	= "Приём точки %1 из %2 от %3 (%4)";
	["NODE_ADD"]	= "Добавлена точка %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Показать сообщение при загрузке";
	["CONFIG_ALL_FILTER_NOTE"]	= "Текущие настройки фильтров '%1' будут проигнорированы и будут показаны все точки в этой категории.";
	["CONFIG_ARCH_MAX_NOTES"]	= "Показывать: %d ближайших";
	["CONFIG_ENABLE_HERB"]	= "Показывать точки травников";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Только травникам";
	["CONFIG_ENABLE_MINE"]	= "Показывать точки горняков";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Только горнякам";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Только если ведется поиск";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Настройки кнопки миникарты";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Свойства отслеживания на миникарте";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Настройки глобальной карты";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Настройки отслеживания на глобальной карте";
	["CONFIG_HERB_FILTER_LABEL"]	= "Точки сбора травников к отслеживанию";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Вы уверены, что желаете удалить все точки этого игрока из базы данных? Это операцию НЕВОЗМОЖНО отменить и она удалит %d из базы данных Gatherer.";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d точка(ек) безвозвратно удалены из Вашей базы данных Gatherer.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Вы хотите удалить все точки сбора расшаренные этим игроком?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Отслеживать точки сбора горняков";
	["CONFIG_MINIICON_ANGLE"]	= "Угол кнопки: %d°";
	["CONFIG_MINIICON_DISTANCE"]	= "Расстояние: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Показывать кнопку на миникарте";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Миникарта дополнительно";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Показывать неизвестные точки сбора";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Прозрачность неизвестных точек: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Окрасить неизвестные точки красным";
	["CONFIG_MINIMAP_DISTANCE"]	= "Расстояние: %d ярдов";
	["CONFIG_MINIMAP_ENABLE"]	= "Примечания на миникарте";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Угасание в: %d ярдах";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "Угасание примечаний";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Расстояние угасания: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "Размер иконки: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Обследовать в: %d ярдах";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Отмечать точки как обследованные";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "Угасание обследованных: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Переобследование: %d сек.";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "Окрасить зеленым при обследовании";
	["CONFIG_MINIMAP_LABEL"]	= "Настройки миникарты";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Показывать: %d ближайших";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Прозрачность по умолчанию: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Только для активного навыка";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Преобразовать в иконку слежения при приближении";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "Следить в: %d ярдах";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "Включить отслеживание";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Прозрачность иконки: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "Отслеживать сокровища";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Смена профиля: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Копировать";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Новый";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Активировать текущий профиль";
	["CONFIG_PROFILE_NEW"]	= "Создать или заменить профиль";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Имя нового профиля:";
	["CONFIG_SECTION_ABOUT"]	= "О дополнении";
	["CONFIG_SECTION_GENERAL"]	= "Общие настройки";
	["CONFIG_SECTION_HEADER_CORE"]	= "Основные Настройки";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Дополнения";
	["CONFIG_SECTION_MINIMAP"]	= "Миникарта";
	["CONFIG_SECTION_OPEN"]	= "Сокровища";
	["CONFIG_SECTION_PROFILES"]	= "Профили";
	["CONFIG_SECTION_SHARING"]	= "Расшаривание";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "О дополнении Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Настройки Археологии";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Основные настройки Gatherer";
	["CONFIG_SECTION_TITLE_HERB"]	= "Настройки фильтра Травничество";
	["CONFIG_SECTION_TITLE_MINE"]	= "Настройки фильтра Горное дело";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Настройки миникарты Gatherer";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Настройки фильтра Сокровища";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Установка, настройка и редактирование профилей";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Настройки синхронизации";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Черный список синхронизации";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Добавить принятые точки группы в свою базу данных";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Включить синхронизацию с группой";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Синхронизация с Группой/Рейдом";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Показать сообщение когда принимается точка сбора от группы";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Показать сообщение когда отправляется точка группе";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Добавить принятые от гильдии точки в базу данных";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Включить синхронизацию с гильдией";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Синхронизация с гильдией";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Показать сообщение когда принимается точка от гильдии";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Показать сообщение когда отправляется точка в гильдию";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Показать сообщение когда собственная точка сбора добавляется к базе данных";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Персональное предупреждение";
	["CONFIG_TOOLTIP_COUNTS"]	= "Показать счетчики урожая";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Показывать расстояние до точки";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Показывать шансы выпадения";
	["CONFIG_TOOLTIP_ENABLE"]	= "Показывать советы";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Показывать когда обследовалась";
	["CONFIG_TOOLTIP_SOURCE"]	= "Показывать источник заметки";
	["CONFIG_WORLDMAP_ENABLE"]	= "Показывать заметки на глобальной карте";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Размер иконки: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Показывать: %d заметок";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Прозрачность: %d%%";
	["ENABLE_OPEN"]	= "Показывать точки сокровищ";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "Произошел Катаклизм, вернулся Смертокрыл, он сжёг все растения, расплавил все металлы, уничтожил все сундуки. Сейчас всё это вновь растёт, выкристаллизовывается и препрятывается от пиратов, и меняет расположение. Охота началась!!!\n(Старые данные мира очищены всвязи с изменением географии мира.)";
	["STORAGE_DB_VERSION_INVALID"]	= "ВНИМАНИЕ!!!\nGatherer обнаружил, что у Вас неправильная версия базы данных. Пожалуйста нажмите принять, чтобы очистить Вашу базу данных, или выберите игнорировать, чтобы попробывать восстановить её вручную.";
	["STORAGE_DB_VERSION_NEWER"]	= "Ваша база данных слишком новая для Gatherer, и не будет использоваться до тех пор, пока Вы не обновите Gatherer.";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "Расст.";
	["REPORT_COLUMN_HEADER_REGION"]	= "Локация";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Источник";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Тип";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "Вы хотите удалить %d точек сбора Gatherer?";
	["REPORT_DELETE_MARKED"]	= "Удалить отмеченное";
	["REPORT_MARKED_NODES_COUNT"]	= "Отмеченные точки: %1";
	["REPORT_MARKING_NOTE"]	= "Примечание: Кода Вы отмечаете точки сбора, они остаются отмеченными до тех пор, пока Вы не щелкните по ним в списке, используя кнопки маркировки выше или не перезагрузите игру.";
	["REPORT_MARK_THESE"]	= "Отметить указанные";
	["REPORT_SEARCH_BY_REGION"]	= "По локациям";
	["REPORT_SEARCH_BY_SOURCE"]	= "По источнику";
	["REPORT_SEARCH_BY_TYPE"]	= "По типу";
	["REPORT_SEND_MARKED"]	= "Отослать отмеченные";
	["REPORT_TITLE"]	= "Список точек сбора";
	["REPORT_UNMARK_ALL"]	= "Снять выд. с всех";
	["REPORT_UNMARK_THESE"]	= "Снять выд. с указанных";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Gatherer это дополнение, которое позволяет Вам запоминать точки сбора ресурсов и показывать их на Вашей карте или радаре, или внутри интерфейса игры. Также оно позволяет расшаривать свои находки с Вашей гильдией или рейдом.";
	["DESCRIPTION_LICENSE"]	= "Gatherer это программное обеспечение с открытым исходным кодом, распространяемое в соответствии с GNU General Public License v2. Чтобы ознакомится с полным текстом лицензии прочитайте файл gpl.txt, прилагаемый к дополнению.";
	["LOADED_NOTIFICATION"]	= "Gatherer v%1 -- Загружен!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Внимание:}} В Вашем экземпляре установки Gatherer обнаружены несоответствия версий файлов.\n\nУбедитесь в том, что удалили старую версию из:\n  %1\nкаталога, преустановите свежую копию из:\n  %2\nи полностью перезапустите WoW, прежде чем писать о каких либо неполадках.\n\nС благодарностью,\n  Команда разработчиков Gatherer";
	["VERSION_MESSAGE"]	= "Это Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer не может идентифицировать следующие зоны: {{%1}}\nЕсли это новые зоны, тогда это не является проблемой, и Вы можете продолжать в нормальном режиме.\nЕсли это не новые зоны, тогда сохраняйте спокойствие {{ваши данные НЕ ПОТЕРЯНЫ!}} Ваши данные для этих зон всё ещё целы, но чтобы получить доступ к ним, Вы должны обновить Gatherer. Вы можете продолжать игру как обычно и собирать любые новые данные, как только Вы обновите Gatherer, Ваши старые данные будут объеденены с новыми. \n\n{{Пожалуйста обновите Gatherer, кода Вам будет удобно.}}";

	-- Section: Generic Strings
	["ACCEPT"]	= "Принять";
	["ALL"]	= "Все";
	["CANCEL"]	= "Отмена";
	["DELETE"]	= "Удалить";
	["DONE"]	= "Закончить";
	["ENABLE"]	= "Доступно";
	["IGNORE"]	= "Игнорировать";
	["IGNORE_PLAYER"]	= "Игнорировать игрока";
	["NO"]	= "Нет";
	["OKAY"]	= "Да";
	["SEARCH"]	= "Поиск";
	["STOP_IGNORE"]	= "Удалить Игрока";
	["STRATA_BACKGROUND"]	= "В фоне";
	["STRATA_HIGH"]	= "Высокий";
	["STRATA_LOW"]	= "Низкий";
	["STRATA_MEDIUM"]	= "Средний";
	["YES"]	= "Да";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Щелчок ЛКМ}} для включения отображения точек сбора.";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Щелчок ПКМ}} для просмотра списка точек сбора.";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift - Щелчок ЛКМ}} для включения окна интерфейса.";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift - Щелчок ПКМ}} для изменения настроек.";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "Игровой интерфейс";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "Настройки отображения игрового интерфейса";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "Игровой интерфейс опции тепловизора";
	["HUD_CONFIG_HIDING_LABEL"]	= "Игровой интерфейс опции скрытия";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "Общая прозрачность: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Угол обзора: %d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Цвет подложки";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "Затемнить интерфейс для лучшего восприятия";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Цвет центра";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Отображать поле зрения игрока";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Примечания пропадают в: %d%% радиусах";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Цвет теплового следа";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "Восстановление отслеживания: %d секунд";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Показывать тепловой след";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Больше не перегружать";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "Ширина отслеживаемой зоны: %d ярдов";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Прятать в бою";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Прятать в полёте";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "Прятать внутри помещений";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Прятать на маунте";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "Прятать во время отдыха";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "Прятать когда скрыт";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Прятать при плавании";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Прятать при прицеливании";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "Прятать не на маунте";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Размер примечаний: %d пикселей";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "Минимальная частота фреймов: %dfps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Горизонтальное смещение : %d пикселей";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Вертикальное смещение : %d пикселей";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Цвет членов группы";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Показывать других членов группы";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Размер иконки группы: %d пикселей";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Уровень переспективы: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "Общий радиус интерфейса: %d пикселей";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "Дистанция примечаний: %d ярдов";
	["HUD_CONFIG_STRATA_LABEL"]	= "Приоритет прорисовки";
	["HUD_CONFIG_USAGE_NOTE"]	= "Использование этого интерфейса снижает общую частоту кадров и будет снижать её ещё больше, если Вы включите отслеживание вашего маршрута по тепловизору.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD Настройки видимости";
	["HUD_DESCRIPTION"]	= "HUD это навигационный компонент, позволяющий отслеживать местонахождение ресурсов на экране в стиле прибора ночного видения";
	["HUD_TITLE"]	= "Плагин отображения Gatherer в стиле прибора ночного видения";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "Ваши данные CT_MapMod импортированы.";
	["IMPORT_CTMOD_NODATA"]	= "Не найдено данных CT_MapMod для импорта.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Переключение окна опций";

	-- Section: Labels
	["GENERAL_LABEL"]	= "Основные";
	["LABEL_CONFIG"]	= "Настройки";
	["LABEL_DENSITY_REPORT"]	= "Поиск точки";
	["LABEL_NOTE"]	= "Примечание";
	["LABEL_REPORT"]	= "Сводка о ресурсах";
	["MAP_NOTES_HIDE"]	= "Скрыть предметы";
	["MAP_NOTES_SHOW"]	= "Показать предметы";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: Предупреждения";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer: Показать предметы";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "Отправка прервана.";
	["MASS_SHARING_ABORTED"]	= "Прервано на %1";
	["MASS_SHARING_ACCEPTED"]	= "Начинаю....";
	["MASS_SHARING_ASKING"]	= "Запрос...";
	["MASS_SHARING_BUSY"]	= "Пользователь занят.";
	["MASS_SHARING_CLOSED"]	= "Закрыто.";
	["MASS_SHARING_COMPLETE"]	= "Успешно!";
	["MASS_SHARING_DONE"]	= "Завершено %1";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$ хочет послать Вам %2$d точек сбора. Принять их?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "Вы хотите послать %1$s точек сбора %2$s?\n(Не забудьте, что у принимающей стороны всё это время должно быть открыто окно списка точек сбора.)";
	["MASS_SHARING_RECEIVED_COUNT"]	= "Принято %1";
	["MASS_SHARING_REJECT"]	= "Прервано!";
	["MASS_SHARING_SENDING"]	= "Отсылаю...";
	["MASS_SHARING_SENT"]	= "Послано %1";
	["MASS_SHARING_TIMEOUT"]	= "Время вышло.";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "Пыльца пустопраха";
	["ORE_ADAMANTITE"]	= "Адамантитовая руда";
	["ORE_BLOODSTONE"]	= "Бедная кровавая руда";
	["ORE_COPPER"]	= "Медная руда";
	["ORE_DARKIRON"]	= "Руда чёрного железа";
	["ORE_FELIRON"]	= "Руда оскверненного железа";
	["ORE_GOLD"]	= "Золотая руда";
	["ORE_INCENDICITE"]	= "Огневитовая руда";
	["ORE_INDURIUM"]	= "Индарилиевая руда";
	["ORE_IRON"]	= "Железная руда";
	["ORE_KHORIUM"]	= "Кориевая руда";
	["ORE_MITHRIL"]	= "Мифриловая руда";
	["ORE_NETHERCITE"]	= "Хаотитовая руда";
	["ORE_OBSIDIAN"]	= "Обсидиановая руда";
	["ORE_RADAMANTITE"]	= "Богатые залежи адамантита";
	["ORE_RTHORIUM"]	= "Богатая ториевая жила";
	["ORE_SILVER"]	= "Серебро";
	["ORE_THORIUM"]	= "Ториевая руда";
	["ORE_TIN"]	= "Олово";
	["ORE_TRUESILVER"]	= "Руда истинного серебра";
	["TREASURE_BARREL"]	= "Бочонок";
	["TREASURE_BLOODPETAL"]	= "Побеги кровоцвета";
	["TREASURE_BOX"]	= "Коробка";
	["TREASURE_CASK"]	= "Бочка";
	["TREASURE_CHEST"]	= "Сундук с сокровищами";
	["TREASURE_CLAM"]	= "Огромная Мидия";
	["TREASURE_CRATE"]	= "Ящик";
	["TREASURE_FOOTLOCKER"]	= "Сундучки";
	["TREASURE_GLOWCAP"]	= "Огнешляпка";
	["TREASURE_NIGHTDRAGON"]	= "Ночное дыхание дракона";
	["TREASURE_POWERCRYST"]	= "кристалл силы";
	["TREASURE_SHELLFISHTRAP"]	= "Ловушка на моллюска";
	["TREASURE_SONGFLOWER"]	= "Песньцветы";
	["TREASURE_UNGOROSOIL"]	= "Земля Ун'Горо";
	["TREASURE_WHIPPERROOT"]	= "Плод кнутокорня";
	["TREASURE_WINDBLOSSOM"]	= "Ягоды ветроцвета";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "Импорт";
	["DATABASE_IMPORT_HEADER"]	= "Выполните импорт узла базы данных:";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Расположение";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "№ Точки";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Проценты";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Тип";
	["DENSITY_SEARCH_TITLE"]	= "Поиск точки по плотности";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "Ещё %1 сбор(ов)...";
	["NOTE_COUNT"]	= "Собрано %1 раз";
	["NOTE_DISTANCE"]	= "Дистанция: %1 метр(ов)";
	["NOTE_IMPORTED"]	= "Импортировано";
	["NOTE_LASTVISITED"]	= "Последний раз посещён: %1";
	["NOTE_OVERALLDROPS"]	= "Общий шанс сбора:";
	["NOTE_SOURCE"]	= "Источник: %1";
	["NOTE_UNSKILLED"]	= "Сбор без умения";

	-- Section: Time
	["DAYS"]	= "День";
	["DAYS_ABBR"]	= "День";
	["DAYS_ABBR_P1"]	= "Дней";
	["DAYS_P1"]	= "Дней";
	["HOURS"]	= "Час";
	["HOURS_ABBR"]	= "ч";
	["HOURS_ABBR_P1"]	= "ч";
	["HOURS_P1"]	= "Часов";
	["MINUTES"]	= "Минута";
	["MINUTES_ABBR"]	= "мин";
	["MINUTES_ABBR_P1"]	= "мин";
	["MINUTES_P1"]	= "Минут";
	["SECONDS"]	= "Секунда";
	["SECONDS_ABBR"]	= "сек";
	["SECONDS_ABBR_P1"]	= "сек";
	["SECONDS_P1"]	= "Секунд";
	["WEEKS"]	= "Неделя";
	["WEEKS_ABBR"]	= "Нед";
	["WEEKS_ABBR_P1"]	= "Нед";
	["WEEKS_P1"]	= "Недель";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Археология";
	["TRADE_HERBALISM"]	= "Травничество";
	["TRADE_MINING"]	= "Горное дело";

}
