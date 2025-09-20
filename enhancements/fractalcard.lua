SMODS.Enhancement {
    key = 'fractalcard',
    pos = { x = 1, y = 0 },
    config = {
        extra = {
            odds = 2,
            retrigger_times = 2
        }
    },
    loc_txt = {
        name = 'Fractal Card',
        text = {
        [1] = '{C:green}#1# in 2{} chance to retrigger card {C:attention}twice{}'
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
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'm_iwannabebalala_fractalcard')
        return {vars = {numerator, denominator}}
    end,
    calculate = function(self, card, context)
        if context.repetition and card.should_retrigger then
            return { repetitions = card.ability.extra.retrigger_times }
        end
        if context.main_scoring and context.cardarea == G.play then
            card.should_retrigger = false
            if SMODS.pseudorandom_probability(card, 'group_0_fb9f0ba1', 1, card.ability.extra.odds, 'm_iwannabebalala_fractalcard') then
                card.should_retrigger = true
            card.ability.extra.retrigger_times = 2
            end
        end
    end
}