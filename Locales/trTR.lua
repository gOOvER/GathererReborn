if GetLocale() ~= "trTR" then return end

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

GathererLocalizations.trTR = {

	-- Section: AddOn Communication
	["COMM_RECEIVE_NODE"]	= "%3 (%4) tarafından %1, %2'de alındı.";

	-- Section: Configuration
	["CONFIG_ABOUT_LOADED_ENABLE"]	= "Yüklenen mesajı göster";
	["CONFIG_ALL_FILTER_NOTE"]	= "%1'lik seçenekler, geçerli filtrelerin yok sayılıp, o kategorideki tüm noktaların gösterilmesine sebep olur.";
	["CONFIG_ARCH_MAX_NOTES"]	= "En yakın %d kadarını göster.";
	["CONFIG_ENABLE_HERB"]	= "Bitki noktalarını göster.";
	["CONFIG_ENABLE_HERB_HERBALIST_ONLY"]	= "Bitkicilere Özel";
	["CONFIG_ENABLE_MINE"]	= "Maden noktalarını göster";
	["CONFIG_ENABLE_MINE_MINER_ONLY"]	= "Madencilere özel";
	["CONFIG_ENABLE_ONLY_IF_TRACKING"]	= "Sadece takip ediliyorsa";
	["CONFIG_GENERAL_MINIICON_LABEL"]	= "Minimap düğmesi seçenekleri";
	["CONFIG_GENERAL_MINIMAP_TRACKING_LABEL"]	= "Minimap takip seçenekleri";
	["CONFIG_GENERAL_WORLDMAP_LABEL"]	= "Büyük harita seçenekleri";
	["CONFIG_GENERAL_WORLDMAP_TRACKING_LABEL"]	= "Büyük harita takip seçenekleri";
	["CONFIG_HERB_FILTER_LABEL"]	= "Takip edilecek bitki noktaları";
	["CONFIG_IGNORE_PURGE_CONFIRM"]	= "Bu kişiden gelen tüm paylaşımları silmek istediğinize emin misiniz? Bu işlem geri ALINAMAZ ve %d noktayı Gatherer veritabanınızdan kaldırır.";
	["CONFIG_IGNORE_PURGE_DONE"]	= "Gatherer veritabanınızdan %d nokta tamamen kaldırıldı.";
	["CONFIG_IGNORE_PURGE_QUESTION"]	= "Bu kişiden gelen tüm noktaları kaldırmak istiyor musunuz?";
	["CONFIG_MINE_FILTER_LABEL"]	= "Takip edilecek maden noktaları";
	["CONFIG_MINIICON_ANGLE"]	= "Buton açısı: %d°";
	["CONFIG_MINIICON_DISTANCE"]	= "Menzil: %d";
	["CONFIG_MINIICON_ENABLE"]	= "Minimap Düğmesini Göster";
	["CONFIG_MINIMAP_ADD_LABEL"]	= "Minimap Ek";
	["CONFIG_MINIMAP_ANON_ENABLE"]	= "Anonim noktaları göster";
	["CONFIG_MINIMAP_ANON_OPACITY"]	= "Anon şeffaflığı: %d%%";
	["CONFIG_MINIMAP_ANON_TINT"]	= "Anonim noktaları kırmızıya boya";
	["CONFIG_MINIMAP_DISTANCE"]	= "Menzil: %d yard";
	["CONFIG_MINIMAP_ENABLE"]	= "Notları Minimap'te göster";
	["CONFIG_MINIMAP_FADE_DIST"]	= "Silikleştir: %d yard";
	["CONFIG_MINIMAP_FADE_ENABLE"]	= "mini-notları silikleştir";
	["CONFIG_MINIMAP_FADE_PERCENT"]	= "Silikleştirme menzili: %d%%";
	["CONFIG_MINIMAP_ICON_SIZE"]	= "İkon boyutu: %d";
	["CONFIG_MINIMAP_INSPECT_DIST"]	= "Şu kadar alanı incele: %d yard";
	["CONFIG_MINIMAP_INSPECT_ENABLE"]	= "Noktaları, incelendikçe işaretle.";
	["CONFIG_MINIMAP_INSPECT_FADING"]	= "İnceleneni silikleştir: %d%%";
	["CONFIG_MINIMAP_INSPECT_TIMEOUT"]	= "Tekrar incele: %d saniye";
	["CONFIG_MINIMAP_INSPECT_TINT_ENABLE"]	= "İncelerken yeşile boya";
	["CONFIG_MINIMAP_LABEL"]	= "Minimap seçenekleri";
	["CONFIG_MINIMAP_MAX_NOTES"]	= "Göster: En yakın %d tane";
	["CONFIG_MINIMAP_NOTE_OPACITY"]	= "Varsayılan şeffaflık:  %d%%";
	["CONFIG_MINIMAP_TRACKING_ACTIVE_ONLY"]	= "Sadece aktif takip becerisi için";
	["CONFIG_MINIMAP_TRACKING_CIRCLE_ENABLE"]	= "Yakınlaştıkça izleme ikonuna çevir.";
	["CONFIG_MINIMAP_TRACKING_DISTANCE"]	= "İzleme menzili: %d yard";
	["CONFIG_MINIMAP_TRACKING_ENABLE"]	= "İzleme yeteneğini aktif et.";
	["CONFIG_OPEN_FILTER_LABEL"]	= "İzlenecek hazine noktaları";
	["CONFIG_PROFILE_CHANGE_NOTIFICATION"]	= "Profil değiştiriliyor: %1";
	["CONFIG_PROFILE_CREATE_COPY"]	= "Kopya oluştur";
	["CONFIG_PROFILE_CREATE_NEW"]	= "Yeni oluştur";
	["CONFIG_PROFILE_CURRENT_LABEL"]	= "Şuan ki profili aktif et";
	["CONFIG_PROFILE_NEW"]	= "Bir profili değiştir veya oluştur";
	["CONFIG_PROFILE_NEW_LABEL"]	= "Yeni profil adı:";
	["CONFIG_SECTION_ABOUT"]	= "Hakkında";
	["CONFIG_SECTION_GENERAL"]	= "Genel";
	["CONFIG_SECTION_HEADER_CORE"]	= "Kaynak Ayarları";
	["CONFIG_SECTION_HEADER_PLUGINS"]	= "Eklentiler";
	["CONFIG_SECTION_MINIMAP"]	= "Küçük Harita";
	["CONFIG_SECTION_OPEN"]	= "Hazine";
	["CONFIG_SECTION_PROFILES"]	= "Profiller";
	["CONFIG_SECTION_SHARING"]	= "Paylaşım";
	["CONFIG_SECTION_TITLE_ABOUT"]	= "Gatherer Hakkında";
	["CONFIG_SECTION_TITLE_ARCH"]	= "Arkeoloji Seçenekleri";
	["CONFIG_SECTION_TITLE_GENERAL"]	= "Ana Gatherer Seçenekleri";
	["CONFIG_SECTION_TITLE_HERB"]	= "Bitkici Filtre Seçenekleri";
	["CONFIG_SECTION_TITLE_MINE"]	= "Madenci Filtre Seçenekleri";
	["CONFIG_SECTION_TITLE_MINIMAP"]	= "Küçük Harita Gatherer Seçenekleri";
	["CONFIG_SECTION_TITLE_OPEN"]	= "Hazine Filtre Seçenekleri";
	["CONFIG_SECTION_TITLE_PROFILES"]	= "Profil kurulum, ayarlama ve değiştirme";
	["CONFIG_SECTION_TITLE_SHARING"]	= "Senkronizasyon Seçenekleri";
	["CONFIG_SHARING_BLACKLIST_LABEL"]	= "Karaliste Paylaşımı";
	["CONFIG_SHARING_GROUP_DATABASE"]	= "Grupla toplanılanları benim veritabanıma ekle";
	["CONFIG_SHARING_GROUP_ENABLE"]	= "Grup senkronizasyonunu aktif et";
	["CONFIG_SHARING_GROUP_LABEL"]	= "Raid/Grup Paylaşımı";
	["CONFIG_SHARING_GROUP_MESSAGE_RECV"]	= "Grupla toplarken alınacak mesajı yazın";
	["CONFIG_SHARING_PERSONAL_LABEL"]	= "Kişisel Uyarı";

	-- Section: Database Version Messages
	["STORAGE_DB_CATACLYSMIC"]	= "Dünyanın en kötüsü olarak dönüş yapan Deathwing, tüm çiçekleri yakıp, madenleri eritip, hazine kutularını parçaladı. Şimdi hepsi yeniden büyümeli, yeniden kristalize olmalı, ya da korsanlar tarafından tekrar saklanmalılar, muhtemelen yeni yerlerinde. Hazine Avı!!! (Eski dünya bilgileri büyük çapta coğrafya değişimi sebebiyle tamamen silindi.)";
	["STORAGE_DB_VERSION_INVALID"]	= "DİKKAT!!!\nGatherer, veritabanı versiyonunuzun geçersiz olduğunu keşfetti. Lütfen veritabanınızı temizlemek için \"kabul et\"e basın, ya da veritabanınızı manuel olarak tamir etmek isterseniz \"yoksay\"a basın";
	["STORAGE_DB_VERSION_NEWER"]	= "Kaydedilmiş Gatherer veritabanınız oldukça yeni. Şu anki veritabanınız, Gatherer'ı güncelleyene kadar beklemede kalacaktır.";

	-- Section: Game Object Tooltip
	["GAME_OBJECT_REQUIRES_REWRITE"]	= "%1$s %2$d";

	-- Section: Gatherables Report
	["REPORT_COLUMN_HEADER_DIST"]	= "Msfe";
	["REPORT_COLUMN_HEADER_REGION"]	= "Bölge";
	["REPORT_COLUMN_HEADER_SOURCE"]	= "Kaynak";
	["REPORT_COLUMN_HEADER_TYPE"]	= "Tip";
	["REPORT_COLUMN_HEADER_X"]	= "X";
	["REPORT_COLUMN_HEADER_Y"]	= "Y";
	["REPORT_DELETE_CONFIRMATION"]	= "%d Gatherer noktasını silmek istiyor musunuz?";
	["REPORT_DELETE_MARKED"]	= "İşaretlileri sil";
	["REPORT_MARKED_NODES_COUNT"]	= "İşaretli noktalar: %1";
	["REPORT_MARKING_NOTE"]	= "Not: Bir noktayı seçtiğiniz zaman, o nokta siz reload yapmadıkça, o seçimi tekrar tıklayarak kaldırmadıkça ya da yukardaki seçimi sil butonlarını kullanmadıkça işaretli kalır";
	["REPORT_MARK_THESE"]	= "Bunları işaretle";
	["REPORT_SEARCH_BY_REGION"]	= "Bölgeye göre";
	["REPORT_SEARCH_BY_SOURCE"]	= "Kaynağa göre";
	["REPORT_SEARCH_BY_TYPE"]	= "Tipe göre";
	["REPORT_SEND_MARKED"]	= "Seçilileri gönder";
	["REPORT_TITLE"]	= "Toplanabilirlerin Raporu";
	["REPORT_UNMARK_ALL"]	= "Tüm seçimleri kaldır";
	["REPORT_UNMARK_THESE"]	= "Bunların seçimini kaldır";

	-- Section: Generic Messages
	["DESCRIPTION"]	= "Gatherer, sizin toplama bölgelerinizi hatırlayan ve bunları oyun içinde, haritanızda ve küçük haritanızda göstermeyi sağlayan bir eklentidir. Ayrıca bu bilgileri arkadaşlarınız, guild veya raid'de ki kişilerle paylaşır.";
	["DESCRIPTION_LICENSE"]	= "Gatherer, genel kamu lisansı v2 altında ki bir açık kaynak yazılımdır. Tüm lisans için lütfen gpl.txt'ye bakın.(Eklentiyle gelmektedir.)";
	["LOADED_NOTIFICATION"]	= "Gatherer v%1 -- Yüklendi!";
	["MANIFEST_INVALID_VERSIONS_WARNING"]	= "{{Uyarı:}} \n\nLütfen eski dizini sildiğinden emin ol:\n%1\nyeni kopyasını buradan yükle:\n%2\nve bir hata raporlamadan önce WoW'u yeniden başlat.\n\nTeşekkürler,\n  Gatherer Geliştirici Takımı";
	["VERSION_MESSAGE"]	= "Bu Gatherer v%1";
	["ZONETOKENS_UNIDENTIFIED_ZONES_WARNING"]	= "Gatherer bu bölgeleri tanımlayamıyor: {{%1}}\nEğer burası yeni bir bölgeyse problem yok, normal bir şekilde devam edebilirsin.\nEğer burası yeni bir bölge değilse, {{bilgilerin KAYBOLMADI!}} bundan dolayı sakin kal. Bu bölgeyle ilgili bilgilerin birleşmiş durumda ancak ulaşabilmen için Gatherer'ı güncellemen lazım. O zaman kadar normal bir şekilde devam edebilirsin ve yeni bilgilerin güncellediğinde eskileriyle birleşecektir.\n\n{{Uygun olduğunuzda lütfen Gatherer'ı üst sürüme yükseltin.}}";

	-- Section: Generic Strings
	["ACCEPT"]	= "Kabul et";
	["ALL"]	= "Hepsi";
	["CANCEL"]	= "İptal";
	["DELETE"]	= "Sil";
	["DONE"]	= "Tamamlandı";
	["ENABLE"]	= "Aktif et";
	["IGNORE"]	= "Yoksay";
	["IGNORE_PLAYER"]	= "Kullanıcıyı yoksay";
	["NO"]	= "Hayır";
	["OKAY"]	= "Tamam";
	["SEARCH"]	= "Ara";
	["STOP_IGNORE"]	= "Kullanıcıyı kaldır";
	["STRATA_BACKGROUND"]	= "Arkaplan";
	["STRATA_HIGH"]	= "Yüksek";
	["STRATA_LOW"]	= "Düşük";
	["STRATA_MEDIUM"]	= "Orta";
	["YES"]	= "Evet";

	-- Section: HelpTooltip
	["MINIICON_ACTIONS_CLICK"]	= "Noktaları göster/gizle {{Click}}";
	["MINIICON_ACTIONS_RIGHT_CLICK"]	= "Toplanabilirlerin raporu için {{Right-Click}}";
	["MINIICON_ACTIONS_SHIFT_CLICK"]	= "HUD görünümü aç/kapa {{Shift-Click}}";
	["MINIICON_ACTIONS_SHIFT_RIGHT_CLICK"]	= "Ayarlar için {{Shift-Right-Click}}";

	-- Section: HUD
	["HUD_ABBREVIATION"]	= "HUD";
	["HUD_CONFIG_DISPLAY_LABEL"]	= "HUD Görüntüleme Seçenekleri";
	["HUD_CONFIG_HEAT_TRACKING_LABEL"]	= "HUD Isıl yol İzleme Modu";
	["HUD_CONFIG_HIDING_LABEL"]	= "HUD Gizleme Seçenekleri";
	["HUD_CONFIG_plugin.gatherer_hud.alpha"]	= "Genel HUD şeffaflığı: %d%%";
	["HUD_CONFIG_plugin.gatherer_hud.angle"]	= "Görüntüleme açısı: %d°";
	["HUD_CONFIG_plugin.gatherer_hud.base.color"]	= "Alt katman rengi";
	["HUD_CONFIG_plugin.gatherer_hud.base.enable"]	= "Görüş kalitesini arttırmak için HUD'ı karart.";
	["HUD_CONFIG_plugin.gatherer_hud.center.color"]	= "Merkez renk";
	["HUD_CONFIG_plugin.gatherer_hud.center.enable"]	= "Görüş Alanı halkasını aktif et";
	["HUD_CONFIG_plugin.gatherer_hud.fade"]	= "Notların silikleşmesi: Çapın %d%% kadarı";
	["HUD_CONFIG_plugin.gatherer_hud.heat.color"]	= "Isıl yol rengi";
	["HUD_CONFIG_plugin.gatherer_hud.heat.cooldown"]	= "İzleme yenilemesi: %d saniye";
	["HUD_CONFIG_plugin.gatherer_hud.heat.enable"]	= "Seyehat izini göster (Isıl yol)";
	["HUD_CONFIG_plugin.gatherer_hud.heat.nevercooldown"]	= "Asla yenileme";
	["HUD_CONFIG_plugin.gatherer_hud.heat.size"]	= "Seyahat izi genişliği: %d yard";
	["HUD_CONFIG_plugin.gatherer_hud.hide.combat"]	= "Savaş esnasında gizle";
	["HUD_CONFIG_plugin.gatherer_hud.hide.flying"]	= "Uçarken gizle";
	["HUD_CONFIG_plugin.gatherer_hud.hide.inside"]	= "İç mekandayken gizle";
	["HUD_CONFIG_plugin.gatherer_hud.hide.mounted"]	= "Binek üstündeyken gizle";
	["HUD_CONFIG_plugin.gatherer_hud.hide.resting"]	= "Dinlenirken gizle (rested)";
	["HUD_CONFIG_plugin.gatherer_hud.hide.stealth"]	= "Stealth modundayken gizle";
	["HUD_CONFIG_plugin.gatherer_hud.hide.swimming"]	= "Yüzerken gizle";
	["HUD_CONFIG_plugin.gatherer_hud.hide.target"]	= "Hedef seçili iken gizle";
	["HUD_CONFIG_plugin.gatherer_hud.hide.walking"]	= "Binek üstünde değilken gizle";
	["HUD_CONFIG_plugin.gatherer_hud.iconsize"]	= "Nokta boyutu: %d piksel";
	["HUD_CONFIG_plugin.gatherer_hud.min_fullframerate"]	= "İzleme ekranının minimum yenilenme hızı: %dfps";
	["HUD_CONFIG_plugin.gatherer_hud.offset.horizontal"]	= "Yatay Hiza: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.offset.vertical"]	= "Dikey Hiza: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.party.color"]	= "Parti üyesi rengi";
	["HUD_CONFIG_plugin.gatherer_hud.party.enable"]	= "Diğer parti üyelerini göster";
	["HUD_CONFIG_plugin.gatherer_hud.party.size"]	= "Parti ikon boyutu: %d pixels";
	["HUD_CONFIG_plugin.gatherer_hud.perspective"]	= "Perspektif Seviyesi: %0.1f";
	["HUD_CONFIG_plugin.gatherer_hud.radius"]	= "Genel HUD çapı: %d piksel";
	["HUD_CONFIG_plugin.gatherer_hud.yards"]	= "Nokta menzili: %d yards";
	["HUD_CONFIG_STRATA_LABEL"]	= "HUD Katmanı (Görüntülenme önceliği)";
	["HUD_CONFIG_USAGE_NOTE"]	= "HUD kullanımı sizin fps'inizden yer, Geçtiğiniz yolları çizerek izleyen Isıl yol mod'u daha da fazla fps yer.";
	["HUD_CONFIG_VISIBILITY_LABEL"]	= "HUD Grünürlük Ayarları";
	["HUD_DESCRIPTION"]	= "HUD, toplanabilir materyallerinizin izini ekranınınzdan görebilmenizi sağlayan bir navigasyon bileşenidir.";
	["HUD_TITLE"]	= "Gatherer Navigasyon Eklentisi";

	-- Section: Import Modules
	["IMPORT_CTMOD_DONE"]	= "CT_MapMod bilgileriniz, içe alındı.";
	["IMPORT_CTMOD_NODATA"]	= "İçe almak için hiç bir CT_MapMod bilgisi bulunmadı.";

	-- Section: Keybinding Text
	["BINDING_HEADER_GATHERER"]	= "Gatherer";
	["BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG"]	= "Seçenekleri aç/kapat";

	-- Section: Labels
	["GENERAL_LABEL"]	= "Genel";
	["LABEL_CONFIG"]	= "Ayar";
	["LABEL_DENSITY_REPORT"]	= "Nokta Ara";
	["LABEL_NOTE"]	= "Not";
	["LABEL_REPORT"]	= "Toplanabilirler Raporu";
	["MAP_NOTES_HIDE"]	= "Eşyaları Gizle";
	["MAP_NOTES_SHOW"]	= "Eşyaları Göster";
	["NOTIFICATIONS_TITLE"]	= "Gatherer: Uyarılar";

	-- Section: Mass Sharing Messages
	["MASS_SHARING_ABORT"]	= "Gönderme iptal edildi";
	["MASS_SHARING_ABORTED"]	= "%1'de iptal edildi";
	["MASS_SHARING_ACCEPTED"]	= "Başlatılıyor...";
	["MASS_SHARING_ASKING"]	= "Soruluyor...";
	["MASS_SHARING_BUSY"]	= "Kullanıcı meşgul.";
	["MASS_SHARING_CLOSED"]	= "kapalı.";
	["MASS_SHARING_COMPLETE"]	= "Başarılı!";
	["MASS_SHARING_DONE"]	= "%1'de bitti";
	["MASS_SHARING_GATHERER_COMM_REQUESTSEND"]	= "%1$s sizden %2$d Gatherer noktası göndermenizi istiyor. Kabul ediyor musunuz?";
	["MASS_SHARING_GATHERER_REPORT_TRANSMIT"]	= "%2$s isimli kullanıcıya %1$s noktayı göndermek istiyor musunuz?";
	["MASS_SHARING_RECEIVED_COUNT"]	= "%1 Alındı";
	["MASS_SHARING_REJECT"]	= "Reddedildi!";
	["MASS_SHARING_SENDING"]	= "Gönderiliyor...";
	["MASS_SHARING_SENT"]	= "%1 Gönderildi";
	["MASS_SHARING_TIMEOUT"]	= "Zaman aşımı";

	-- Section: Node Category Names
	["HERB_NETHERDUST"]	= "since we do not have wow TR support, all of the ores can stay in english, ignore the translations, they will make confusion only.";
	["ORE_ADAMANTITE"]	= "since we do not have wow TR support, all of the ores can stay in english, ignore the translations, they will make confusion only.";
	["ORE_BLOODSTONE"]	= "Arkadaşlar, az blood stone nedir allah aşkına. Az akıl az fikir.\nLütfen bu kısmı ingilizceye çevirmeyin, wow'un kendisi türkçe olmadığı için sadece karışıklık yaratır.";
	["ORE_COPPER"]	= "Bakır";
	["ORE_DARKIRON"]	= "Kara Demir";
	["ORE_FELIRON"]	= "Fel Demir";
	["ORE_GOLD"]	= "Altın";
	["ORE_INCENDICITE"]	= "Incendicite";
	["ORE_INDURIUM"]	= "Indurium";
	["ORE_IRON"]	= "Demir";
	["ORE_KHORIUM"]	= "Khorium";
	["ORE_MITHRIL"]	= "Mithril";
	["ORE_NETHERCITE"]	= "Nethercite";
	["ORE_OBSIDIAN"]	= "Obsidiyen";
	["ORE_RADAMANTITE"]	= "Zengin Adamantite";
	["ORE_RTHORIUM"]	= "Zengin Toryum";
	["ORE_SILVER"]	= "Gümüş";
	["ORE_THORIUM"]	= "Toryum";
	["ORE_TIN"]	= "Kalay";
	["ORE_TRUESILVER"]	= "Gerçekgümüş";
	["TREASURE_BARREL"]	= "Varil";
	["TREASURE_BLOODPETAL"]	= "Bloodpetal Lahanası";
	["TREASURE_BOX"]	= "Kutuları";
	["TREASURE_CASK"]	= "Fıçılar";
	["TREASURE_CHEST"]	= "Hazine Sandıklar";
	["TREASURE_CLAM"]	= "Dev istiridye";
	["TREASURE_CRATE"]	= "Kasalar";
	["TREASURE_FOOTLOCKER"]	= "Footlockers";
	["TREASURE_GLOWCAP"]	= "Glowcaps";
	["TREASURE_NIGHTDRAGON"]	= "Gece Dragon's Breath";
	["TREASURE_POWERCRYST"]	= "Güç Kristaller";
	["TREASURE_SHELLFISHTRAP"]	= "Kabuklu deniz Tuzaklar";
	["TREASURE_SONGFLOWER"]	= "Şarkıçiçekler";
	["TREASURE_UNGOROSOIL"]	= "Un'Goro Toprak";
	["TREASURE_WHIPPERROOT"]	= "Kırbaç Kök yumrular";
	["TREASURE_WINDBLOSSOM"]	= "Rüzgarçiçek Karpuzu";

	-- Section: Node Database Plugins
	["DATABASE_IMPORT_BUTTON_LABEL"]	= "İçeri Aktar";

	-- Section: Node Density Search
	["DENSITY_COLUMN_HEADER_LOCATION"]	= "Bölge";
	["DENSITY_COLUMN_HEADER_NUM_NODE"]	= "# Nokta";
	["DENSITY_COLUMN_HEADER_PERCENT"]	= "Yüzde";
	["DENSITY_COLUMN_HEADER_TYPE"]	= "Tip";
	["DENSITY_SEARCH_TITLE"]	= "Nokta sıklığı arama";

	-- Section: Node Tooltip Messages
	["NOTE_ADDITIONAL"]	= "%1 ek içerik.";
	["NOTE_COUNT"]	= "%1 kere toplandı";
	["NOTE_DISTANCE"]	= "Menzil: %1 yard";
	["NOTE_IMPORTED"]	= "İçe alınan nokta";
	["NOTE_LASTVISITED"]	= "Son ziyaret: %1";
	["NOTE_OVERALLDROPS"]	= "Toplam düşürme oranı:";
	["NOTE_SOURCE"]	= "Kaynak: %1";
	["NOTE_UNSKILLED"]	= "Yetersiz yetenek";

	-- Section: Time
	["DAYS"]	= "Gün";
	["DAYS_ABBR"]	= "Gün";
	["DAYS_ABBR_P1"]	= "Gün";
	["DAYS_P1"]	= "Gün";
	["HOURS"]	= "Saat";
	["HOURS_ABBR"]	= "Sa";
	["HOURS_ABBR_P1"]	= "Sa";
	["HOURS_P1"]	= "Saat";
	["MINUTES"]	= "Dakika";
	["MINUTES_ABBR"]	= "Dk";
	["MINUTES_ABBR_P1"]	= "Dk";
	["MINUTES_P1"]	= "Dakika";
	["SECONDS"]	= "Saniye";
	["SECONDS_ABBR"]	= "Sn";
	["SECONDS_ABBR_P1"]	= "Sn";
	["SECONDS_P1"]	= "Saniye";
	["WEEKS"]	= "Hafta";
	["WEEKS_ABBR"]	= "Hf";
	["WEEKS_ABBR_P1"]	= "Hf";
	["WEEKS_P1"]	= "Hafta";

	-- Section: Trade Skill Names
	["PROFESSIONS_ARCHAEOLOGY"]	= "Arkeoloji";
	["TRADE_HERBALISM"]	= "Bitki toplayıcı";
	["TRADE_MINING"]	= "Madencilik";

	-- Section: Fallback / Synchronized Keys
	["COMM_NODE_SEND"]	= "Sent gather of %1 to %2";
	["COMM_NODE_SEND_TWO"]	= "Sent gather of %1 to %2 and %3";
	["NODE_ADD"]	= "Added gather of %1";
	["GUILD"]	= "guild";
	["GROUP"]	= "group";
	["RAID"]	= "raid";
	["PARTY"]	= "party";
	["WHISPER"]	= "whisper";
	["PLAYER"]	= "Player";
	["ADD_IGNORE_LABEL"]	= "Add player to sharing ignore list:";
	["CONFIG_MINIMAP_TRACKING_OPACITY"]	= "Icon opacity: %d%%";
	["CONFIG_SHARING_GROUP_MESSAGE_SENT"]	= "Print a message when sending a group gather";
	["CONFIG_SHARING_GUILD_DATABASE"]	= "Add received guild gathers to my database";
	["CONFIG_SHARING_GUILD_ENABLE"]	= "Enable guild synchronization";
	["CONFIG_SHARING_GUILD_LABEL"]	= "Guild Sharing";
	["CONFIG_SHARING_GUILD_MESSAGE_RECV"]	= "Print a message when receiving a guild gather";
	["CONFIG_SHARING_GUILD_MESSAGE_SENT"]	= "Print a message when sending a guild gather";
	["CONFIG_SHARING_PERSONAL_ENABLE"]	= "Print a message when adding own gather to DB";
	["CONFIG_TOOLTIP_COUNTS"]	= "Display harvest counts";
	["CONFIG_TOOLTIP_DISTANCE"]	= "Display node distance";
	["CONFIG_TOOLTIP_DROP_RATES"]	= "Display drop rates";
	["CONFIG_TOOLTIP_ENABLE"]	= "Display tooltips";
	["CONFIG_TOOLTIP_LAST_SEEN"]	= "Display last seen time";
	["CONFIG_TOOLTIP_SOURCE"]	= "Display note source";
	["CONFIG_WORLDMAP_ENABLE"]	= "Display notes on World Map";
	["CONFIG_WORLDMAP_ICON_SIZE"]	= "Icon Size: %d";
	["CONFIG_WORLDMAP_MAX_NOTES"]	= "Display: %d notes";
	["CONFIG_WORLDMAP_NOTE_OPACITY"]	= "Opacity: %d%%";
	["ENABLE_OPEN"]	= "Show treasure nodes";
	["DISABLE"]	= "Disable";
	["WORLDMAP_NOTES_SHOW_MENUITEM"]	= "Gatherer: Show Items";
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
	["DATABASE_IMPORT_HEADER"]	= "Perform import of node database:";

}
