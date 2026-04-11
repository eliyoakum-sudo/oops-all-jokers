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
-- this function is used to load everything within a folder.-- Jokerforge doesnt use it because it doesnt make loading order easy
local function load_folder(path)
    local files = NFS.getDirectoryItemsInfo(mod_path .. "/" .. path)
    for i = 1, #files do
        local file_name = files[i].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file(path .. file_name))()
        end
    end
end
-- load the jokers
if true then
    assert(SMODS.load_file("jokers/red.lua"))()
    assert(SMODS.load_file("jokers/orange.lua"))()
    assert(SMODS.load_file("jokers/yellow.lua"))()
    assert(SMODS.load_file("jokers/green.lua"))()
    assert(SMODS.load_file("jokers/blue.lua"))()
    assert(SMODS.load_file("jokers/purple.lua"))()
    assert(SMODS.load_file("jokers/c.lua"))()
    assert(SMODS.load_file("jokers/python.lua"))()
    assert(SMODS.load_file("jokers/lua.lua"))()
    assert(SMODS.load_file("jokers/connect5yellow.lua"))()
    assert(SMODS.load_file("jokers/connect5red.lua"))()
    assert(SMODS.load_file("jokers/grenade.lua"))()
    assert(SMODS.load_file("jokers/collagedegree.lua"))()
    assert(SMODS.load_file("jokers/x.lua"))()
    assert(SMODS.load_file("jokers/_4.lua"))()
    assert(SMODS.load_file("jokers/air.lua"))()
    assert(SMODS.load_file("jokers/earth.lua"))()
    assert(SMODS.load_file("jokers/fire.lua"))()
    assert(SMODS.load_file("jokers/water.lua"))()
    assert(SMODS.load_file("jokers/bluepentagon.lua"))()
    assert(SMODS.load_file("jokers/redpentagon.lua"))()
    assert(SMODS.load_file("jokers/sans.lua"))()
    assert(SMODS.load_file("jokers/spamtonneo.lua"))()
    assert(SMODS.load_file("jokers/spamton.lua"))()
    assert(SMODS.load_file("jokers/pi.lua"))()
    assert(SMODS.load_file("jokers/splashimage.lua"))()
    assert(SMODS.load_file("jokers/hagrid.lua"))()
    assert(SMODS.load_file("jokers/lightning.lua"))()
    assert(SMODS.load_file("jokers/ice.lua"))()
    assert(SMODS.load_file("jokers/nature.lua"))()
    assert(SMODS.load_file("jokers/sound.lua"))()
    assert(SMODS.load_file("jokers/trytheangle.lua"))()
    assert(SMODS.load_file("jokers/circle.lua"))()
    assert(SMODS.load_file("jokers/notnikeitsnikeye.lua"))()
    assert(SMODS.load_file("jokers/ducky.lua"))()
    assert(SMODS.load_file("jokers/egg.lua"))()
    assert(SMODS.load_file("jokers/broitslike90degreesinthecorners.lua"))()
    assert(SMODS.load_file("jokers/britain.lua"))()
    assert(SMODS.load_file("jokers/syringe.lua"))()
    assert(SMODS.load_file("jokers/flour.lua"))()
    assert(SMODS.load_file("jokers/flower.lua"))()
    assert(SMODS.load_file("jokers/huh.lua"))()
    assert(SMODS.load_file("jokers/invis.lua"))()
    assert(SMODS.load_file("jokers/lilguy.lua"))()
    assert(SMODS.load_file("jokers/bigguy.lua"))()
    assert(SMODS.load_file("jokers/extreemlylilguy.lua"))()
    assert(SMODS.load_file("jokers/bluelilguy.lua"))()
    assert(SMODS.load_file("jokers/greenlilguy.lua"))()
    assert(SMODS.load_file("jokers/redlilguy.lua"))()
end


assert(SMODS.load_file("rarities.lua"))()

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
    key = "oopsallj_mycustom_jokers",
    cards = {
        ["j_oopsallj_red"] = true,
        ["j_oopsallj_orange"] = true,
        ["j_oopsallj_yellow"] = true,
        ["j_oopsallj_green"] = true,
        ["j_oopsallj_blue"] = true,
        ["j_oopsallj_purple"] = true,
        ["j_oopsallj_c"] = true,
        ["j_oopsallj_python"] = true,
        ["j_oopsallj_lua"] = true,
        ["j_oopsallj_connect5yellow"] = true,
        ["j_oopsallj_connect5red"] = true,
        ["j_oopsallj_grenade"] = true
    },
})

SMODS.ObjectType({
    key = "oopsallj_oopsallj_jokers",
    cards = {
        ["j_oopsallj_collagedegree"] = true,
        ["j_oopsallj_x"] = true,
        ["j_oopsallj__4"] = true,
        ["j_oopsallj_air"] = true,
        ["j_oopsallj_earth"] = true,
        ["j_oopsallj_fire"] = true,
        ["j_oopsallj_water"] = true,
        ["j_oopsallj_bluepentagon"] = true,
        ["j_oopsallj_redpentagon"] = true,
        ["j_oopsallj_sans"] = true,
        ["j_oopsallj_spamtonneo"] = true,
        ["j_oopsallj_spamton"] = true,
        ["j_oopsallj_pi"] = true,
        ["j_oopsallj_splashimage"] = true,
        ["j_oopsallj_hagrid"] = true,
        ["j_oopsallj_lightning"] = true,
        ["j_oopsallj_ice"] = true,
        ["j_oopsallj_nature"] = true,
        ["j_oopsallj_sound"] = true,
        ["j_oopsallj_trytheangle"] = true,
        ["j_oopsallj_circle"] = true,
        ["j_oopsallj_notnikeitsnikeye"] = true,
        ["j_oopsallj_ducky"] = true,
        ["j_oopsallj_egg"] = true,
        ["j_oopsallj_broitslike90degreesinthecorners"] = true,
        ["j_oopsallj_britain"] = true,
        ["j_oopsallj_syringe"] = true,
        ["j_oopsallj_flour"] = true,
        ["j_oopsallj_flower"] = true,
        ["j_oopsallj_huh"] = true,
        ["j_oopsallj_invis"] = true,
        ["j_oopsallj_lilguy"] = true,
        ["j_oopsallj_bigguy"] = true,
        ["j_oopsallj_extreemlylilguy"] = true,
        ["j_oopsallj_bluelilguy"] = true,
        ["j_oopsallj_greenlilguy"] = true,
        ["j_oopsallj_redlilguy"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {},
        post_trigger = true 
    }
end