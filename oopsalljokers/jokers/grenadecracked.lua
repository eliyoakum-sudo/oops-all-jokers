
SMODS.Joker{ --grenade cracked
    key = "grenadecracked",
    config = {
        extra = {
            odds = 30
        }
    },
    loc_txt = {
        ['name'] = 'grenade cracked',
        ['text'] = {
            [1] = 'When the round ends 1 in 30 chance to crash the game'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_cracked",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_mycustom_jokers"] = true },
    soul_pos = {
        x = 9,
        y = 1
    },
    in_pool = function(self, args)
        return (
            not args 
            or args.source ~= 'sho' and args.source ~= 'buf' 
            or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
        )
        and true
    end,
    
    loc_vars = function(self, info_queue, card)
        
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_oopsallj_grenadecracked') 
        return {vars = {new_numerator, new_denominator}}
    end,
    
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_e6c7e2b4', 1, card.ability.extra.odds, 'j_oopsallj_grenadecracked', false) then
                    error("Boom you got hit by a grenade and died")
                    
                end
            end
        end
    end
}