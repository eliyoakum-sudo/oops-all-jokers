
SMODS.Joker{ --pi cracked
    key = "picracked",
    config = {
        extra = {
            pi = 3.141592653589793
        }
    },
    loc_txt = {
        ['name'] = 'pi cracked',
        ['text'] = {
            [1] = 'When a card is scored {C:red}X6.2831853071795864769252867665',
            [2] = '590057683943387987502116419498891846156328',
            [3] = '125724179972560696506842341359643034173026564612306286208998628034',
            [4] = '825342117067982148086513282306647093844609',
            [5] = '550582231725359408128481',
            [6] = 'Mult {}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 2
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
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    soul_pos = {
        x = 5,
        y = 2
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
        
        return {vars = {card.ability.extra.pi}}
    end,
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            return {
                Xmult = card.ability.extra.pi
            }
        end
    end
}