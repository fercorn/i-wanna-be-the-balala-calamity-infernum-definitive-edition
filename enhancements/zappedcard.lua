SMODS.Enhancement {
    key = 'zappedcard',
    pos = { x = 5, y = 0 },
    config = {
        extra = {
            x_mult = 1.5
        }
    },
    loc_txt = {
        name = 'Zapped Card',
        text = {
        [1] = '{X:red,C:white}X1.5{} {C:red}Mult{} when card is scored'
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
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return { x_mult = card.ability.extra.x_mult }
        end
    end
}