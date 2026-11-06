# Changelog

All notable changes to **Gatherer Reborn** will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-11-05

### Added
- Rebranded project to **Gatherer Reborn** (`GathererReborn`) starting at version `1.0.0`, integrating the 3D Heads-Up Display (HUD) directly into the main AddOn (`GUI/GatherHUD.lua`, `GUI/GatherHUD.xml`, `GUI/HudShape.blp`).
- Added `.pkgmeta` and `embeds.xml` (analogous to `GuildGreet-Extended`) so `BigWigsMods/packager@v2` automatically downloads all external libraries (`LibStub`, `CallbackHandler-1.0`, `AceAddon-3.0`, `AceEvent-3.0`, `AceTimer-3.0`, `AceBucket-3.0`, `AceHook-3.0`, `AceDB-3.0`, `AceDBOptions-3.0`, `AceLocale-3.0`, `AceConsole-3.0`, `AceGUI-3.0`, `AceConfig-3.0`, `AceComm-3.0`, `AceTab-3.0`, `AceSerializer-3.0`, `LibDataBroker-1.1`, `LibDBIcon-1.0`, `LibSharedMedia-3.0`) into `libs/`.
- Added modern **Ace3 GUI & Options System** (`GUI/GatherAceGUI.lua`) built on `AceConfig-3.0` and `AceGUI-3.0`, registering **Gatherer Reborn** directly in the Blizzard Options (`ESC -> Optionen -> AddOns -> Gatherer Reborn`).
- Added **`LibDBIcon-1.0`** support in `GUI/GatherMiniIcon.lua` for the Minimap button alongside `LibDataBroker-1.1` and the Blizzard Addon Compartment.
- Added GitHub Actions CI/CD workflows (`.github/workflows/release.yml`, `.github/workflows/quality.yml`), `.luacheckrc`, and `.gitignore`.
- Added `/gathererreborn` and `/greborn` slash commands in addition to `/gather` and `/gatherer` (`Core/GatherCommand.lua`).
- Multi-client TOC support (`11508`, `11509`, `16001`, `20505`, `20506`, `30405`, `38002`, `40402`, `50503`, `50504`, `120007`, `120100`, `120105`, `120107`) including flavor headers (`Interface-Mainline`, `Interface-Camelot`, `Interface-Classic`, `Interface-BCC`, `Interface-Wrath`, `Interface-Cata`, `Interface-Mists`) for **WoW Forever** (`16001`), Retail (*Midnight*), Mists of Pandaria Classic, Cataclysm, Wrath, TBC Classic, and Classic Era.
- Native `C_Map` mapping engine `Gatherer.Map` (`Core/GatherMap.lua`) built directly on `C_Map`, `C_Minimap`, and `UiMapPoint` (replacing the discontinued `Astrolabe` library).
- Cross-expansion WoW API polyfill layer (`Core/GatherPolyfills.lua`: `C_AddOns`, `C_ChatInfo`, `C_Spell`, `C_Item`, `C_CurrencyInfo`, `C_Minimap`, `BackdropTemplateMixin`, `table.getn`, `table.maxn`).
- Dynamic "Forever" node discovery and persistence (`Core/GatherScanner.lua`, `Gatherer.Scanner`, `Gatherer.Nodes.RegisterDynamicNode`, `Gatherer.Util.RegisterDynamicNodeName`) to automatically learn and track new herbs, ores, treasures, and archaeology finds in current and future WoW expansions.
- Dynamic `C_Map` zone token support (`MAP_<uiMapID>`) in `Data/GatherZoneTokens.lua` so all post-Legion and future zones work seamlessly without unrecognized map warnings.
- Retail Addon Compartment button integration (`Gatherer_OnAddonCompartmentClick`, `Gatherer_OnAddonCompartmentEnter`, `Gatherer_OnAddonCompartmentLeave`) and modern World Map tracking menu integration (`Menu.ModifyMenu`).

### Changed
- Upgraded project license to **GNU General Public License v3.0 (GPL-3.0)** (`LICENSE`, `Locales/GatherStrings.lua`, `.toc` metadata) and completely rewrote `README.md` without obsolete links.
- Set `gOOvER` as the sole author (`## Author: gOOvER`) across `GathererReborn.toc` and all Lua/XML source files.
- Flattened the repository root structure to match `GuildGreet-Extended` (`GathererReborn.toc`, `embeds.xml`, `Bindings.xml`, `Core/`, `Data/`, `Locales/`, `GUI/`, and `libs/`) and integrated the HUD directly into `GUI/` while preserving full backwards compatibility with `GatherItems` SavedVariables and `gatherer_hud` settings.
- Replaced removed legacy UI templates (`OptionsButtonTemplate` -> `UIPanelButtonTemplate`, `OptionsCheckButtonTemplate` -> `UICheckButtonTemplate`) across all UI modules (`GatherConfig.lua`, `GatherReport.lua`, `GathererNodeSearch.lua`, `GatherPlugins.lua`).
- Completely revised and corrected the German (`deDE`) localization in `GathererReborn.toc` and `Locales/GatherStrings.lua` (fixed spelling/grammar errors, missing format specifiers `%d`/`%0.1f`, and unnatural machine translations).
- Replaced missing local texture references with built-in WoW FileDataIDs and Item icon lookups (`GatherUtil.lua`, `GatherNodes.lua`, `GatherMapNotes.lua`, `GatherMiniIcon.lua`, `GatherMiniNotes.lua`, `GatherHUD.lua`).
- Updated HUD druid flight form detection to use `C_UnitAuras.GetPlayerAuraBySpellID` and `IsFlying()`.
- Updated profession skill detection (`GatherUtil.lua`) to support expansion-tiered profession skills where base rank can be `0`.

