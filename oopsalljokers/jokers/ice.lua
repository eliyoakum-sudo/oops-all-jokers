
SMODS.Joker{ --ice
    key = "ice",
    config = {
        extra = {
            xmult0 = 2.5
        }
    },
    loc_txt = {
        ['name'] = 'ice',
        ['text'] = {
            [1] = '(sub element of water) When a two pair is played {C:red}X2.5 Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = "oopsallj_sub_element",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if next(context.poker_hands["Two Pair"]) then
                return {
                    Xmult = 2.5
                }
            end
        end
    end
}