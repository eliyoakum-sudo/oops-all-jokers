
SMODS.Joker{ --orange
    key = "orange",
    config = {
        extra = {
            mult0 = 12
        }
    },
    loc_txt = {
        ['name'] = 'orange',
        ['text'] = {
            [1] = 'When a card is scored {C:attention}+12 Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
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
                mult = 12
            }
        end
    end
}