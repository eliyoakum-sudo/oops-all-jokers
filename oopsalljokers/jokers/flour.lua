
SMODS.Joker{ --flour
    key = "flour",
    config = {
        extra = {
            echips0 = 20
        }
    },
    loc_txt = {
        ['name'] = 'flour',
        ['text'] = {
            [1] = 'when a hand is played {C:blue}^20 Chips {}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_processed",
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
                e_chips = 20
            }
        end
    end
}