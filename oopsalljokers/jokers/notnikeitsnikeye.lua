
SMODS.Joker{ --not NIKE, its NIKEYE
    key = "notnikeitsnikeye",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'not NIKE, its NIKEYE',
        ['text'] = {
            [1] = 'NIKEYE, YOU MIGHT REGRET PICKING UP THIS JOKER'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_geometry",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if (context.end_of_round or context.reroll_shop or context.buying_card or
            context.selling_card or context.ending_shop or context.starting_shop or 
            context.ending_booster or context.skipping_booster or context.open_booster or
            context.skip_blind or context.before or context.pre_discard or context.setting_blind or
        context.using_consumeable)   then
            error("you shouldnt have bought off brand shoes you dumbass")
        end
    end
}