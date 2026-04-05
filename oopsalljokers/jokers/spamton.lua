
SMODS.Joker{ --SPAMTON
    key = "spamton",
    config = {
        extra = {
            odds = 100
        }
    },
    loc_txt = {
        ['name'] = 'SPAMTON',
        ['text'] = {
            [1] = 'When any played hand finishes scoring 1 in 100 chance to create spamton neo'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_click_bait",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_oopsallj_spamton') 
        return {vars = {new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.after and context.cardarea == G.jokers  and not context.blueprint then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_303b1476', 1, card.ability.extra.odds, 'j_oopsallj_spamton', false) then
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            play_sound("spamneo1")
                            
                            return true
                        end,
                    }))
                    
                end
            end
        end
        if (context.end_of_round or context.reroll_shop or context.buying_card or
            context.selling_card or context.ending_shop or context.starting_shop or 
            context.ending_booster or context.skipping_booster or context.open_booster or
            context.skip_blind or context.before or context.pre_discard or context.setting_blind or
        context.using_consumeable)  and not context.blueprint  then
            G.E_MANAGER:add_event(Event({
                func = function()
                    play_sound("spam")
                    
                    return true
                end,
            }))
        end
    end
}