SMODS.Joker{ --Colour Inversion
    key = "colourinversion",
    config = {
        extra = {
            odds = 17
        }
    },
    loc_txt = {
        ['name'] = 'Colour Inversion',
        ['text'] = {
            [1] = 'Whenever a card is discarded,',
            [2] = '{C:green}#1# in 17 {}chance to make that card {C:dark_edition}Negative{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 10,
    rarity = "iwannabebalala_epic",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_iwannabebalala_colourinversion') 
        return {vars = {new_numerator, new_denominator}}
    end,

    calculate = function(self, card, context)
        if context.discard  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_a758ea11', 1, card.ability.extra.odds, 'j_iwannabebalala_colourinversion', false) then
              SMODS.calculate_effect({func = function()
                context.other_card:set_edition("e_negative", true)
                    end}, card)
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Inverted!", colour = G.C.BLUE})
          end
            end
        end
    end
}