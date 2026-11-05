-- Luacheck configuration for Gatherer Reborn
std = "lua51"
unused_args = false
max_line_length = 160

globals = {
    "Gatherer",
    "Gatherer_HUD",
    "GathererLocalizations",
    "GatherItems",
    "Gatherer_DropRates",
    "Gatherer_SavedSettings_AccountWide",
    "Gatherer_SavedSettings_PerCharacter",
    "Gatherer_SharingBlacklist",
    "Gatherer_OnAddonCompartmentClick",
    "Gatherer_OnAddonCompartmentEnter",
    "Gatherer_OnAddonCompartmentLeave",
    "Gatherer_DynamicNodes",
    "BINDING_HEADER_GATHERER",
    "BINDING_NAME_GATHERER_TOGGLE_OPTIONS_DIALOG",
}

ignore = {
    "111",
    "112",
    "113",
    "211",
    "212",
    "213",
    "311",
    "411",
    "412",
    "421",
    "422",
    "512",
    "542",
    "611",
    "612",
    "613",
    "614",
}

files = {}
files["libs/"] = {
    ignore = { "1", "2", "3", "4", "5", "6" }
}
