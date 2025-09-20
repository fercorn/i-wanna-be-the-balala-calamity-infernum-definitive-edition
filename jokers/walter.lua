SMODS.Joker{ --Walter
    key = "walter",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Walter',
        ['text'] = {
            [1] = 'When a {C:clubs}Club{} card is scored,',
            [2] = 'turn it into a {C:attention}Meth Card{}',
            [3] = '\"IM ALWAYS REAL\"'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 1,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card:is_suit("Clubs") then
                context.other_card:set_ability(G.P_CENTERS.m_iwannabebalala_methcard)
                return {
                    message = "Card Modified!"
                }
            end
        end
    end
}