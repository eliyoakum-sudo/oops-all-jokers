
SMODS.Joker{ --invis
    key = "invis",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'invis',
        ['text'] = {
            [1] = 'turns other jokers invisible PERMANENTLY when a card is scored'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_potion",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            local destructable_jokers = {}
            for i, joker in ipairs(G.jokers.cards) do
                if joker ~= card and not SMODS.is_eternal(joker) and not joker.getting_sliced then
                    table.insert(destructable_jokers, joker)
                end
            end
            local target_joker = #destructable_jokers > 0 and pseudorandom_element(destructable_jokers, pseudoseed('destroy_joker')) or nil
            
            if target_joker then
                target_joker.getting_sliced = true
                G.E_MANAGER:add_event(Event({
                    func = function()
                        target_joker:start_dissolve({G.C.RED}, nil, 1.6)
                        return true
                    end
                }))
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Destroyed!", colour = G.C.RED})
            end
        end
    end
}