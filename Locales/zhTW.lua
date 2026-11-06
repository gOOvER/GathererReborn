if GetLocale() ~= "zhTW" then return end

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

GathererLocalizations.zhTW = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "送出採集點 %1 給 %2";
	["COMM_NODE_SEND_TWO"]	= "送出採集點 %1 給 %2 和 %3";
	["COMM_RECEIVE_NODE"]	= "已接收採集點 %1 於 %2 從 %3 (%4)";
	["NODE_ADD"]	= "已增加採集點 %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "顯示讀取完成訊息";
	["CONFIG_ALL_FILTER_NOTE"]	= "這 '%1' 選項將導致目前的過濾設定被忽略掉以及強制顯示該類別的所有採集點。";
	["CONFIG_ARCH_MAX_NOTES"]	= "顯示：最靠近 %d";
	["CONFIG_ENABLE_HERB"]	= "顯示草藥採集點";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "只有草藥學角色";
	["CONFIG_ENABLE_MINE"]	= "顯示採礦採集點";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "只有採礦角色";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "只於正在追蹤時";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "小地圖按鈕選項";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "小地圖追蹤選項";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "世界地圖選項";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "世界地圖追蹤選項";
	["CONFIG_HERB_FILTER_LABEL"]	= "要追蹤的草藥採集點";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "你確定你真要從你的採集資料庫中清掉此玩家分享的採集點嗎？此動作 無法 被反轉並將會自你的採集資料庫中移除 %d 個採集點。";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d 個採集點已經被永久地從你的採集助手資料庫中移除。";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "你真的希望移除所有此玩家所分享的採集點資料？";
	["CONFIG_MINE_FILTER_LABEL"]	= "要追蹤的礦物採集點";
	["CONFIG_MINIICON_ANGLE"]	= "按鈕角度：%d°";
	["CONFIG_MINIICON_DISTANCE"]	= "距離：%d";
	["CONFIG_MINIICON_ENABLE"]	= "顯示小地圖按鈕";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "小地圖添加";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "顯示匿名的採集點";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "匿名的不透明度：%d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "將匿名的採集點設為紅色";
	["CONFIG_MINIMAP_DISTANCE"]	= "距離：%d 碼";
	["CONFIG_MINIMAP_ENABLE"]	= "在小地圖上顯示說明提示";
	["CONFIG_MINIMAP_FADE_DIST"]	= "淡出於：%d 碼";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "淡出小地圖的註解";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "淡出的距離：%d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "圖示大小：%d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "檢視於：%d 碼";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "標記採集點為被檢視點";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "淡出被檢視點於：%d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "再檢視於：%d 秒";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "綠色化當檢視中";
	["CONFIG_MINIMAP_LABEL"]	= "小地圖選項";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "顯示：最接近 %d";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "預設不透明度：%d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "只在追蹤技能開啟時";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "當接近時轉變追蹤中圖示";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "追蹤於：%d 碼";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "啟用追蹤技能功能";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "圖示不透明度：%d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "要追蹤的寶箱採集點";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "更改設定檔：%1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "建立複製";
	["CONFIG_PROFILE_CREATE_NEW"]	= "建立新的";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "啟用一個目前的設定檔";
	["CONFIG_PROFILE_NEW"]	= "建立或替換一個設定檔";
	["CONFIG_PROFILE_NEW_LABEL"]	= "新設定檔名稱：";
	["CONFIG_SECTION_ABOUT"]	= "關於";
	["CONFIG_SECTION_GENERAL"]	= "通用";
	["CONFIG_SECTION_HEADER_CORE"]	= "核心選項";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "插件";
	["CONFIG_SECTION_MINIMAP"]	= "小地圖";
	["CONFIG_SECTION_OPEN"]	= "寶箱";
	["CONFIG_SECTION_PROFILES"]	= "設定檔";
	["CONFIG_SECTION_SHARING"]	= "分享";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "關於採集助手";
	["CONFIG_SECTION_TITLE_ARCH"]	= "考古學選項";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "主要採集助手選項";
	["CONFIG_SECTION_TITLE_HERB"]	= "草藥學過濾器選項";
	["CONFIG_SECTION_TITLE_MINE"]	= "採礦過濾器選項";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "小地圖採集助手選項";
	["CONFIG_SECTION_TITLE_OPEN"]	= "寶箱過濾器選項";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "設定，設置和編輯設定檔";
	["CONFIG_SECTION_TITLE_SHARING"]	= "同步化選項";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "分享黑名單列表";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "加入已收到的隊伍採集點到我的資料庫";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "啟用隊伍同步分享功能";
	["CONFIG_SHARING_GROUP_LABEL"]	= "團隊/隊伍分享";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "當收到隊伍採集點時顯示一個訊息";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "當送出隊伍採集點時顯示一個訊息";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "加入已收到的公會採集點到我的資料庫";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "啟用公會同步分享功能";
	["CONFIG_SHARING_GUILD_LABEL"]	= "公會分享";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "當收到公會採集點時顯示一個訊息";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "當送出公會採集點時顯示一個訊息";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "當增加自己的採集點時顯示一個訊息";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "私人通知";
	["CONFIG_TOOLTIP_COUNTS"]	= "顯示採集的數量";
	["CONFIG_TOOLTIP_DISTANCE"]	= "顯示採集點距離";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "顯示掉落率";
	["CONFIG_TOOLTIP_ENABLE"]	= "顯示提示窗";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "顯示最後看見的時間";
	["CONFIG_TOOLTIP_SOURCE"]	= "顯示採集點來源";
	["CONFIG_WORLDMAP_ENABLE"]	= "顯示世界地圖上的註解";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "圖示大小：%d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "顯示：%d 採集點";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "不透明度：%d%%";
	["ENABLE_OPEN"]	= "顯示寶箱採集點";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "當那個邪惡的超級壞蛋，死亡之翼的返回已經燒掉所有的草藥，融化所有的礦石和摧毀所有的寶箱後。 現在它們全部已經重新生長，重新結晶化，以及重新被海盜們再次藏起之後它們已經都出現在新的地點。 尋寶吧！！(舊世界資料已經被清除由於廣大的地理改變。)";
	["STORAGE_DB_VERSION_INVALID"]	= "警告！！！\n採集助手已偵測到你的資料庫版本是失效的。 請按下接受來清除你的資料庫，或是選擇忽略若你想要自行修復資料庫的話。";
	["STORAGE_DB_VERSION_NEWER"]	= "你擁有的採集資料庫太新了。 你目前的資料庫已被擱置直到你更新升級了採集助手。";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "距離";
	["REPORT_COLUMN_HEADER_REGION"]	= "地區";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "來源";
	["REPORT_COLUMN_HEADER_TYPE"]	= "類別";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "你真的要刪除 %d 的採集點？";
	["REPORT_DELETE_MARKED"]	= "刪除已標記的";
	["REPORT_MARKED_NODES_COUNT"]	= "已標記的採集點：%1";
	["REPORT_MARKING_NOTE"]	= "附註：當你標記採集點，它們將持續標記著直到你點選報告中的該欄物品，或使用解除標記鈕又或是離開遊戲時。";
	["REPORT_MARK_THESE"]	= "標記這些";
	["REPORT_SEARCH_BY_REGION"]	= "於地區";
	["REPORT_SEARCH_BY_SOURCE"]	= "於來源";
	["REPORT_SEARCH_BY_TYPE"]	= "於類別";
	["REPORT_SEND_MARKED"]	= "送出已標記";
	["REPORT_TITLE"]	= "採集報告";
	["REPORT_UNMARK_ALL"]	= "全部解除標記";
	["REPORT_UNMARK_THESE"]	= "解除標記這些";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "採集助手(Gatherer)是一個允許你紀錄你的採集點位置並顯示於你的大小地圖和採集助手附加的抬頭顯示模式的插件。並允許你向你的隊友、團隊成員以及朋友來分享你的採集資料。";
	["DESCRIPTION_LICENSE"]	= "採集助手(Gatherer)是一款基於 GNU GPL v2 的開放原始碼軟體。請查看插件目錄內附的gpl.txt 以瞭解完整的內容。";
	["LOADED_NOTIFICATION"]	= "採集助手 Gatherer v%1 -- 已載入！";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{警告：}}你的採集助手安裝似乎混和了不同版本的檔案。\n\n請確認你刪除了舊的：\n%1\n目錄，並重新安裝一個全新的自：\n%2\n然後再回報任何問題前請先完整地重新啟動 魔獸世界 。\n\n謝謝，\n  採集助手 Gatherer 開發團隊";
	["VERSION_MESSAGE"]	= "這是 採集助手 Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "採集助手(Gatherer)無法辨認出以下的區域：{{%1}}\n如果那些區域是新的區域，那麼這個並不是問題，而且你可以正常繼續。\n但如果那些區域不是新的區域，那麼請保持冷靜{{你的資料並沒有消失！}} 你的那些資料將會在你更新採集助手並進入遊戲後升級，然後才能繼續正常使用並收集新的採集點紀錄。\n\n{{為了方便，請更新升級採集助手 Gatherer。}}";

	-- Section: Generic Strings
	["ACCEPT"]	= "接受";
	["ALL"]	= "全部";
	["CANCEL"]	= "取消";
	["DELETE"]	= "刪除";
	["DONE"]	= "完成";
	["ENABLE"]	= "啟用";
	["IGNORE"]	= "忽略";
	["IGNORE_PLAYER"]	= "忽略玩家";
	["NO"]	= "不";
	["OKAY"]	= "好";
	["SEARCH"]	= "搜尋";
	["STOP_IGNORE"]	= "移除玩家";
	["STRATA_BACKGROUND"]	= "背景";
	["STRATA_HIGH"]	= "高";
	["STRATA_LOW"]	= "低";
	["STRATA_MEDIUM"]	= "中";
	["YES"]	= "是";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Click}} 來觸發採集點顯示。";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Right-Click}} 來查看採集回報。";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift-Click}} 來觸發抬頭顯示器式顯示。";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift-Right-Click}} 來編輯設置。";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "HUD 顯示選項";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "HUD 熱追蹤模式";
	["HUD_CONFIG_HIDING_LABEL"]	= "HUD 隱匿選項";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "全域 HUD 不透明度：%d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "觀看的角度：%d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "基底的顏色";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "暗化 HUD 來提升可視性";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "中心的顏色";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "啟用玩家視野(Field Of View)圈";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "淡出註解於：半徑 %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "熱追蹤的顏色";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "追蹤冷卻：%d 秒";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "顯示探索追蹤(熱追蹤)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "永不冷卻";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "追蹤軌跡寬度：%d 碼";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "在戰鬥中隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "當飛行時隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "在內部時隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "上坐騎時隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "於休息中隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "當潛行時隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "當游泳時隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "點選目標時隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "未上座騎時隱藏";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "註解大小：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "最低描畫每一畫框格的格率：%d fps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "水平偏移：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "垂直偏移：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "隊伍成員的顏色";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "顯示其他隊伍成員";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "隊伍圖示大小：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "透視等級：%0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "全域 HUD 半徑：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "註解範圍：%d 碼";
	["HUD_CONFIG_STRATA_LABEL"]	= "HUD 位層(描繪等級)";
	["HUD_CONFIG_USAGE_NOTE"]	= "使用抬頭顯示器(HUD)將會降低你的畫框速率(framerate)，若你開啟了熱追蹤功能會在畫出你經過路線的熱軌跡時降低更多的畫框速率。";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD 可視性選項";
	["HUD_DESCRIPTION"]	= "此 HUD 是一個允許你在你的螢幕上以抬頭顯示式重疊畫面的方式來追蹤採集點位置的導航元件。";
	["HUD_TITLE"]	= "採集助手抬頭顯示(HUD)插件";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "你的 CT_MapMod 資料已經匯入。";
	["IMPORT_CTMOD_NODATA"]	= "沒有發現任何要匯入的 CT_MapMod 資料。";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "採集助手";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "選項對話框開關";

	-- Section: Labels
	["GENERAL_LABEL"]	= "通用";
	["LABEL_CONFIG"]	= "設置";
	["LABEL_DENSITY_REPORT"]	= "採集點查詢";
	["LABEL_NOTE"]	= "註解";
	["LABEL_REPORT"]	= "採集回報";
	["MAP_NOTES_HIDE"]	= "隱藏物件";
	["MAP_NOTES_SHOW"]	= "顯示物件";
	["NOTIFICATIONS_TITLE"]	= "採集助手：警告";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "採集助手：顯示物件";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "放棄上傳。";
	["MASS_SHARING_ABORTED"]	= "已於 %1 處放棄";
	["MASS_SHARING_ACCEPTED"]	= "開始中...";
	["MASS_SHARING_ASKING"]	= "詢問中...";
	["MASS_SHARING_BUSY"]	= "忙碌中。";
	["MASS_SHARING_CLOSED"]	= "已經關閉。";
	["MASS_SHARING_COMPLETE"]	= "成功！";
	["MASS_SHARING_DONE"]	= "%1 已完成";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s 想要傳送給你 %2$d 採集助手的採集點。接受嗎？";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "你希望傳送 %1$s 採集點 給 %2$s ？\n(記得，他們必須要開啟採集回報[Gatherables Report]視窗才能接收。)";
	["MASS_SHARING_RECEIVED_COUNT"]	= "%1 已接收";
	["MASS_SHARING_REJECT"]	= "已被拒絕！";
	["MASS_SHARING_SENDING"]	= "傳送中...";
	["MASS_SHARING_SENT"]	= "%1 已傳送";
	["MASS_SHARING_TIMEOUT"]	= "已逾時。";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "虛空之塵花粉";
	["ORE_ADAMANTITE"]	= "堅鋼";
	["ORE_BLOODSTONE"]	= "次級血石";
	["ORE_COPPER"]	= "銅";
	["ORE_DARKIRON"]	= "黑鐵";
	["ORE_FELIRON"]	= "魔鐵";
	["ORE_GOLD"]	= "金";
	["ORE_INCENDICITE"]	= "火岩";
	["ORE_INDURIUM"]	= "精鐵";
	["ORE_IRON"]	= "鐵";
	["ORE_KHORIUM"]	= "克銀";
	["ORE_MITHRIL"]	= "秘銀";
	["ORE_NETHERCITE"]	= "虛空傳喚礦石";
	["ORE_OBSIDIAN"]	= "黑曜石";
	["ORE_RADAMANTITE"]	= "豐沃的堅鋼";
	["ORE_RTHORIUM"]	= "富瑟銀";
	["ORE_SILVER"]	= "銀";
	["ORE_THORIUM"]	= "瑟銀";
	["ORE_TIN"]	= "錫";
	["ORE_TRUESILVER"]	= "真銀";
	["TREASURE_BARREL"]	= "桶";
	["TREASURE_BLOODPETAL"]	= "血瓣花苗";
	["TREASURE_BOX"]	= "盒子";
	["TREASURE_CASK"]	= "桶";
	["TREASURE_CHEST"]	= "寶箱";
	["TREASURE_CLAM"]	= "巨型蚌殼";
	["TREASURE_CRATE"]	= "箱子";
	["TREASURE_FOOTLOCKER"]	= "提箱";
	["TREASURE_GLOWCAP"]	= "白閃菇";
	["TREASURE_NIGHTDRAGON"]	= "夜龍之息";
	["TREASURE_POWERCRYST"]	= "能量水晶";
	["TREASURE_SHELLFISHTRAP"]	= "貝殼陷阱";
	["TREASURE_SONGFLOWER"]	= "輕歌花";
	["TREASURE_UNGOROSOIL"]	= "安戈洛的泥土";
	["TREASURE_WHIPPERROOT"]	= "鞭根塊莖";
	["TREASURE_WINDBLOSSOM"]	= "風花果";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "匯入";
	["DATABASE_IMPORT_HEADER"]	= "要匯入的採集點資料庫：";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "地點";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# 採集點";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "百分比";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "類別";
	["DENSITY_SEARCH_TITLE"]	= "採集點密度搜尋";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 附加的掉落...";
	["NOTE_COUNT"]	= "已採集 %1 次";
	["NOTE_DISTANCE"]	= "距離: %1 碼";
	["NOTE_IMPORTED"]	= "匯入的採集";
	["NOTE_LASTVISITED"]	= "上次採集: %1";
	["NOTE_OVERALLDROPS"]	= "整體掉落率:";
	["NOTE_SOURCE"]	= "來源: %1";
	["NOTE_UNSKILLED"]	= "無法採集";

	-- Section: Time
	["DAYS"]	= "日";
	["DAYS_ABBR"]	= "日";
	["DAYS_ABBR_P1"]	= "日";
	["DAYS_P1"]	= "日";
	["HOURS"]	= "時";
	["HOURS_ABBR"]	= "時";
	["HOURS_ABBR_P1"]	= "時";
	["HOURS_P1"]	= "時";
	["MINUTES"]	= "分";
	["MINUTES_ABBR"]	= "分";
	["MINUTES_ABBR_P1"]	= "分";
	["MINUTES_P1"]	= "分";
	["SECONDS"]	= "秒";
	["SECONDS_ABBR"]	= "秒";
	["SECONDS_ABBR_P1"]	= "秒";
	["SECONDS_P1"]	= "秒";
	["WEEKS"]	= "周";
	["WEEKS_ABBR"]	= "周";
	["WEEKS_ABBR_P1"]	= "周";
	["WEEKS_P1"]	= "周";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "考古學";
	["TRADE_HERBALISM"]	= "草藥學";
	["TRADE_MINING"]	= "採礦";

}
