SMODS.Joker{ --Boshy
    key = "boshy",
    config = {
        extra = {
            hands = 1,
            discards = 1,
            Xmult = 1.25,
            round = 0,
            boshy = 0
        }
    },
    loc_txt = {
        ['name'] = 'Boshy',
        ['text'] = {
            [1] = 'When {C:attention}Blind{} is selected, gain {C:blue}+1 Hand{} and {C:red}+1 Discard{}',
            [2] = '{X:red,C:white}X1.25{} Mult when a {C:diamonds}Diamond{} card is scored',
            [3] = '{C:inactive}{s:0.8}{}\"it\'s boshy time!\"{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 8,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.setting_blind  then
                play_sound("iwannabebalala_boshy")
    SMODS.calculate_effect({message = "Its BOSHY time!"}, card)
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(card.ability.extra.hands).." Hand", colour = G.C.GREEN})
                G.GAME.current_round.hands_left = G.GAME.current_round.hands_left + card.ability.extra.hands
                return true
            end,
                    extra = {
                        func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+"..tostring(card.ability.extra.discards).." Discard", colour = G.C.ORANGE})
                G.GAME.current_round.discards_left = G.GAME.current_round.discards_left + card.ability.extra.discards
                return true
            end,
                        colour = G.C.ORANGE
                        }
                }
        end
        if context.individual and context.cardarea == G.play  then
            if context.other_card:is_suit("Diamonds") then
                return {
                    Xmult = card.ability.extra.Xmult
                }
            end
        end
    end
}