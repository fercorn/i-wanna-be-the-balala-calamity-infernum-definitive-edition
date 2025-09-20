SMODS.Joker{ --Mason
    key = "mason",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Mason',
        ['text'] = {
            [1] = 'All scored {C:attention}6s{} and {C:attention}7s{} are converted into {C:attention}Mustard Cards{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card:get_id() == 6 then
                context.other_card:set_ability(G.P_CENTERS.m_iwannabebalala_mustardcard)
                return {
                    message = "SIX!"
                }
            elseif context.other_card:get_id() == 7 then
                context.other_card:set_ability(G.P_CENTERS.m_iwannabebalala_mustardcard)
                return {
                    message = "SEVENNN!"
                }
            end
        end
    end
}