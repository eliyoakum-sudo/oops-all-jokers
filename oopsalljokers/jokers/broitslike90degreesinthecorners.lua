
SMODS.Joker{ --bro its like 90 degrees in the corners
    key = "broitslike90degreesinthecorners",
    config = {
        extra = {
            xchips0 = 4,
            xmult0 = 4
        }
    },
    loc_txt = {
        ['name'] = 'bro its like 90 degrees in the corners',
        ['text'] = {
            [1] = 'when a four of a kind is played {C:purple}X3 Chips and Mult{}',
            [2] = 'then swaps Chips and Mult'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
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
        if context.cardarea == G.jokers and context.joker_main  then
            if next(context.poker_hands["Four of a Kind"]) then
                return {
                    x_chips = 4,
                    extra = {
                        Xmult = 4,
                        extra = {
                            swap = true,
                            colour = G.C.CHIPS
                        }
                    }
                }
            end
        end
    end
}