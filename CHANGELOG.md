# Changelog

All notable changes to **Gatherer Reforged** will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-11-06

### Added
- **Cross-Addon Live Node Sharing Bridge** (`Core/GatherIntegrations.lua`, `Core/GatherComm.lua`, `Core/GatherEvent.lua`):
  - Acts as a modern, actively maintained replacement for the discontinued `GatherMate2_Sharing` addon.
  - Receives and broadcasts shared nodes across **`GathX`**, **`GM2SD`** (`GatherMate2_Sharing`), **`GMSD`** (`GatherMate_Sharing`), and **`GatherLite`** protocols in Guild, Party, Raid, and Instance channels.
  - Performs two-way live sync (`GatherMate2:InjectNode2` and `GatherMate2:AddNode` hook) when `GatherMate2` is installed locally.
- **1-Click `GatherMate2` & `GatherMate2_Data` Importer** (`Core/GatherIntegrations.lua`, `GUI/GatherAceGUI.lua`):
  - Imports existing `GatherMate2` SavedVariables and pre-populated Wowhead databases (`GatherMate2_Data` / `GatherMate2Storage_*` for Classic, TBC, Wrath, Retail, Dragonflight, The War Within, Midnight, and WoW Forever) via the Ace3 *"Integrationen & DB"* tab or `/gatherer import`.
- **Live Auction House & Market Value Integration** (`Core/GatherIntegrations.lua`, `GUI/GatherTooltip.lua`):
  - Displays live market prices from **Auctionator**, **TradeSkillMaster (TSM)**, **OribosExchange (`OEMarketInfo`)**, **RECrystallize**, **Auctioneer**, or Vendor fallback inside World Map and Minimap node tooltips.
- **Live Session & Gold-per-Hour (GPH) Tracker** (`Core/GatherIntegrations.lua`, `GUI/GatherMiniIcon.lua`):
  - Tracks session duration, nodes gathered, nodes/hour, estimated session gold value, Gold/Hour (GPH), and top gathered items—displayed in the **LDB DataSource feed** (*Titan Panel*, *Bazooka*, *ElvUI DataTexts*), the Minimap button / Addon Compartment tooltip, Ace3 Options, and `/gatherer session` (`Alt+Left-Click` or `/gatherer reset` to reset).
- **Harvest Cooldown ("Respawn Timer") Dimming** (`Core/GatherIntegrations.lua`, `GUI/GatherMiniNotes.lua`, `GUI/GatherHUD.lua`):
  - Automatically dims recently harvested nodes on the Minimap and 3D HUD for a configurable respawn duration (`cooldown.time`, default 300s) and shows the remaining cooldown in node tooltips.
- **Fishing Schools & Engineering Gas Cloud Tracking** (`Core/GatherScanner.lua`, `Core/GatherIntegrations.lua`):
  - Extended `Gatherer.Scanner` to detect and record Fishing Schools and Engineering Gas Clouds.
- **External Map, Route & UI Addon Integrations**:
  - **MapWise**: Full support for Terrain and Paper modes (`MapWiseAPI`), continent/Azeroth node projection, and `GathererReforgedWorldMapButton` integration into MapWise's *"Addons"* toolbar menu (`GUI/GatherMapNotes.lua`, `Core/GatherMap.lua`).
  - **Routes & FarmHud**: Registers `GathererReforged` as a native data source plugin in **Routes** (for automated TSP farming circuits) and automatically reparents Minimap pins when **FarmHud** is toggled (`Core/GatherIntegrations.lua`).
  - **ElvUI**: Native support for Square and Round minimaps (`GetMinimapShape()`), click-passthrough for ElvUI tracking/micro menus, scaled World Map support, and automatic ElvUI frame skinning (`GUI/GatherAceGUI.lua`).
  - **Leatrix Maps & Custom Minimap Addons**: Dynamic frame layering above map reveal overlays and full quadrant support for custom minimap shapes (`SQUARE`, `ROUND`, `CORNER-*`, `SIDE-*`, `TRICORNER-*`).
  - **TomTom & Native Waypoints**: `Shift+Right-Click` or `Alt+Left-Click` any Gatherer pin on the World Map to create a **TomTom** waypoint or native Blizzard map pin (`GUI/GatherMapNotes.lua`).
