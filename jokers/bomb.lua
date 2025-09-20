SMODS.Joker{ --Bomb
    key = "bomb",
    config = {
        extra = {
            Xmult = 11,
            explode = 0,
            y = 0
        }
    },
    loc_txt = {
        ['name'] = 'Bomb',
        ['text'] = {
            [1] = '{X:red,C:white}X11{} Mult',
            [2] = '{C:red}Self-destructs{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 7,
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
                    Xmult = card.ability.extra.Xmult,
                    extra = {
                        func = function()
                card:explode()
                return true
            end,
                            message = "BOOM!",
                        colour = G.C.RED
                        }
                }
        end
    end
}