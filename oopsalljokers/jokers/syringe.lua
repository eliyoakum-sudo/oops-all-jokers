
SMODS.Joker{ --syringe
    key = "syringe",
    config = {
        extra = {
            voucher_slots0 = 1
        }
    },
    loc_txt = {
        ['name'] = 'syringe',
        ['text'] = {
            [1] = 'when the shop is rerolled gain one voucher slot'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_expirimental",
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.reroll_shop  then
            return {
                
                func = function()
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(1).." Voucher Slots", colour = G.C.BLUE})
                    
                    SMODS.change_voucher_limit(1)
                    return true
                end
            }
        end
    end
}