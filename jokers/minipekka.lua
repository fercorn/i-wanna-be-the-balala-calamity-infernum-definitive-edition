SMODS.Joker{ --Mini P.E.K.K.A
    key = "minipekka",
    config = {
        extra = {
            chips = 44,
            mult = 12,
            minipekka_obtain = 0,
            minipekka_activate = 0
        }
    },
    loc_txt = {
        ['name'] = 'Mini P.E.K.K.A',
        ['text'] = {
            [1] = '{C:blue}+44 Chips{} and {C:red}+12 Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 3
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
        if context.buying_card and context.card.config.center.key == self.key and context.cardarea == G.jokers  then
                play_sound("iwannabebalala_minipekka_obtain")
    SMODS.calculate_effect({message = "PANCAKES!"}, card)
        end
        if context.cardarea == G.jokers and context.joker_main  then
                play_sound("iwannabebalala_minipekka_activate")
                return {
                    chips = card.ability.extra.chips,
                    extra = {
                        mult = card.ability.extra.mult,
                            message = "HIYA!"
                        }
                }
        end
    end
}