### Fixed
- Fixed red question mark icons (`134400` / `INV_Misc_QuestionMark`) in the Herbalism, Mining, and Treasure filter lists by detecting question-mark returns from `C_Item.GetItemIconByID` (when expansion items do not exist in the current client flavor DB) and mapping all `Herb\*`, `Mine\*`, and `Open\*` icon categories to universal built-in FileDataIDs in `Core/GatherUtil.lua`.
- Fixed WoW 12.x `<secret string>` taint comparison error in `Core/GatherScanner.lua` and `GUI/GatherTooltip.lua` (`attempt to compare local 'text' (a secret string value)`) by adding `Gatherer.IsSafeString` / `Gatherer.IsSafeValue` checks (`issecretvalue`, `canaccessvalue`, `pcall`) and ignoring non-world UI frame tooltips.
- Fixed `AceConfigRegistry-3.0:ValidateOptionsTable(): unknown parameter` error when opening the Ace3 options dialog by removing unsupported `imageWidth` / `imageHeight` fields from `toggle` entries in `GUI/GatherAceGUI.lua`.
- Fixed keyboard input and mouse click lock at startup caused by an unparented `CreateFrame("EditBox")` (with default `autoFocus = true`) and global Frame/EditBox metatable overrides in `Core/GatherPolyfills.lua`, as well as unfocused `EditBox` instances in `GUI/GatherReport.lua` and `GUI/GathererNodeSearch.lua` and mouse-enabled HUD frames in `GUI/GatherHUD.xml` / `GUI/GatherHUD.lua`.
- Fixed `ADDON_LOADED` check in `Core/GatherEvent.lua` and `Core/GatherStorage.lua` so initialization and database loading trigger properly under the AddOn folder name `GathererReborn`.
- Fixed `Gatherer.Util.GetSkills()` in `Core/GatherUtil.lua` checking `GetProfessions` feature availability instead of `tocVersion >= 40000` (which failed on WoW Forever where `tocVersion` is `16001`).
- Fixed `LUA_WARNING: Deferred XML Node object named GameFontHighlightHuge already exists` in `Core/GatherMain.xml` and `Core/GatherPolyfills.lua` (by removing redundant XML/Lua creation of Blizzard's deferred `GameFontHighlightHuge` font).
- Fixed typo `return ture` -> `return true` in `GathererReborn/GatherUtil.lua`.
- Fixed `partialOverlay` nil indexing error in `GathererReborn/GatherMapNotes.lua` when `noteCount == 0`.
- Fixed `StaticPopupDialogs["GATHERER_ADD_SHARING_IGNORE"]` compatibility with WoW 11.0+ `self:GetEditBox()` (`GathererReborn/GatherConfig.lua`).
- Fixed profile creation, copying, deletion, and switching in `GathererReborn/GatherConfig.lua` and `GathererReborn/GatherAceGUI.lua`.
- Fixed undefined variable `a` (`reply`) in `Gatherer.Comm.SendFeedback` (`GathererReborn/GatherComm.lua`).
- Fixed `SetBackdropBorderColor`/`SetBackdropColor` errors on modern `GameTooltipTemplate` (`GathererReborn/GatherMain.xml`) and `SetTexture(r,g,b,a)` in `GathererReborn/GatherReport.lua`.
- Fixed invalid `<ColorType>` XML tags in `GathererReborn_HUD/GatherHUD.xml` (changed to `<Color>`).
- Guarded `GetPlayerFacing()` in `GathererReborn_HUD/GatherHUD.lua` when inside instances where it returns `nil`.

### Removed
- Completely removed discontinued `Astrolabe` (`Astrolabe/Astrolabe.lua`, `Astrolabe/Load.xml`) and `DongleStub` in favor of native `Gatherer.Map` (`GathererReborn/GatherMap.lua`).
- Completely removed obsolete `Babylonian` localization library in favor of `AceLocale-3.0` and native `GathererLocalizations` lookup.
- Completely removed legacy GUI code, `GatherConfig.xml`, `Version.txt`, `GathererReborn_HUD/Strings.lua`, legacy SVN headers, and `Import/` directory.
- Completely removed `!Swatter` addon directory and all references.
- Completely removed `SlideBar` addon directory and all references.
- Removed obsolete `myAddOns` metadata and dependencies.
