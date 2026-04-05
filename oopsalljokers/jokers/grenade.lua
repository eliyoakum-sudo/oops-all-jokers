
SMODS.Joker{ --grenade
    key = "grenade",
    config = {
        extra = {
            odds = 15
        }
    },
    loc_txt = {
        ['name'] = 'grenade',
        ['text'] = {
            [1] = 'When the round ends 1 in 15 chance to crash the game'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_bomb",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_mycustom_jokers"] = true },
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_oopsallj_grenade') 
        return {vars = {new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_e6c7e2b4', 1, card.ability.extra.odds, 'j_oopsallj_grenade', false) then
                    error("EasternFarmer Was Here")
                    
                end
            end
        end
    end
}