
SMODS.Joker{ --Earth
    key = "earth",
    config = {
        extra = {
            card_draw0 = 5
        }
    },
    loc_txt = {
        ['name'] = 'Earth',
        ['text'] = {
            [1] = 'When a hand is drawn draw 5 extra cards'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = "oopsallj_element",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["oopsallj_oopsallj_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.hand_drawn  then
            if G.hand and #G.hand.cards > 0 then
                SMODS.draw_cards(5)
            end
            return {
                message = "+"..tostring(5).." Cards Drawn"
            }
        end
    end
}