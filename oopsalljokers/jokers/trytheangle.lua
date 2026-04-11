
SMODS.Joker{ --try the angle
    key = "trytheangle",
    config = {
        extra = {
            xchips0 = 3,
            xmult0 = 3
        }
    },
    loc_txt = {
        ['name'] = 'try the angle',
        ['text'] = {
            [1] = 'when a three of a kind is played {C:purple}X3 Chips and Mult{}',
            [2] = 'then balances Chips and Mult'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
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
            if next(context.poker_hands["Three of a Kind"]) then
                return {
                    x_chips = 3,
                    extra = {
                        Xmult = 3,
                        extra = {
                            balance = true,
                            colour = G.C.PURPLE
                        }
                    }
                }
            end
        end
    end
}