
SMODS.Joker{ --Hagrid
    key = "hagrid",
    config = {
        extra = {
            repetitions = 5
        }
    },
    loc_txt = {
        ['name'] = 'Hagrid',
        ['text'] = {
            [1] = '\"I should not have told yah that\" when first hand of round is drawn creates 5 ace of clubs'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 2
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
        if context.first_hand_drawn  then
            if true then
                for i = 1, 5 do
                    SMODS.calculate_effect({func = function()
                        
                        local suit_prefix = 'C'
                        local rank_suffix = 'A'
                        local card_front = G.P_CARDS[suit_prefix..rank_suffix]
                        local base_card = create_playing_card({
                            front = card_front,
                            center = G.P_CENTERS.c_base
                        }, G.discard, true, false, nil, true)
                        
                        
                        
                        G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                        base_card.playing_card = G.playing_card
                        table.insert(G.playing_cards, base_card)
                        
                        G.E_MANAGER:add_event(Event({
                            func = function()
                                G.hand:emplace(base_card)
                                base_card:start_materialize()
                                SMODS.calculate_context({ playing_card_added = true, cards = { base_card } })
                                return true
                            end
                        }))
                    end}, card)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Added Card to Hand!", colour = G.C.GREEN})
                end
            end
        end
    end
}