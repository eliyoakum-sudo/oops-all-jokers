SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "balatro", 
    path = "balatro.png", 
    px = 333,
    py = 216,
    prefix_config = { key = false },
    atlas_table = "ASSET_ATLAS"
})


SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end

local jokerIndexList = {19,15,27,11,3,17,5,18,14,8,7,12,6,26,1,2,9,10,25,4,20,21,23,22,16,24,13}

local function load_jokers_folder()
    local mod_path = SMODS.current_mod.path
    local jokers_path = mod_path .. "/jokers"
    local files = NFS.getDirectoryItemsInfo(jokers_path)
    for i = 1, #jokerIndexList do
        local file_name = files[jokerIndexList[i]].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("jokers/" .. file_name))()
        end
    end
end

local function load_rarities_file()
    local mod_path = SMODS.current_mod.path
    assert(SMODS.load_file("rarities.lua"))()
end

load_rarities_file()
load_jokers_folder()
SMODS.ObjectType({
    key = "oopsallj_food",
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
    key = "oopsallj_oopsallj_jokers",
    cards = {
        ["j_oopsallj__4"] = true,
        ["j_oopsallj_air"] = true,
        ["j_oopsallj_bluepentagon"] = true,
        ["j_oopsallj_collagedegree"] = true,
        ["j_oopsallj_earth"] = true,
        ["j_oopsallj_fire"] = true,
        ["j_oopsallj_hagrid"] = true,
        ["j_oopsallj_pi"] = true,
        ["j_oopsallj_redpentagon"] = true,
        ["j_oopsallj_sans"] = true,
        ["j_oopsallj_spamton"] = true,
        ["j_oopsallj_spamtonneo"] = true,
        ["j_oopsallj_splashimage"] = true,
        ["j_oopsallj_water"] = true,
        ["j_oopsallj_x"] = true
    },
})

SMODS.ObjectType({
    key = "oopsallj_mycustom_jokers",
    cards = {
        ["j_oopsallj_blue"] = true,
        ["j_oopsallj_c"] = true,
        ["j_oopsallj_connect5red"] = true,
        ["j_oopsallj_connect5yellow"] = true,
        ["j_oopsallj_green"] = true,
        ["j_oopsallj_grenade"] = true,
        ["j_oopsallj_lua"] = true,
        ["j_oopsallj_orange"] = true,
        ["j_oopsallj_purple"] = true,
        ["j_oopsallj_python"] = true,
        ["j_oopsallj_red"] = true,
        ["j_oopsallj_yellow"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {},
        post_trigger = true 
    }
end