SMODS.Enhancement {
    key = 'burntcard',
    pos = { x = 0, y = 0 },
    config = {
        bonus = -5,
        extra = {
            odds = 4,
            levels = 1
        }
    },
    loc_txt = {
        name = 'Burnt Card',
        text = {
        [1] = '{C:blue}-5 Chips{}',
        [2] = '{C:green}#1# in 4{} chance to level up played poker hand'
    }
    },
    atlas = 'CustomEnhancements',
    any_suit = false,
    replace_base_card = false,
    no_rank = false,
    no_suit = false,
    always_scores = false,
    unlocked = true,
    discovered = true,
    no_collection = false,
    weight = 5,
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'm_iwannabebalala_burntcard')
        return {vars = {-5, numerator, denominator}}
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            if SMODS.pseudorandom_probability(card, 'group_0_86a6c446', 1, card.ability.extra.odds, 'm_iwannabebalala_burntcard') then
                local target_hand
                target_hand = context.scoring_name or "High Card"
                SMODS.calculate_effect({level_up = card.ability.extra.levels,
                level_up_hand = target_hand}, card)
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Burnt!", colour = G.C.RED})
            end
        end
    end
}