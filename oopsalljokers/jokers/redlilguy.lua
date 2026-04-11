
SMODS.Joker{ --red lil guy
    key = "redlilguy",
    config = {
        extra = {
            mult0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'red lil guy',
        ['text'] = {
            [1] = 'when a card is scored {C:red}+5 mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = "oopsallj_lil_guy",
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
                mult = 5
            }
        end
    end
}