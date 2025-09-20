SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
}):register()

SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

SMODS.Atlas({
    key = "CustomConsumables", 
    path = "CustomConsumables.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

SMODS.Atlas({
    key = "CustomBoosters", 
    path = "CustomBoosters.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

SMODS.Atlas({
    key = "CustomEnhancements", 
    path = "CustomEnhancements.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

SMODS.Atlas({
    key = "CustomSeals", 
    path = "CustomSeals.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
}):register()

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end

local function load_jokers_folder()
    local mod_path = SMODS.current_mod.path
    local jokers_path = mod_path .. "/jokers"
    local files = NFS.getDirectoryItemsInfo(jokers_path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("jokers/" .. file_name))()
        end
    end
end

local function load_consumables_folder()
    local mod_path = SMODS.current_mod.path
    local consumables_path = mod_path .. "/consumables"
    local files = NFS.getDirectoryItemsInfo(consumables_path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("consumables/" .. file_name))()
        end
    end
end

local function load_enhancements_folder()
    local mod_path = SMODS.current_mod.path
    local enhancements_path = mod_path .. "/enhancements"
    local files = NFS.getDirectoryItemsInfo(enhancements_path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("enhancements/" .. file_name))()
        end
    end
end

local function load_seals_folder()
    local mod_path = SMODS.current_mod.path
    local seals_path = mod_path .. "/seals"
    local files = NFS.getDirectoryItemsInfo(seals_path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("seals/" .. file_name))()
        end
    end
end

local function load_rarities_file()
    local mod_path = SMODS.current_mod.path
    assert(SMODS.load_file("rarities.lua"))()
end

load_rarities_file()
local function load_boosters_file()
    local mod_path = SMODS.current_mod.path
    assert(SMODS.load_file("boosters.lua"))()
end

load_boosters_file()
assert(SMODS.load_file("sounds.lua"))()
load_jokers_folder()
load_consumables_folder()
load_enhancements_folder()
load_seals_folder()
SMODS.ObjectType({
    key = "iwannabebalala_food",
    cards = {
        ["j_gros_michel"] = true,
        ["j_egg"] = true,
        ["j_ice_cream"] = true,
        ["j_cavendish"] = true,
        ["j_turtle_bean"] = true,
        ["j_diet_cola"] = true,
        ["j_popcorn"] = true,
        ["j_ramen"] = true,
        ["j_selzer"] = true
    },
})

SMODS.ObjectType({
    key = "iwannabebalala_iwannabebalala_jokers",
    cards = {
        ["j_iwannabebalala_bear5"] = true,
        ["j_iwannabebalala_bloodedgetheminion"] = true,
        ["j_iwannabebalala_bob"] = true,
        ["j_iwannabebalala_bomb"] = true,
        ["j_iwannabebalala_boshy"] = true,
        ["j_iwannabebalala_brimstone"] = true,
        ["j_iwannabebalala_canadianmustard"] = true,
        ["j_iwannabebalala_chadhanging"] = true,
        ["j_iwannabebalala_clone"] = true,
        ["j_iwannabebalala_colourinversion"] = true,
        ["j_iwannabebalala_crazyeights"] = true,
        ["j_iwannabebalala_cricketshead"] = true,
        ["j_iwannabebalala_fatspectre"] = true,
        ["j_iwannabebalala_flyinggorilla"] = true,
        ["j_iwannabebalala_freakybob"] = true,
        ["j_iwannabebalala_gabriel"] = true,
        ["j_iwannabebalala_gakvu"] = true,
        ["j_iwannabebalala_genuineweirdperson"] = true,
        ["j_iwannabebalala_goblinphonk"] = true,
        ["j_iwannabebalala_godhead"] = true,
        ["j_iwannabebalala_goldencookie"] = true,
        ["j_iwannabebalala_goldensackboy"] = true,
        ["j_iwannabebalala_greed"] = true,
        ["j_iwannabebalala_isaac"] = true,
        ["j_iwannabebalala_jay"] = true,
        ["j_iwannabebalala_jeffthekiller"] = true,
        ["j_iwannabebalala_jessepinkman"] = true,
        ["j_iwannabebalala_jokerbooster"] = true,
        ["j_iwannabebalala_kraken"] = true,
        ["j_iwannabebalala_lancer"] = true,
        ["j_iwannabebalala_luckyday"] = true,
        ["j_iwannabebalala_magicmushroom"] = true,
        ["j_iwannabebalala_mango"] = true,
        ["j_iwannabebalala_mason"] = true,
        ["j_iwannabebalala_minipekka"] = true,
        ["j_iwannabebalala_moth"] = true,
        ["j_iwannabebalala_naneinf"] = true,
        ["j_iwannabebalala_nojoker"] = true,
        ["j_iwannabebalala_polyphemus"] = true,
        ["j_iwannabebalala_px34gtyu6cxwrafawdwwawdszs"] = true,
        ["j_iwannabebalala_reversecard"] = true,
        ["j_iwannabebalala_sacrificialdummy"] = true,
        ["j_iwannabebalala_sentientace"] = true,
        ["j_iwannabebalala_tablethatfollowsyou"] = true,
        ["j_iwannabebalala_thekid"] = true,
        ["j_iwannabebalala_thompsonscutzanddesigns"] = true,
        ["j_iwannabebalala_toastopia"] = true,
        ["j_iwannabebalala_vouchervendor"] = true,
        ["j_iwannabebalala_walter"] = true,
        ["j_iwannabebalala_watchguard"] = true,
        ["j_iwannabebalala_webdrivertorso"] = true
    },
})