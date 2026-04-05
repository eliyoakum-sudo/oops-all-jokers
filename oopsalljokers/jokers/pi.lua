
SMODS.Joker{ --pi
    key = "pi",
    config = {
        extra = {
            xmult0 = 3.141592653589793
        }
    },
    loc_txt = {
        ['name'] = 'pi',
        ['text'] = {
            [1] = 'when a card is scored {C:red}X3.14159265358979',
            [2] = '32384626433832795028841971693993751058209749',
            [3] = '44592307816406286 20899862803482',
            [4] = '5342117067982148086513282306647093844',
            [5] = '609550582231725359408128481{} Mult'
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
    rarity = "oopsallj_pie",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            return {
                Xmult = 3.141592653589793
            }
        end
    end
}