
SMODS.Joker{ --egg
    key = "egg",
    config = {
        extra = {
            dollars0 = 20
        }
    },
    loc_txt = {
        ['name'] = 'egg',
        ['text'] = {
            [1] = 'its hardboiled',
            [2] = '(and yes the deltarune refrences will never stop EVER)',
            [3] = 'also it hatches 20$ when you defeat the boss blind'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 5,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_lemonade_stand",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval and G.GAME.blind.boss  then
            return {
                
                func = function()
                    
                    local current_dollars = G.GAME.dollars
                    local target_dollars = G.GAME.dollars + 20
                    local dollar_value = target_dollars - current_dollars
                    ease_dollars(dollar_value)
                    card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(20), colour = G.C.MONEY})
                    return true
                end
            }
        end
    end
}