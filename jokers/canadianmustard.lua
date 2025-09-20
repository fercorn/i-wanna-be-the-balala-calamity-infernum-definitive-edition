SMODS.Joker{ --Canadian Mustard
    key = "canadianmustard",
    config = {
        extra = {
            odds = 4
        }
    },
    loc_txt = {
        ['name'] = 'Canadian Mustard',
        ['text'] = {
            [1] = 'Scored cards have a {C:green}#1# in 4{} chance of',
            [2] = 'being turned into a {C:attention}Mustard Card{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 0
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

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_iwannabebalala_canadianmustard') 
        return {vars = {new_numerator, new_denominator}}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_dec706ab', 1, card.ability.extra.odds, 'j_iwannabebalala_canadianmustard', false) then
              context.other_card:set_ability(G.P_CENTERS.m_iwannabebalala_mustardcard)
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Mustard?", colour = G.C.BLUE})
          end
            end
        end
    end
}