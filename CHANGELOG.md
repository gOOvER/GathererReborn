# Changelog

All notable changes to **Gatherer Reforged** will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-11-05

### Added
- Added **`Core/GatherIntegrations.lua`** providing external addon integrations and advanced farming features:
  - **1-Click `GatherMate2` & `GatherMate2_Data` / `GatherMate2Storage_*` Database Importer**: Imports saved `GatherMate2` nodes and pre-populated Wowhead databases (`Classic`, `TBC`, `Wrath`, `Retail`, `Dragonflight`, `The War Within`, `Midnight`, and `WoW Forever`) directly into `GatherItems` via the Ace3 `"Integrationen & DB"` tab or `/gatherer import`.
  - **Live Auction House & Market Value Integration**: Displays live market prices from **Auctionator**, **TradeSkillMaster (TSM)**, **OribosExchange (`OEMarketInfo`)**, **RECrystallize**, **Auctioneer**, or Vendor fallback directly inside World Map and Minimap node tooltips (`GUI/GatherTooltip.lua`).
  - **Live Session & Gold-per-Hour (GPH) Tracker**: Tracks session duration, nodes gathered, nodes/hour, estimated session gold value, Gold/Hour (GPH), and top gathered items—displayed in the **LDB DataSource feed** (`Titan Panel`, `Bazooka`, `ElvUI` DataTexts), the Minimap button / Addon Compartment tooltip (`GUI/GatherMiniIcon.lua`), Ace3 Options, and `/gatherer session` (`Alt+Left-Click` or `/gatherer reset` to reset).
  - **Harvest Cooldown ("Respawn Timer") Dimming**: Automatically dims recently harvested nodes on both the Minimap (`GUI/GatherMiniNotes.lua`) and the 3D HUD (`GUI/GatherHUD.lua`) for a configurable respawn cooldown duration (`cooldown.time`, default 300s) and shows the remaining cooldown in the node tooltip.
  - **Fishing Schools & Engineering Gas Cloud Tracking**: Extended `Gatherer.Scanner` (`Core/GatherScanner.lua`) and `GM2_NODE_MAP` to detect and record Fishing Schools and Gas Clouds.
  - **`FarmHud` & `Routes` Addon Bridges**: Automatically reparents Minimap nodes when `FarmHud` is toggled and registers `GathererReforged` as a native data source plugin in `Routes` for TSP farming route generation.
