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

local jokerIndexList = {28,22,39,17,4,25,7,8,26,27,20,21,12,11,18,19,9,10,23,24,38,1,2,3,13,14,15,16,36,37,5,6,29,30,33,34,31,32,35}

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
        ["j_oopsallj_aircracked"] = true,
        ["j_oopsallj_bluepentagon"] = true,
        ["j_oopsallj_bluepentagoncracked"] = true,
        ["j_oopsallj_collagedegree"] = true,
        ["j_oopsallj_collagedegreecracked"] = true,
        ["j_oopsallj_earth"] = true,
        ["j_oopsallj_earthcracked"] = true,
        ["j_oopsallj_fire"] = true,
        ["j_oopsallj_firecracked"] = true,
        ["j_oopsallj_pi"] = true,
        ["j_oopsallj_picracked"] = true,
        ["j_oopsallj_redpentagon"] = true,
        ["j_oopsallj_redpentagoncracked"] = true,
        ["j_oopsallj_refrence"] = true,
        ["j_oopsallj_refrencecracked"] = true,
        ["j_oopsallj_sans"] = true,
        ["j_oopsallj_sanscracked"] = true,
        ["j_oopsallj_splashimage"] = true,
        ["j_oopsallj_water"] = true,
        ["j_oopsallj_watercracked"] = true,
        ["j_oopsallj_x"] = true
    },
})

SMODS.ObjectType({
    key = "oopsallj_mycustom_jokers",
    cards = {
        ["j_oopsallj_blue"] = true,
        ["j_oopsallj_c"] = true,
        ["j_oopsallj_ccracked"] = true,
        ["j_oopsallj_connect5red"] = true,
        ["j_oopsallj_connect5yellow"] = true,
        ["j_oopsallj_green"] = true,
        ["j_oopsallj_grenade"] = true,
        ["j_oopsallj_grenadecracked"] = true,
        ["j_oopsallj_lua"] = true,
        ["j_oopsallj_luacracked"] = true,
        ["j_oopsallj_orange"] = true,
        ["j_oopsallj_purple"] = true,
        ["j_oopsallj_python"] = true,
        ["j_oopsallj_pythoncracked"] = true,
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