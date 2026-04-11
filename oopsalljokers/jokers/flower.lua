
SMODS.Joker{ --flower
    key = "flower",
    config = {
        extra = {
            emult0 = 20
        }
    },
    loc_txt = {
        ['name'] = 'flower',
        ['text'] = {
            [1] = 'when a hand is played {C:red}^20 Mult {}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_natural",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                e_mult = 20
            }
        end
    end
}