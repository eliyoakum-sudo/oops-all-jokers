
SMODS.Joker{ --Air
    key = "air",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Air',
        ['text'] = {
            [1] = 'When the played hand finishes scoring',
            [2] = 'balances Chips and Mult'
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
    cost = 4,
    rarity = "oopsallj_element",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.after and context.cardarea == G.jokers  then
            return {
                balance = true
            }
        end
    end
}