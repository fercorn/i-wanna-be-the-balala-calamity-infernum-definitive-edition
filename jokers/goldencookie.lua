SMODS.Joker{ --Golden Cookie
    key = "goldencookie",
    config = {
        extra = {
            dollars = 2,
            odds = 7,
            dollars2 = 7
        }
    },
    loc_txt = {
        ['name'] = 'Golden Cookie',
        ['text'] = {
            [1] = 'At the end of scoring, grant {C:money}$2{}',
            [2] = '{C:green}#1# in 7{} chance to grant an extra {C:money}$7{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 2
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

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_iwannabebalala_goldencookie') 
        return {vars = {new_numerator, new_denominator}}
    end,

    calculate = function(self, card, context)
        if context.after and context.cardarea == G.jokers  then
            if true then
                return {
                    dollars = card.ability.extra.dollars
                ,
                    func = function()
                        if SMODS.pseudorandom_probability(card, 'group_0_cbe6793f', 1, card.ability.extra.odds, 'j_iwannabebalala_goldencookie', false) then
              SMODS.calculate_effect({dollars = card.ability.extra.dollars2}, card)
          end
                        return true
                    end
                }
            end
        end
    end
}