SMODS.Joker{ --Crazy Eights
    key = "crazyeights",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Crazy Eights',
        ['text'] = {
            [1] = 'All scoring {C:attention}8s{} are converted',
            [2] = 'into {C:attention}Wild Cards{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 1
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
            if context.other_card:get_id() == 8 then
                context.other_card:set_ability(G.P_CENTERS.m_wild)
                return {
                    message = "Card Modified!"
                }
            end
        end
    end
}