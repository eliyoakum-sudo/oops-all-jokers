
SMODS.Joker{ --yellow
    key = "yellow",
    config = {
        extra = {
            mult0 = 12,
            chips0 = 12
        }
    },
    loc_txt = {
        ['name'] = 'yellow',
        ['text'] = {
            [1] = 'When a card is scored {C:gold}+12 Mult {} and {C:gold}+12 Chips {}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_color_wheel",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_mycustom_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            return {
                mult = 12,
                extra = {
                    chips = 12,
                    colour = G.C.CHIPS
                }
            }
        end
    end
}