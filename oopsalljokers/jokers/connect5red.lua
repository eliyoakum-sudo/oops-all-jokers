
SMODS.Joker{ --connect 5 red
    key = "connect5red",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'connect 5 red',
        ['text'] = {
            [1] = 'When a Boss Blind is defeated if you own 4 other',
            [2] = 'Connect 5 Jokers of the same color ( including this one ) win the run'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_connect_5_red",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_mycustom_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
            if (function()
                local count = 0
                for _, joker_owned in pairs(G.jokers.cards or {}) do
                    if joker_owned.config.center.rarity == "oopsallj_connect_5_red" then
                        count = count + 1
                    end
                end
                return to_big(count) == to_big(5)
            end)() then
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
                return {
                    message = "Win!"
                }
            end
        end
    end
}