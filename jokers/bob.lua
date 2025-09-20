SMODS.Joker{ --Bob
    key = "bob",
    config = {
        extra = {
            chips = 25,
            mult = 7,
            dollars = 2
        }
    },
    loc_txt = {
        ['name'] = 'Bob',
        ['text'] = {
            [1] = 'This is Bob.',
            [2] = 'Bob grants {C:blue}+25 Chips{} and {C:red}+7 Mult{}.',
            [3] = 'He also grants {C:money}$2{}.',
            [4] = 'He doesn\'t worry about losing a run.',
            [5] = 'Be like Bob.'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 2,
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
                    chips = card.ability.extra.chips,
                    extra = {
                        mult = card.ability.extra.mult,
                        extra = {
                            dollars = card.ability.extra.dollars,
                            colour = G.C.MONEY
                        }
                        }
                }
        end
    end
}