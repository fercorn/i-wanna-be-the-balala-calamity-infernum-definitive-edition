SMODS.Joker{ --Magic Mushroom
    key = "magicmushroom",
    config = {
        extra = {
            chips = 20,
            mult = 10,
            xchips = 2,
            Xmult = 2
        }
    },
    loc_txt = {
        ['name'] = 'Magic Mushroom',
        ['text'] = {
            [1] = '{C:blue}+20 Chips{}',
            [2] = '{C:red}+10 Mult{}',
            [3] = '{X:blue,C:white}X2{} {C:blue}Chips{}',
            [4] = '{X:red,C:white}X2{} {C:red}Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 20,
    rarity = "iwannabebalala_quality_four",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    chips = card.ability.extra.chips,
                    extra = {
                        mult = card.ability.extra.mult,
                        extra = {
                            x_chips = card.ability.extra.xchips,
                            colour = G.C.DARK_EDITION,
                        extra = {
                            Xmult = card.ability.extra.Xmult
                        }
                        }
                        }
                }
        end
    end
}