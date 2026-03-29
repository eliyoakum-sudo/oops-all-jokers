
SMODS.Joker{ --pi
    key = "pi",
    config = {
        extra = {
            pi = 3.141592653589793
        }
    },
    loc_txt = {
        ['name'] = 'pi',
        ['text'] = {
            [1] = 'When a card is scored {C:red}X3.141592653589793238462643383279502884197169399375105820974944592307816406286',
            [2] = '208998628034825342117067982148086513282306647093844609550582231725359408128481 Mult {}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_pie",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
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