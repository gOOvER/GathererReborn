if GetLocale() ~= "zhCN" then return end

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

GathererLocalizations.zhCN = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "送出采集点 %1 给 %2";
	["COMM_NODE_SEND_TWO"]	= "送出采集点 %1 给 %2 和 %3";
	["COMM_RECEIVE_NODE"]	= "已接收采集点 %1 于 %2 从 %3 (%4)";
	["NODE_ADD"]	= "已增加采集点 %1";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "显示加载完成信息";
	["CONFIG_ALL_FILTER_NOTE"]	= "'%1' 将导致目前的过滤设定被忽略,并且强制显示该类别的所有采集点";
	["CONFIG_ARCH_MAX_NOTES"]	= "显示: 最靠近 %d";
	["CONFIG_ENABLE_HERB"]	= "显示采药点";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "仅当学会采药时显示";
	["CONFIG_ENABLE_MINE"]	= "显示采矿点";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "仅当学会采矿时显示";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "仅当正在跟踪时";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "小地图按钮选项";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "小地图跟踪选项";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "世界地图选项";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "世界地图跟踪选项";
	["CONFIG_HERB_FILTER_LABEL"]	= "要跟踪的采药点";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "你确定要从资料库中删除此玩家分享的采集点吗? 这将永久性地删除掉 %d 个采集点";
	["CONFIG_IGNORE_PURGE_DONE"]	= "%d 个采集点已被永久地从资料库中删除";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "你真的想删除此玩家分享的所有采集点数据吗?";
	["CONFIG_MINE_FILTER_LABEL"]	= "要跟踪的采矿点";
	["CONFIG_MINIICON_ANGLE"]	= "按钮角度: %d°";
	["CONFIG_MINIICON_DISTANCE"]	= "距离: %d";
	["CONFIG_MINIICON_ENABLE"]	= "显示小地图按钮";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "小地图附加";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "显示匿名的采集点";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "匿名采集点的不透明度：%d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "将匿名的采集点设为红色";
	["CONFIG_MINIMAP_DISTANCE"]	= "距离: %d 码";
	["CONFIG_MINIMAP_ENABLE"]	= "在小地图上显示注释";
	["CONFIG_MINIMAP_FADE_DIST"]	= "淡出于: %d 码";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "淡出小地图注释";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "淡出距离: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "图标大小: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "显示于：%d 码";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "标记采集点为监视点";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "监视点淡出: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "再检查于：%d 秒";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "检查中的显示为绿色";
	["CONFIG_MINIMAP_LABEL"]	= "小地图选项";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "显示: %d 最接近";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "预设不透明度: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "只在跟踪技能开启时";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "当接近时改变追踪图标";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "跟踪于：%d 码";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "开启跟踪技能";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "图标不透平度: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "要跟踪的宝箱点";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "更改设定档：%1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "创建副本";
	["CONFIG_PROFILE_CREATE_NEW"]	= "新建";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "启用一个当前的设定档";
	["CONFIG_PROFILE_NEW"]	= "创建或替换一个设定档";
	["CONFIG_PROFILE_NEW_LABEL"]	= "新设定档名";
	["CONFIG_SECTION_ABOUT"]	= "关于";
	["CONFIG_SECTION_GENERAL"]	= "通用";
	["CONFIG_SECTION_HEADER_CORE"]	= "核心选项";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "插件";
	["CONFIG_SECTION_MINIMAP"]	= "小地图";
	["CONFIG_SECTION_OPEN"]	= "宝箱";
	["CONFIG_SECTION_PROFILES"]	= "设定档";
	["CONFIG_SECTION_SHARING"]	= "分享";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "关于Gatherer";
	["CONFIG_SECTION_TITLE_ARCH"]	= "考古选项";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "主选项";
	["CONFIG_SECTION_TITLE_HERB"]	= "采药过滤器";
	["CONFIG_SECTION_TITLE_MINE"]	= "采矿过滤器";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "小地图选项";
	["CONFIG_SECTION_TITLE_OPEN"]	= "宝箱过滤器";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "新建，设置和编辑设定档";
	["CONFIG_SECTION_TITLE_SHARING"]	= "同步选项";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "分享黑名单";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "加入队友发送的采集信息到数据库";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "开启小队同步";
	["CONFIG_SHARING_GROUP_LABEL"]	= "团队分享";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "当收到小队发送的采集信息时,显示一条信息";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "当发送给队友采集信息时,显示一条信息";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "加入公会会员发送的采集信息到资料库";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "开启公会同步";
	["CONFIG_SHARING_GUILD_LABEL"]	= "公会分享";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "当收到公会会员发送的采集信息时,显示一条信息";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "当发送给公会会员采集信息时,显示一条信息";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "当自己自己的采集点到数据库时,显示一条信息";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "私人通知";
	["CONFIG_TOOLTIP_COUNTS"]	= "显示采集到的数量";
	["CONFIG_TOOLTIP_DISTANCE"]	= "显示采集点距离";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "显示掉落率";
	["CONFIG_TOOLTIP_ENABLE"]	= "显示鼠标提示";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "显示最近一次发现的时间";
	["CONFIG_TOOLTIP_SOURCE"]	= "显示采集点来源";
	["CONFIG_WORLDMAP_ENABLE"]	= "在世界地图上显示采集点";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "图标大小: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "显示: %d 采集点";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "不透明度: %d%%";
	["ENABLE_OPEN"]	= "显示宝箱采集点";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "当那个邪恶的超级坏蛋,死亡之翼的返回已经烧掉所有的草药,融化所有的矿石和摧毁所有的宝箱后 现在它们全部已经重新生长,重新结晶化,以及重新被海盗们再次藏起之后它们已经都出现在新的地点 寻宝吧!!(旧世界资料已经被清除由于广大的地理改变";
	["STORAGE_DB_VERSION_INVALID"]	= "警告！！！\n采集助手已侦测到你的数据库版本是失效的。 请按下接受来清除你的数据库，或是选择忽略若你想要自行修复数据库的话。";
	["STORAGE_DB_VERSION_NEWER"]	= "你拥有的采集数据库太新了。 你目前的数据库已被搁置直到你更新升级了采集助手。";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "距离";
	["REPORT_COLUMN_HEADER_REGION"]	= "地区";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "来源";
	["REPORT_COLUMN_HEADER_TYPE"]	= "种类";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "你真的要删除 %d 的采集点？";
	["REPORT_DELETE_MARKED"]	= "删除已标记的";
	["REPORT_MARKED_NODES_COUNT"]	= "已标记的采集点：%1";
	["REPORT_MARKING_NOTE"]	= "附注：当你标记采集点后，它们将持续保持标记状态,直到你在看报告中点选该物品，使用解除标记按钮或离开游戏。";
	["REPORT_MARK_THESE"]	= "标记这些";
	["REPORT_SEARCH_BY_REGION"]	= "依照地区";
	["REPORT_SEARCH_BY_SOURCE"]	= "依照来源";
	["REPORT_SEARCH_BY_TYPE"]	= "依照种类";
	["REPORT_SEND_MARKED"]	= "发送已标记的";
	["REPORT_TITLE"]	= "采集报告";
	["REPORT_UNMARK_ALL"]	= "取消所有标记";
	["REPORT_UNMARK_THESE"]	= "取消这些的标记";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "采集助手(Gatherer)是一个允许你纪录你的采集点位置并显示于你的大小地图和采集助手附加的抬头显示模式的插件。并允许你向你的队友、团队成员以及朋友来分享你的采集数据。";
	["DESCRIPTION_LICENSE"]	= "采集助手(Gatherer)是一款基于 GNU GPL v2 的开放原始码软件。请查看插件目录内附的gpl.txt 以了解完整的内容。";
	["LOADED_NOTIFICATION"]	= "采集助手 Gatherer v%1 -- 已载入！---BY 主宰之剑 永恒残星";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{警告：}}你的采集助手似乎混和了不同版本的文件。\n\n请确认你删除了旧版本：\n%1\n目录，并从\n%2\n重新安装一个全新的\n先完整地重新启动魔兽世界后再回报任何可能出现的问题 。\n\n谢谢，\n  采集助手 Gatherer 开发团队";
	["VERSION_MESSAGE"]	= "采集助手 Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "采集助手(Gatherer)无法辨认出以下的区域：{{%1}}\n如果那些区域是新的区域，那么这个并不是问题，而且你可以正常继续。\n但如果那些区域不是新的区域，那么请保持冷静{{你的数据并没有消失！}} 你的那些数据将会在你更新采集助手并进入游戏后升级，然后才能继续正常使用并收集新的采集点纪录。\n\n{{为了方便，请更新升级采集助手 Gatherer。}}";

	-- Section: Generic Strings
	["ACCEPT"]	= "接受";
	["ALL"]	= "全部";
	["CANCEL"]	= "取消";
	["DELETE"]	= "删除";
	["DONE"]	= "完成";
	["ENABLE"]	= "启用";
	["IGNORE"]	= "忽略";
	["IGNORE_PLAYER"]	= "忽略玩家";
	["NO"]	= "不";
	["OKAY"]	= "OK";
	["SEARCH"]	= "搜索";
	["STOP_IGNORE"]	= "移除玩家";
	["STRATA_BACKGROUND"]	= "背景";
	["STRATA_HIGH"]	= "高";
	["STRATA_LOW"]	= "低";
	["STRATA_MEDIUM"]	= "中";
	["YES"]	= "是";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{点击}} 来启动采集点显示。";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{右击}} 来查看采集报告。";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift+点击}} 来启动HUD显示。";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift+右击}} 來編輯编辑設置。";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "HUD 显示选项";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "HUD 热追踪模式";
	["HUD_CONFIG_HIDING_LABEL"]	= "HUD 隐藏选项";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "全局 HUD 不透明度：%d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "视角：%d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "底色";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "使HUD变暗(提升可视性)";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "中心的颜色";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "启用玩家视野(Field Of View)圈";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "淡出注释于：半径 %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "热追踪颜色";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "追踪冷却：%d 秒";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "显示探索追踪(热追踪)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "永不冷却";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "追踪轨迹宽度：%d 码";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "战斗中隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "飞行时隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "室内隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "骑乘时隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "休息时隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "潜行时隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "游泳时隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "选定目标时隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "未上座骑时隐藏";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "注释大小：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "最低帧数：%d fps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "水平偏移：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "垂直偏移：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "队友颜色";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "显示其他队友";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "小队图标大小：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "透视等级：%0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "全局 HUD 半径：%d 像素";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "注释范围：%d 码";
	["HUD_CONFIG_STRATA_LABEL"]	= "HUD 位层(图层等级)";
	["HUD_CONFIG_USAGE_NOTE"]	= "使用HUD将会降低你的帧数，若你开启了热追踪功能会在绘制热轨迹时降低更多的帧数。";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD 可视性选项";
	["HUD_DESCRIPTION"]	= "HUD是一个允许你在你的屏幕上显示雷达的方式来追踪采集点位置的导航模块。";
	["HUD_TITLE"]	= "采集助手HUD插件";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "你的 CT_MapMod 数据已经导入。";
	["IMPORT_CTMOD_NODATA"]	= "没有发现任何要导入的 CT_MapMod 数据。";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "采集助手";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "显示/关闭选项对话框";

	-- Section: Labels
	["GENERAL_LABEL"]	= "通用";
	["LABEL_CONFIG"]	= "设置";
	["LABEL_DENSITY_REPORT"]	= "采集点搜索";
	["LABEL_NOTE"]	= "注释";
	["LABEL_REPORT"]	= "采集报告";
	["MAP_NOTES_HIDE"]	= "隐藏物品";
	["MAP_NOTES_SHOW"]	= "显示物品";
	["NOTIFICATIONS_TITLE"]	= "采集助手:警报";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "放弃上传。";
	["MASS_SHARING_ABORTED"]	= "已于 %1 时放弃";
	["MASS_SHARING_ACCEPTED"]	= "开始";
	["MASS_SHARING_ASKING"]	= "请求";
	["MASS_SHARING_BUSY"]	= "用户忙";
	["MASS_SHARING_CLOSED"]	= "已关闭";
	["MASS_SHARING_COMPLETE"]	= "成功";
	["MASS_SHARING_DONE"]	= "结束于 %1";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s 想发送给你 %2$d 采集点 接受吗?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "你希望发送 %1$s 采集点给 %2$s 吗？\n(注意，他们必须要开启采集报告[Gatherables Report]窗口才能接收。)";
	["MASS_SHARING_RECEIVED_COUNT"]	= "接受 %1";
	["MASS_SHARING_REJECT"]	= "拒绝";
	["MASS_SHARING_SENDING"]	= "发送中";
	["MASS_SHARING_SENT"]	= "发送 %1";
	["MASS_SHARING_TIMEOUT"]	= "超时";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "灵尘花粉";
	["ORE_ADAMANTITE"]	= "精金";
	["ORE_BLOODSTONE"]	= "次级血石";
	["ORE_COPPER"]	= "铜矿";
	["ORE_DARKIRON"]	= "黑铁";
	["ORE_FELIRON"]	= "魔铁";
	["ORE_GOLD"]	= "金";
	["ORE_INCENDICITE"]	= "火岩";
	["ORE_INDURIUM"]	= "精铁碎片";
	["ORE_IRON"]	= "铁矿石";
	["ORE_KHORIUM"]	= "氪金";
	["ORE_MITHRIL"]	= "秘银";
	["ORE_NETHERCITE"]	= "虚空";
	["ORE_OBSIDIAN"]	= "黑曜石";
	["ORE_RADAMANTITE"]	= "富精金";
	["ORE_RTHORIUM"]	= "富瑟";
	["ORE_SILVER"]	= "银";
	["ORE_THORIUM"]	= "瑟银";
	["ORE_TIN"]	= "锡";
	["ORE_TRUESILVER"]	= "真银";
	["TREASURE_BARREL"]	= "桶";
	["TREASURE_BLOODPETAL"]	= "血瓣花苗";
	["TREASURE_BOX"]	= "箱子";
	["TREASURE_CASK"]	= "桶";
	["TREASURE_CHEST"]	= "宝箱";
	["TREASURE_CLAM"]	= "巨型蚌壳";
	["TREASURE_CRATE"]	= "补给箱";
	["TREASURE_FOOTLOCKER"]	= "手提箱";
	["TREASURE_GLOWCAP"]	= "亮顶蘑菇";
	["TREASURE_NIGHTDRAGON"]	= "夜龙之息";
	["TREASURE_POWERCRYST"]	= "能量水晶";
	["TREASURE_SHELLFISHTRAP"]	= "贝壳陷阱";
	["TREASURE_SONGFLOWER"]	= "轻歌花";
	["TREASURE_UNGOROSOIL"]	= "安戈洛的泥土";
	["TREASURE_WHIPPERROOT"]	= "鞭根块茎";
	["TREASURE_WINDBLOSSOM"]	= "风花果";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "导入";
	["DATABASE_IMPORT_HEADER"]	= "要导入的采集点数据库：";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "地区";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# 采集点";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "百分比";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "种类";
	["DENSITY_SEARCH_TITLE"]	= "采集点密度搜索";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1附加掉落...";
	["NOTE_COUNT"]	= "已采过%1";
	["NOTE_DISTANCE"]	= "距离: %1码";
	["NOTE_IMPORTED"]	= "导入采集数据";
	["NOTE_LASTVISITED"]	= "上次访问: %1";
	["NOTE_OVERALLDROPS"]	= "总体下降率:";
	["NOTE_SOURCE"]	= "来源: %1";
	["NOTE_UNSKILLED"]	= "无法采集";

	-- Section: Time
	["DAYS"]	= "天";
	["DAYS_ABBR"]	= "天";
	["DAYS_ABBR_P1"]	= "天";
	["DAYS_P1"]	= "天";
	["HOURS"]	= "小时";
	["HOURS_ABBR"]	= "时";
	["HOURS_ABBR_P1"]	= "时";
	["HOURS_P1"]	= "小时";
	["MINUTES"]	= "分钟";
	["MINUTES_ABBR"]	= "分";
	["MINUTES_ABBR_P1"]	= "分";
	["MINUTES_P1"]	= "分钟";
	["SECONDS"]	= "秒";
	["SECONDS_ABBR"]	= "秒";
	["SECONDS_ABBR_P1"]	= "秒";
	["SECONDS_P1"]	= "秒";
	["WEEKS"]	= "星期";
	["WEEKS_ABBR"]	= "周";
	["WEEKS_ABBR_P1"]	= "周";
	["WEEKS_P1"]	= "星期";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "考古学";
	["TRADE_HERBALISM"]	= "草药学";
	["TRADE_MINING"]	= "采矿";

}
