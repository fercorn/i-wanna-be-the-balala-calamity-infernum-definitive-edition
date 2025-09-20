SMODS.Joker{ --Lucky Day
    key = "luckyday",
    config = {
        extra = {
            odds = 7,
            lucky = 0
        }
    },
    loc_txt = {
        ['name'] = 'Lucky Day',
        ['text'] = {
            [1] = 'When you lose the run',
            [2] = '{C:green}#2# in 7{} chance to prevent Death'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_iwannabebalala_luckyday') 
        return {vars = {card.ability.extra.lucky, new_numerator, new_denominator}}
    end,

    calculate = function(self, card, context)
        if context.end_of_round and context.game_over and context.main_eval  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_d6337044', 1, card.ability.extra.odds, 'j_iwannabebalala_luckyday', false) then
              play_sound("iwannabebalala_lucky")
                        SMODS.calculate_effect({saved = true}, card)
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_saved_ex'), colour = G.C.RED})
          end
            end
        end
    end
}