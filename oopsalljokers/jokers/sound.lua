
SMODS.Joker{ --sound
    key = "sound",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'sound',
        ['text'] = {
            [1] = '(sub element of air) When the played hand finishes scoring',
            [2] = 'swaps Chips and Mult'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 3
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
        if context.after and context.cardarea == G.jokers  then
            return {
                swap = true
            }
        end
    end
}