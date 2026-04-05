
SMODS.Joker{ --4
    key = "_4",
    config = {
        extra = {
            xmult0 = 4
        }
    },
    loc_txt = {
        ['name'] = '4',
        ['text'] = {
            [1] = 'When a card is scored 4{C:red}(Mult){}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_bfdi",
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
                Xmult = 4
            }
        end
    end
}