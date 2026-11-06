if GetLocale() ~= "koKR" then return end

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

GathererLocalizations.koKR = {

	-- Section: AddOn Communication
	["COMM_NODE_SEND"]	= "%1 에서 %2로 수집 보냄";
	["COMM_NODE_SEND_TWO"]	= "%1 에서 %2 와 %3로 수집 보냄";
	["NODE_ADD"]	= "%1에서 수집 추가됨";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "읽음 메세지 표시";
	["CONFIG_ARCH_MAX_NOTES"]	= "표시: %d 근접";
	["CONFIG_ENABLE_HERB"]	= "약초 노드 표시";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "약초만";
	["CONFIG_ENABLE_MINE"]	= "광물 노드 표시";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "광물만";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "추적 가능한 것만";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "미니맵 버튼 옵션";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "미니맵 추적 옵션";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "월드맵 옵션";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "월드맵 추적 옵션";
	["CONFIG_HERB_FILTER_LABEL"]	= "약초 노드 추적";
	["CONFIG_IGNORE_PURGE_DONE"]	= "Gatherer 데이터에서 %d 노드가 영구적으로 제거됩니다.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "이 플레이어에게 공유한 모든 노드를 제거하기 원합니까?";
	["CONFIG_MINE_FILTER_LABEL"]	= "광물 노드 추적";
	["CONFIG_MINIICON_ANGLE"]	= "버튼 각도: %d";
	["CONFIG_MINIICON_DISTANCE"]	= "거리: %d";
	["CONFIG_MINIICON_ENABLE"]	= "미니맵 버튼 표시";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "미니맵 추가";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "익명의 노드 표시";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "근접 투명도: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "익명의 노드 붉은색";
	["CONFIG_MINIMAP_DISTANCE"]	= "거리: %d 야드";
	["CONFIG_MINIMAP_ENABLE"]	= "미니맵에 노트 표시";
	["CONFIG_MINIMAP_FADE_DIST"]	= "사라짐: %d 야드";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "미니 노트 희미해짐";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "희미해지는 거리: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "아이콘 크기: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "검사: %d 야드";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "표시된 노드 검사됨";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "검사 사라짐: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "재검사: %d 초";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "검사중 초록색";
	["CONFIG_MINIMAP_LABEL"]	= "미니맵 옵션";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "표시: %d 근접";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "기본 투명도: %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "활성화된 추적 스킬만";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "닫을때 추적 아이콘 변환";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "추적: %d 야드";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "추적 스킬 특성 활성화";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "아이콘 투명도: %d%%";
	["CONFIG_OPEN_FILTER_LABEL"]	= "보물 노드 추적";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "프로필 변경: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "복사 생성";
	["CONFIG_PROFILE_CREATE_NEW"]	= "새로 생성";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "현제 프로필 활성화";
	["CONFIG_PROFILE_NEW"]	= "프로필 생성 또는 대체";
	["CONFIG_PROFILE_NEW_LABEL"]	= "새 프로파일 이름:";
	["CONFIG_SECTION_ABOUT"]	= "대해서";
	["CONFIG_SECTION_GENERAL"]	= "일반";
	["CONFIG_SECTION_HEADER_CORE"]	= "핵심 옵션";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "플러그인";
	["CONFIG_SECTION_MINIMAP"]	= "미니맵";
	["CONFIG_SECTION_OPEN"]	= "보물";
	["CONFIG_SECTION_PROFILES"]	= "프로필";
	["CONFIG_SECTION_SHARING"]	= "공유";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "Gatherer에 대해서";
	["CONFIG_SECTION_TITLE_ARCH"]	= "고고학 옵션";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "주 Gatherer 옵션";
	["CONFIG_SECTION_TITLE_HERB"]	= "약초 필터 옵션";
	["CONFIG_SECTION_TITLE_MINE"]	= "광물 필터 옵션";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "미니맵 Gatherer 옵션";
	["CONFIG_SECTION_TITLE_OPEN"]	= "보물 필터 옵션";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "셋업, 프로필 수정과 설정";
	["CONFIG_SECTION_TITLE_SHARING"]	= "동기화 옵션";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "공유 블랙리스트";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "나의 데이터에 그룹에서 받은 수집 추가";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "그룹 동기화 활성화";
	["CONFIG_SHARING_GROUP_LABEL"]	= "공격대/파티 공유";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "그룹 수집을 받았을 때 메세지 출력";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "그룹 수집 보낼때 메세지 출력";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "나의 데이터에 길드 수집 추가됨";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "길드 동기화 활성화";
	["CONFIG_SHARING_GUILD_LABEL"]	= "길드 공유";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "길드 수집을 받았을 때 메세지 출력";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "길드 수집을 보낼때 메세지 출력";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "DB에 나의 수집이 추가될 때 메세지 출력";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "개인 경고";
	["CONFIG_TOOLTIP_COUNTS"]	= "수집 갯수 표시";
	["CONFIG_TOOLTIP_DISTANCE"]	= "노드 거리 표시";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "드랍율 표시";
	["CONFIG_TOOLTIP_ENABLE"]	= "툴팁 표시";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "마지막 목격 시간 표시";
	["CONFIG_TOOLTIP_SOURCE"]	= "노트 소스 표시";
	["CONFIG_WORLDMAP_ENABLE"]	= "월드맵에 노트 표시";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "아이콘 사이즈: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "표시: %d 노트";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "투명도: %d%%";
	["ENABLE_OPEN"]	= "보물 노드 표시";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "거리";
	["REPORT_COLUMN_HEADER_REGION"]	= "지역";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "소스";
	["REPORT_COLUMN_HEADER_TYPE"]	= "종류";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "%d Gatherer 노드를 지우시겠습니까?";
	["REPORT_DELETE_MARKED"]	= "마크 삭제";
	["REPORT_MARKED_NODES_COUNT"]	= "마크된 노드: %1";
	["REPORT_MARK_THESE"]	= "이것 마크";
	["REPORT_SEARCH_BY_REGION"]	= "지역에";
	["REPORT_SEARCH_BY_SOURCE"]	= "소스에";
	["REPORT_SEARCH_BY_TYPE"]	= "종류에";
	["REPORT_SEND_MARKED"]	= "마크 보냄";
	["REPORT_TITLE"]	= "수집된 보고서";
	["REPORT_UNMARK_ALL"]	= "모든 마크 해제";
	["REPORT_UNMARK_THESE"]	= "이것 마크 해제";

	-- Section: Generic Strings
	["ACCEPT"]	= "수락";
	["ALL"]	= "전체";
	["CANCEL"]	= "취소";
	["DELETE"]	= "삭제";
	["DONE"]	= "완료";
	["ENABLE"]	= "활성";
	["IGNORE"]	= "무시";
	["IGNORE_PLAYER"]	= "무시한 플레이어";
	["NO"]	= "아니요";
	["OKAY"]	= "OK";
	["SEARCH"]	= "검색";
	["STOP_IGNORE"]	= "플레이어 제거";
	["STRATA_BACKGROUND"]	= "배경";
	["STRATA_HIGH"]	= "높음";
	["STRATA_LOW"]	= "낮음";
	["STRATA_MEDIUM"]	= "중간";
	["YES"]	= "예";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "{{Click}} 노드 표시/끄기";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "{{Right-Click}} 수집 보고서 보기";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "{{Shift-Click}} HUD 표시/끄기";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "{{Shift-Right-Click}} 설정 수정";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "HUD 표시 옵션";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "HUD 온도 추적 모드";
	["HUD_CONFIG_HIDING_LABEL"]	= "HUD 숨김 옵션";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "시야 각도: %d";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "중앙 색";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "온도 색";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "추적 쿨타임: %d 초";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "경로 추적 표시(온도)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "쿨타임 없음";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "추적 자국 넓이: %d 야드";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "전투중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "비행중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "안에 있는중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "탈것타는 중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "휴식중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "은신중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "수영중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "타겟팅중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "걷는중에 숨김";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "노트 크기: %d 픽셀";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "수평 오프셋: %d 픽셀";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "수직 오프셋: %d 픽셀";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "파티 맴버 색";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "다른 파티 맴버 표시";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "파티 아이콘 크기: %d 픽셀";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "시각 레벨: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "노트 범위: %d 야드";
	["HUD_CONFIG_STRATA_LABEL"]	= "HUD 층 (레벨 그림)";
	["HUD_CONFIG_USAGE_NOTE"]	= "HUD 사용시 프레임 저하가 생기며, \"온도\" 추적 모드 의 온도 자국 유지시 프레임 저하가 더 발생합니다.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD 가시거리 옵션";
	["HUD_DESCRIPTION"]	= "HUD는 화면에 신속한 스타일로 지역의 수집가능한 요소를 추적할수 있게 해주는 네비게이션 입니다.";
	["HUD_TITLE"]	= "Gatherer 신속한 표시 플러그인";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "CT_MapMod 데이터가 변환 되었습니다.";
	["IMPORT_CTMOD_NODATA"]	= "변환할 CT_MapMod 데이터를 찾을수 없습니다.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "야생 철쭉";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "야생 철쭉";

	-- Section: Labels
	["GENERAL_LABEL"]	= "일반";
	["LABEL_CONFIG"]	= "설정";
	["LABEL_DENSITY_REPORT"]	= "노드 검색";
	["LABEL_NOTE"]	= "노트";
	["LABEL_REPORT"]	= "수집된 보고서";
	["MAP_NOTES_HIDE"]	= "아이템 숨김";
	["MAP_NOTES_SHOW"]	= "아이템 보기";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: 경고";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "업로드 취소됨.";
	["MASS_SHARING_ABORTED"]	= "%1에 취소됨";
	["MASS_SHARING_ACCEPTED"]	= "시작중...";
	["MASS_SHARING_ASKING"]	= "질의중...";
	["MASS_SHARING_BUSY"]	= "유저 바쁨.";
	["MASS_SHARING_CLOSED"]	= "닫힘.";
	["MASS_SHARING_COMPLETE"]	= "성공!";
	["MASS_SHARING_DONE"]	= "%1 완료됨";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%2$d Gatherer 노드를 %1$s 당신에가 보내기를 원합니다. 수락?";
	["MASS_SHARING_RECEIVED_COUNT"]	= "%1 받음";
	["MASS_SHARING_REJECT"]	= "거절!";
	["MASS_SHARING_SENDING"]	= "전송중...";
	["MASS_SHARING_SENT"]	= "%1 보냄";
	["MASS_SHARING_TIMEOUT"]	= "시간 초과.";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "황천티끌 꽃가루";
	["ORE_ADAMANTITE"]	= "아다만타이트";
	["ORE_BLOODSTONE"]	= "저급 혈석";
	["ORE_COPPER"]	= "구리";
	["ORE_DARKIRON"]	= "검은 무쇠";
	["ORE_FELIRON"]	= "지옥 무쇠";
	["ORE_GOLD"]	= "금";
	["ORE_INCENDICITE"]	= "발연";
	["ORE_INDURIUM"]	= "인듀리움";
	["ORE_IRON"]	= "철";
	["ORE_KHORIUM"]	= "코륨";
	["ORE_MITHRIL"]	= "미스릴";
	["ORE_NETHERCITE"]	= "황천연";
	["ORE_OBSIDIAN"]	= "흑요석";
	["ORE_RADAMANTITE"]	= "풍부한 아다만타이트";
	["ORE_RTHORIUM"]	= "풍부한 토륨";
	["ORE_SILVER"]	= "은";
	["ORE_THORIUM"]	= "토륨";
	["ORE_TIN"]	= "주석";
	["ORE_TRUESILVER"]	= "진은";
	["TREASURE_BARREL"]	= "통";
	["TREASURE_BLOODPETAL"]	= "붉은꽃잎 씨앗";
	["TREASURE_BOX"]	= "상자";
	["TREASURE_CASK"]	= "과즙통";
	["TREASURE_CHEST"]	= "보물 상자";
	["TREASURE_CLAM"]	= "대합";
	["TREASURE_CRATE"]	= "상자";
	["TREASURE_FOOTLOCKER"]	= "사물함";
	["TREASURE_GLOWCAP"]	= "초롱버섯";
	["TREASURE_NIGHTDRAGON"]	= "어둠용의 숨결";
	["TREASURE_POWERCRYST"]	= "마력의 수정";
	["TREASURE_SHELLFISHTRAP"]	= "가재 통발";
	["TREASURE_SONGFLOWER"]	= "노래꽃";
	["TREASURE_UNGOROSOIL"]	= "운고로 토양";
	["TREASURE_WHIPPERROOT"]	= "채찍뿌리 줄기";
	["TREASURE_WINDBLOSSOM"]	= "바람꽃 열매";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "지역";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# 노드";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "퍼센트";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "종류";
	["DENSITY_SEARCH_TITLE"]	= "노드 밀도 검색";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 추가 드랍됨.";
	["NOTE_COUNT"]	= "%1번 채집(채광)함";
	["NOTE_DISTANCE"]	= "%1 미터 떨어짐";
	["NOTE_IMPORTED"]	= "게더러에서 가져오기";
	["NOTE_LASTVISITED"]	= "마지막 수집: %1";
	["NOTE_OVERALLDROPS"]	= "전체 드랍율:";
	["NOTE_SOURCE"]	= "정보 제공: %1";
	["NOTE_UNSKILLED"]	= "채집(채광)기술을 배우지 않음";

	-- Section: Time
	["DAYS"]	= "일";
	["DAYS_ABBR"]	= "일";
	["DAYS_ABBR_P1"]	= "일";
	["DAYS_P1"]	= "일";
	["HOURS"]	= "시";
	["HOURS_ABBR"]	= "시";
	["HOURS_ABBR_P1"]	= "시간";
	["HOURS_P1"]	= "시간";
	["MINUTES"]	= "분";
	["MINUTES_ABBR"]	= "분";
	["MINUTES_ABBR_P1"]	= "분";
	["MINUTES_P1"]	= "분";
	["SECONDS"]	= "초";
	["SECONDS_ABBR"]	= "초";
	["SECONDS_ABBR_P1"]	= "초";
	["SECONDS_P1"]	= "초";
	["WEEKS"]	= "주";
	["WEEKS_ABBR"]	= "주";
	["WEEKS_ABBR_P1"]	= "주";
	["WEEKS_P1"]	= "몇주";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "고고학";
	["TRADE_HERBALISM"]	= "약초채집";
	["TRADE_MINING"]	= "채광";

}
