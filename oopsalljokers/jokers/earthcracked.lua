
SMODS.Joker{ --earth cracked
    key = "earthcracked",
    config = {
        extra = {
            card_draw0 = 10
        }
    },
    loc_txt = {
        ['name'] = 'earth cracked',
        ['text'] = {
            [1] = 'When a hand is drawn draw 10 extra cards'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = "oopsallj_cracked",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    soul_pos = {
        x = 3,
        y = 3
    },
    in_pool = function(self, args)
        return (
            not args 
            or args.source ~= 'sho' and args.source ~= 'buf' 
            or args.source == 'jud' or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
        )
        and true
    end,
    
    calculate = function(self, card, context)
        if context.hand_drawn  then
            if G.hand and #G.hand.cards > 0 then
                SMODS.draw_cards(10)
            end
            return {
                message = "+"..tostring(10).." Cards Drawn"
            }
        end
    end
}