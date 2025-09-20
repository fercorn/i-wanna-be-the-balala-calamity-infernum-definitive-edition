SMODS.Joker{ --Gakvu
    key = "gakvu",
    config = {
        extra = {
            xchips = 1.75,
            Xmult = 1.1
        }
    },
    loc_txt = {
        ['name'] = 'Gakvu',
        ['text'] = {
            [1] = '{X:blue,C:white}X1.75{} {C:blue}Chips{}',
            [2] = '{X:red,C:white}X1.1{} {C:red}Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 1
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
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    x_chips = card.ability.extra.xchips,
                    extra = {
                        Xmult = card.ability.extra.Xmult
                        }
                }
        end
    end
}