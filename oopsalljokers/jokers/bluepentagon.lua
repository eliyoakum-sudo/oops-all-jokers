
SMODS.Joker{ --blue pentagon
    key = "bluepentagon",
    config = {
        extra = {
            chips0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'blue pentagon',
        ['text'] = {
            [1] = 'When a card is scored {C:blue}+5 chips{}'
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
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            return {
                chips = 5
            }
        end
    end
}