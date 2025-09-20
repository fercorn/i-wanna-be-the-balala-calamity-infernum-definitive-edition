SMODS.Joker{ --Crickets Head
    key = "cricketshead",
    config = {
        extra = {
            mult = 50,
            Xmult = 1.5
        }
    },
    loc_txt = {
        ['name'] = 'Crickets Head',
        ['text'] = {
            [1] = '{C:red}+50 Mult{}',
            [2] = '{X:red,C:white}X1.5{}{C:red} Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 1
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
                    mult = card.ability.extra.mult,
                    extra = {
                        Xmult = card.ability.extra.Xmult
                        }
                }
        end
    end
}