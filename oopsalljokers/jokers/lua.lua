
SMODS.Joker{ --lua.
    key = "lua",
    config = {
        extra = {
            sell_value0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'lua.',
        ['text'] = {
            [1] = 'When any other joker triggers add {C:money}$5 {}',
            [2] = 'to this cards sell value but when any card is',
            [3] = 'destroyed this joker is destroyed aswell'
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
    rarity = "oopsallj_code",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_mycustom_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.post_trigger  then
            return {
                func = function()local my_pos = nil
                    for i = 1, #G.jokers.cards do
                        if G.jokers.cards[i] == card then
                            my_pos = i
                            break
                        end
                    end
                    local target_card = G.jokers.cards[my_pos]
                    target_card.ability.extra_value = (card.ability.extra_value or 0) + 5
                    target_card:set_cost()
                    return true
                end,
                message = "+"..tostring(5).." Sell Value"
            }
        end
        if context.remove_playing_cards  then
            return {
                func = function()
                    local target_joker = card
                    
                    if target_joker then
                        if target_joker.ability.eternal then
                            target_joker.ability.eternal = nil
                        end
                        target_joker.getting_sliced = true
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                                return true
                            end
                        }))
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
                    end
                    return true
                end
            }
        end
    end
}