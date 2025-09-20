SMODS.Joker{ --Watchguard
    key = "watchguard",
    config = {
        extra = {
            mult = 25,
            dollars = 2
        }
    },
    loc_txt = {
        ['name'] = 'Watchguard',
        ['text'] = {
            [1] = '{C:red}+25 Mult{}',
            [2] = 'Lose{C:money} $2{} every hand'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 5
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
    rarity = 1,
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
                        dollars = -card.ability.extra.dollars,
                        colour = G.C.MONEY
                        }
                }
        end
    end
}