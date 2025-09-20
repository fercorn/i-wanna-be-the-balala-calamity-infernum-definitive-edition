SMODS.Joker{ --Jay
    key = "jay",
    config = {
        extra = {
            jayVariable = 0.5,
            Xmult = 4,
            Xmult2 = 0.5
        }
    },
    loc_txt = {
        ['name'] = 'Jay',
        ['text'] = {
            [1] = '{X:red,C:white}X4{} {C:red}Mult{} on final hand of round',
            [2] = 'Otherwise, {X:red,C:white}X0.5{} {C:red}Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 2
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
            if G.GAME.current_round.hands_left == 0 then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            else
                return {
                    Xmult = card.ability.extra.Xmult2
                }
            end
        end
    end
}