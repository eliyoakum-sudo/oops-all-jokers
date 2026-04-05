
SMODS.Joker{ --collage degree
    key = "collagedegree",
    config = {
        extra = {
            odds = 2
        }
    },
    loc_txt = {
        ['name'] = 'collage degree',
        ['text'] = {
            [1] = 'When you lose the game 1 in 2 chance you win the game instead'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_uno_reverse",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_oopsallj_collagedegree') 
        return {vars = {new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over and context.main_eval  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_ab3f1ebe', 1, card.ability.extra.odds, 'j_oopsallj_collagedegree', false) then
                    G.E_MANAGER:add_event(Event({
                        blocking = false,
                        func = function()
                            if G.STATE == G.STATES.SELECTING_HAND then
                                G.GAME.chips = G.GAME.blind.chips
                                G.STATE = G.STATES.HAND_PLAYED
                                G.STATE_COMPLETE = true
                                end_round()
                                return true
                            end
                        end
                    }))
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Win!", colour = G.C.ORANGE})
                end
            end
        end
    end
}