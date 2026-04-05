
SMODS.Joker{ --SPAMTON NEO
    key = "spamtonneo",
    config = {
        extra = {
            xchips0 = 1000,
            xmult0 = 1000
        }
    },
    loc_txt = {
        ['name'] = 'SPAMTON NEO',
        ['text'] = {
            [1] = 'When a card is scored {C:red}X1000{} Mult and {C:blue}X1000{} chps'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = "oopsallj_click_bait",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    in_pool = function(self, args)
        return (
            not args 
            or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' and args.source ~= 'sou' 
            or args.source == 'rif' or args.source == 'rta' or args.source == 'uta' or args.source == 'wra'
        )
        and true
    end,
    
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            return {
                x_chips = 1000,
                extra = {
                    Xmult = 1000
                }
            }
        end
    end
}