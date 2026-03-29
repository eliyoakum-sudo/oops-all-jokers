
SMODS.Joker{ --water
    key = "water",
    config = {
        extra = {
            xmult0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'water',
        ['text'] = {
            [1] = 'if played hand is a full house {C:red}X5 Mult {}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if context.scoring_name == "Full House" then
                return {
                    Xmult = 5
                }
            end
        end
    end
}