
SMODS.Joker{ --purple
    key = "purple",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'purple',
        ['text'] = {
            [1] = 'When a card is scored adds a random {C:enhanced}Enhancement{}',
            [2] = 'to the scored card'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
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
            local scored_card = context.other_card
            G.E_MANAGER:add_event(Event({
                func = function()
                    
                    local enhancement_pool = {}
                    for _, enhancement in pairs(G.P_CENTER_POOLS.Enhanced) do
                        if enhancement.key ~= 'm_stone' then
                            enhancement_pool[#enhancement_pool + 1] = enhancement
                        end
                    end
                    local random_enhancement = pseudorandom_element(enhancement_pool, 'edit_card_enhancement')
                    scored_card:set_ability(random_enhancement)
                    card_eval_status_text(scored_card, 'extra', nil, nil, nil, {message = "Card Modified!", colour = G.C.ORANGE})
                    return true
                end
            }))
        end
    end
}