- Added full integration and compatibility with **MapWise** (`MapWiseAPI`), **ElvUI** (WorldMap, square/round Minimap, and UI frame skinning), **Leatrix_Maps**, **TomTom** (`Shift+Right-Click` / `Alt+Left-Click` waypoint creation on WorldMap pins), and custom Minimap shape addons (`GetMinimapShape()` quadrant support for square, round, corner, and side minimaps).
- Added `GathererReforgedWorldMapButton` on the World Map (`GUI/GatherMapNotes.lua`), which is automatically detected by **MapWise**'s `"Addons"` toolbar menu and allows toggling World Map nodes (`Left-Click`), opening the Gatherer Report (`Right-Click`), or opening Settings (`Shift+Right-Click`).
- Added Continent and World map node projection (`GUI/GatherMapNotes.lua`, `Core/GatherMap.lua`) so gathered nodes from child zones are projected onto Continent (`Kalimdor`, `Eastern Kingdoms`, etc.) and `Azeroth` views in **MapWise** (both Terrain and Paper modes) and the World Map.
- Rebranded project to **Gatherer Reforged** (`GathererReforged`) starting at version `1.0.0`, integrating the 3D Heads-Up Display (HUD) directly into the main AddOn (`GUI/GatherHUD.lua`, `GUI/GatherHUD.xml`, `GUI/HudShape.blp`).
- Added `.pkgmeta` and `embeds.xml` (analogous to `GuildGreet-Extended`) so `BigWigsMods/packager@v2` automatically downloads all external libraries (`LibStub`, `CallbackHandler-1.0`, `AceAddon-3.0`, `AceEvent-3.0`, `AceTimer-3.0`, `AceBucket-3.0`, `AceHook-3.0`, `AceDB-3.0`, `AceDBOptions-3.0`, `AceLocale-3.0`, `AceConsole-3.0`, `AceGUI-3.0`, `AceConfig-3.0`, `AceComm-3.0`, `AceTab-3.0`, `AceSerializer-3.0`, `LibDataBroker-1.1`, `LibDBIcon-1.0`, `LibSharedMedia-3.0`) into `libs/`.
- Added modern **Ace3 GUI & Options System** (`GUI/GatherAceGUI.lua`) built on `AceConfig-3.0` and `AceGUI-3.0`, registering **Gatherer Reforged** directly in the Blizzard Options (`ESC -> Optionen -> AddOns -> Gatherer Reforged`).
- Added **`LibDBIcon-1.0`** support in `GUI/GatherMiniIcon.lua` for the Minimap button alongside `LibDataBroker-1.1` and the Blizzard Addon Compartment.
- Added GitHub Actions CI/CD workflows (`.github/workflows/release.yml`, `.github/workflows/quality.yml`), `.luacheckrc`, and `.gitignore`.
- Added `/gathererreforged` and `/greforged` slash commands in addition to `/gather` and `/gatherer` (`Core/GatherCommand.lua`).
- Multi-client TOC support (`11508`, `11509`, `16001`, `20505`, `20506`, `30405`, `38002`, `40402`, `50503`, `50504`, `120007`, `120100`, `120105`, `120107`) including flavor headers (`Interface-Mainline`, `Interface-Camelot`, `Interface-Classic`, `Interface-BCC`, `Interface-Wrath`, `Interface-Cata`, `Interface-Mists`) for **WoW Forever** (`16001`), Retail (*Midnight*), Mists of Pandaria Classic, Cataclysm, Wrath, TBC Classic, and Classic Era.
- Native `C_Map` mapping engine `Gatherer.Map` (`Core/GatherMap.lua`) built directly on `C_Map`, `C_Minimap`, and `UiMapPoint` (replacing the discontinued `Astrolabe` library).
- Cross-expansion WoW API polyfill layer (`Core/GatherPolyfills.lua`: `C_AddOns`, `C_ChatInfo`, `C_Spell`, `C_Item`, `C_CurrencyInfo`, `C_Minimap`, `BackdropTemplateMixin`, `table.getn`, `table.maxn`).
- Dynamic "Forever" node discovery and persistence (`Core/GatherScanner.lua`, `Gatherer.Scanner`, `Gatherer.Nodes.RegisterDynamicNode`, `Gatherer.Util.RegisterDynamicNodeName`) to automatically learn and track new herbs, ores, treasures, and archaeology finds in current and future WoW expansions.
- Dynamic `C_Map` zone token support (`MAP_<uiMapID>`) in `Data/GatherZoneTokens.lua` so all post-Legion and future zones work seamlessly without unrecognized map warnings.
- Retail Addon Compartment button integration (`Gatherer_OnAddonCompartmentClick`, `Gatherer_OnAddonCompartmentEnter`, `Gatherer_OnAddonCompartmentLeave`) and modern World Map tracking menu integration (`Menu.ModifyMenu`).

### Changed
- Renamed project and AddOn to **Gatherer Reforged** (`GathererReforged`) and rewrote `README.md` in English with embedded `logo.jpg` and the historical background of Norganna's classic *Gatherer* addon (2005–2017).
- Upgraded project license to **GNU General Public License v3.0 (GPL-3.0)** (`LICENSE`, `Locales/GatherStrings.lua`, `.toc` metadata) and completely rewrote `README.md` without obsolete links.
- Set `gOOvER` as the sole author (`## Author: gOOvER`) across `GathererReforged.toc` and all Lua/XML source files.
- Flattened the repository root structure to match `GuildGreet-Extended` (`GathererReforged.toc`, `embeds.xml`, `Bindings.xml`, `Core/`, `Data/`, `Locales/`, `GUI/`, and `libs/`) and integrated the HUD directly into `GUI/` while preserving full backwards compatibility with `GatherItems` SavedVariables and `gatherer_hud` settings.
- Replaced removed legacy UI templates (`OptionsButtonTemplate` -> `UIPanelButtonTemplate`, `OptionsCheckButtonTemplate` -> `UICheckButtonTemplate`) across all UI modules (`GatherConfig.lua`, `GatherReport.lua`, `GathererNodeSearch.lua`, `GatherPlugins.lua`).
- Completely revised and corrected the German (`deDE`) localization in `GathererReforged.toc` and `Locales/GatherStrings.lua` (fixed spelling/grammar errors, missing format specifiers `%d`/`%0.1f`, and unnatural machine translations).
- Replaced missing local texture references with built-in WoW FileDataIDs and Item icon lookups (`GatherUtil.lua`, `GatherNodes.lua`, `GatherMapNotes.lua`, `GatherMiniIcon.lua`, `GatherMiniNotes.lua`, `GatherHUD.lua`).
- Updated HUD druid flight form detection to use `C_UnitAuras.GetPlayerAuraBySpellID` and `IsFlying()`.
- Updated profession skill detection (`GatherUtil.lua`) to support expansion-tiered profession skills where base rank can be `0`.

