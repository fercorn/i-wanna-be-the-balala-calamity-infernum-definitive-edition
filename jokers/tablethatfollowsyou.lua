SMODS.Joker{ --Table That Follows You
    key = "tablethatfollowsyou",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Table That Follows You',
        ['text'] = {
            [1] = 'All {C:attention}Aces{} become {C:attention}Zapped Cards{}',
            [2] = 'when scored'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
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
            if context.other_card:get_id() == 14 then
                context.other_card:set_ability(G.P_CENTERS.m_iwannabebalala_zappedcard)
                return {
                    message = "Card Modified!"
                }
            end
        end
    end
}