- **Modern Core & UI Architecture**:
  - **Redesigned Gatherables Report & Node Density Search UI** (`GUI/GatherReport.lua`, `GUI/GathererNodeSearch.lua`, `Gatherer.UIStyle`): Complete visual overhaul featuring a sleek dark-gold 1px-bordered theme, modern filter pills, 1-click category tabs (*Alle, Kräuter, Bergbau, Schätze, Archäologie*), sortable columns, live AH market value column, density progress bars, right-click TomTom/Map waypoint creation, live session sidebar, and a 1-click empty-state `GatherMate2` importer.
  - Built-in **3D Heads-Up Display (HUD)** integrated directly into the main AddOn (`GUI/GatherHUD.lua`, `GUI/GatherHUD.xml`, `GUI/HudShape.blp`).
  - **Ace3 GUI & Options System** (`GUI/GatherAceGUI.lua`) built on `AceConfig-3.0` and `AceGUI-3.0`, registered directly in Blizzard Options (`ESC -> Options -> AddOns -> Gatherer Reforged`).
  - **`LibDBIcon-1.0`**, **`LibDataBroker-1.1`**, and **Blizzard Addon Compartment** integration (`GUI/GatherMiniIcon.lua`).
  - Native **`C_Map` Mapping Engine** (`Core/GatherMap.lua`) built on `C_Map`, `C_Minimap`, and `UiMapPoint` with dynamic `MAP_<uiMapID>` zone token support (`Data/GatherZoneTokens.lua`).
  - **Dynamic "Forever" Node Discovery** (`Core/GatherScanner.lua`, `Core/GatherObjects.lua`) to automatically learn and persist new or custom herbs, ores, treasures, and archaeology finds across all expansions and custom servers.
  - Multi-client TOC support (`GathererReforged.toc`) for **WoW Forever** (`16001`), **Retail / Midnight** (`12.x`), **Mists of Pandaria Classic** (`5.5.x`), **Cataclysm** (`4.4.x`), **Wrath** (`3.4.x`/`3.8.x`), **TBC Classic** (`2.5.x`), and **Classic Era** (`1.15.x`).
  - `.pkgmeta`, `embeds.xml`, `.luacheckrc`, and GitHub Actions CI/CD workflows (`.github/workflows/release.yml`, `.github/workflows/quality.yml`).

### Changed
- Rebranded and modernized Norganna's classic *Gatherer* addon (2005–2017) as **Gatherer Reforged** (`GathererReforged`) under **GNU General Public License v3.0 (GPL-3.0)** (`LICENSE`) with `gOOvER` as author.
- Reorganized repository into a clean flat root hierarchy (`Core/`, `Data/`, `GUI/`, `Locales/`, `libs/`) while preserving backwards compatibility with `GatherItems` SavedVariables and `gatherer_hud` settings.
- Replaced removed legacy UI templates (`OptionsButtonTemplate` -> `UIPanelButtonTemplate`, `OptionsCheckButtonTemplate` -> `UICheckButtonTemplate`) across all UI dialogs (`GUI/GatherReport.lua`, `GUI/GathererNodeSearch.lua`).
- Completely revised and corrected the German (`deDE`) localization (`Locales/GatherStrings.lua`, `GathererReforged.toc`).
- Updated node icons (`Core/GatherUtil.lua`, `Data/GatherNodes.lua`) to use built-in WoW FileDataIDs and Item icon lookups with category fallbacks so nodes from other expansions never display red question marks (`INV_Misc_QuestionMark`).
- Updated profession skill detection (`Core/GatherUtil.lua`) and HUD flight form detection (`GUI/GatherHUD.lua`) for modern WoW clients.

### Fixed
- Fixed WoW 12.x `<secret string>` taint comparison errors in `Core/GatherScanner.lua` and `GUI/GatherTooltip.lua` via `Gatherer.IsSafeString` / `Gatherer.IsSafeValue` guards (`issecretvalue`, `canaccessvalue`, `pcall`).
- Fixed removed `Texture:SetNonBlocking` call and nil `GetPlayerFacing()` handling inside instances in `GUI/GatherHUD.lua`.
- Fixed `SetBackdropBorderColor`/`SetBackdropColor` on modern `GameTooltipTemplate` (`Core/GatherMain.xml`) and `SetTexture` / `CreateColorTexture` compatibility (`Core/GatherPolyfills.lua`, `GUI/GatherReport.lua`).
- Fixed `StaticPopupDialogs["GATHERER_ADD_SHARING_IGNORE"]` compatibility with WoW 11.0+ `self:GetEditBox()` (`Core/GatherConfig.lua`).
- Fixed group addon message channel selection (`PARTY`, `RAID`, `INSTANCE_CHAT`) and whisper feedback variable in `Core/GatherComm.lua`.
- Fixed profile creation, copying, deletion, and switching in `Core/GatherConfig.lua` and `GUI/GatherAceGUI.lua`.

### Removed
- Removed discontinued `Astrolabe`, `DongleStub`, and `Babylonian` libraries in favor of native `Gatherer.Map` (`C_Map`) and `AceLocale-3.0`.
- Removed legacy `GatherConfig.xml`, `!Swatter`, `SlideBar`, `Import/`, and obsolete `myAddOns` dependencies.