### Fixed
- Fixed `GatherHUD.lua:221: attempt to call a nil value` (`Texture:SetNonBlocking` removed in modern WoW) and the resulting `GatherHUD.lua:478: attempt to index local 'node' (a nil value)` in `GUI/GatherHUD.lua`.
- Fixed red question mark icons (`134400` / `INV_Misc_QuestionMark`) in the Herbalism, Mining, and Treasure filter lists by detecting question-mark returns from `C_Item.GetItemIconByID` (when expansion items do not exist in the current client flavor DB) and mapping all `Herb\*`, `Mine\*`, and `Open\*` icon categories to universal built-in FileDataIDs in `Core/GatherUtil.lua`.
- Fixed WoW 12.x `<secret string>` taint comparison error in `Core/GatherScanner.lua` and `GUI/GatherTooltip.lua` (`attempt to compare local 'text' (a secret string value)`) by adding `Gatherer.IsSafeString` / `Gatherer.IsSafeValue` checks (`issecretvalue`, `canaccessvalue`, `pcall`) and ignoring non-world UI frame tooltips.
- Fixed `AceConfigRegistry-3.0:ValidateOptionsTable(): unknown parameter` error when opening the Ace3 options dialog by removing unsupported `imageWidth` / `imageHeight` fields from `toggle` entries in `GUI/GatherAceGUI.lua`.
- Fixed keyboard input and mouse click lock at startup caused by an unparented `CreateFrame("EditBox")` (with default `autoFocus = true`) and global Frame/EditBox metatable overrides in `Core/GatherPolyfills.lua`, as well as unfocused `EditBox` instances in `GUI/GatherReport.lua` and `GUI/GathererNodeSearch.lua` and mouse-enabled HUD frames in `GUI/GatherHUD.xml` / `GUI/GatherHUD.lua`.
- Fixed `ADDON_LOADED` check in `Core/GatherEvent.lua` and `Core/GatherStorage.lua` so initialization and database loading trigger properly under the AddOn folder name `GathererReforged`.
- Fixed `Gatherer.Util.GetSkills()` in `Core/GatherUtil.lua` checking `GetProfessions` feature availability instead of `tocVersion >= 40000` (which failed on WoW Forever where `tocVersion` is `16001`).
- Fixed `LUA_WARNING: Deferred XML Node object named GameFontHighlightHuge already exists` in `Core/GatherMain.xml` and `Core/GatherPolyfills.lua` (by removing redundant XML/Lua creation of Blizzard's deferred `GameFontHighlightHuge` font).
- Fixed typo `return ture` -> `return true` in `GathererReforged/GatherUtil.lua`.
- Fixed `partialOverlay` nil indexing error in `GathererReforged/GatherMapNotes.lua` when `noteCount == 0`.
- Fixed `StaticPopupDialogs["GATHERER_ADD_SHARING_IGNORE"]` compatibility with WoW 11.0+ `self:GetEditBox()` (`GathererReforged/GatherConfig.lua`).
- Fixed profile creation, copying, deletion, and switching in `GathererReforged/GatherConfig.lua` and `GathererReforged/GatherAceGUI.lua`.
- Fixed undefined variable `a` (`reply`) in `Gatherer.Comm.SendFeedback` (`GathererReforged/GatherComm.lua`).
- Fixed `SetBackdropBorderColor`/`SetBackdropColor` errors on modern `GameTooltipTemplate` (`GathererReforged/GatherMain.xml`) and `SetTexture(r,g,b,a)` in `GathererReforged/GatherReport.lua`.
- Fixed invalid `<ColorType>` XML tags in `GathererReforged_HUD/GatherHUD.xml` (changed to `<Color>`).
- Guarded `GetPlayerFacing()` in `GathererReforged_HUD/GatherHUD.lua` when inside instances where it returns `nil`.

### Removed
- Completely removed discontinued `Astrolabe` (`Astrolabe/Astrolabe.lua`, `Astrolabe/Load.xml`) and `DongleStub` in favor of native `Gatherer.Map` (`GathererReforged/GatherMap.lua`).
- Completely removed obsolete `Babylonian` localization library in favor of `AceLocale-3.0` and native `GathererLocalizations` lookup.
- Completely removed legacy GUI code, `GatherConfig.xml`, `Version.txt`, `GathererReforged_HUD/Strings.lua`, legacy SVN headers, and `Import/` directory.
- Completely removed `!Swatter` addon directory and all references.
- Completely removed `SlideBar` addon directory and all references.
- Removed obsolete `myAddOns` metadata and dependencies.
