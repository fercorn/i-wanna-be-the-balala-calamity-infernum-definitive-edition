SMODS.Seal {
    key = 'freakyseal',
    pos = { x = 1, y = 0 },
    config = {
        extra = {
            x_mult = 0.9,
            x_chips = 1.25
        }
    },
    badge_colour = HEX('FFD700'),
   loc_txt = {
        name = 'Freaky Seal',
        label = 'Freaky Seal',
        text = {
        [1] = '{X:red,C:white}X0.9{} {C:red}Mult{}',
        [2] = '{X:blue,C:white}X1.25{} {C:blue}Chips{}'
    }
    },
    atlas = 'CustomSeals',
    unlocked = true,
    discovered = true,
    no_collection = false,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return { x_mult = card.ability.seal.extra.x_mult, x_chips = card.ability.seal.extra.x_chips }
        end
    end
}