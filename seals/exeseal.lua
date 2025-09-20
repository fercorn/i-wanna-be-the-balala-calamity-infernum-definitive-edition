SMODS.Seal {
    key = 'exeseal',
    pos = { x = 0, y = 0 },
    config = {
        extra = {
            x_mult = 1.666
        }
    },
    badge_colour = HEX('000000'),
   loc_txt = {
        name = 'Exe Seal',
        label = 'Exe Seal',
        text = {
        [1] = '{C:red}X1.66 Mult{}'
    }
    },
    atlas = 'CustomSeals',
    unlocked = true,
    discovered = true,
    no_collection = false,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return { x_mult = card.ability.seal.extra.x_mult }
        end
    end
}