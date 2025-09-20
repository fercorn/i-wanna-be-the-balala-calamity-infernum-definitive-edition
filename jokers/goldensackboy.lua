SMODS.Joker{ --Golden Sackboy
    key = "goldensackboy",
    config = {
        extra = {
            GoldenSackboyXMult = 1
        }
    },
    loc_txt = {
        ['name'] = 'Golden Sackboy',
        ['text'] = {
            [1] = 'This Joker gains {X:red,C:white}X0.25{} Mult every time a {C:attention}Coupon{} is used',
            [2] = '{C:inactive}(Currently X{X:red,C:white}#1#{} {C:inactive}Mult){}{}'
        },
        ['unlock'] = {
            [1] = ''
        }
    },
    pos = {
        x = 1,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 9,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.GoldenSackboyXMult}}
    end,

    calculate = function(self, card, context)
        if context.using_consumeable  then
            if context.consumeable and context.consumeable.ability.set == 'Tarot' and context.consumeable.config.center.key == 'c_iwannabebalala_coupon' then
                return {
                    func = function()
                    card.ability.extra.GoldenSackboyXMult = (card.ability.extra.GoldenSackboyXMult) + 0.25
                    return true
                end
                }
            elseif context.consumeable and context.consumeable.ability.set == 'Spectral' and context.consumeable.config.center.key == 'c_iwannabebalala_multicoupon' then
                return {
                    func = function()
                    card.ability.extra.GoldenSackboyXMult = (card.ability.extra.GoldenSackboyXMult) + 0.75
                    return true
                end
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.GoldenSackboyXMult
                }
        end
    end
}