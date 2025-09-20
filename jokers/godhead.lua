SMODS.Joker{ --Godhead
    key = "godhead",
    config = {
        extra = {
            hands = 1,
            discards = 2,
            dollars = 3,
            round = 0
        }
    },
    loc_txt = {
        ['name'] = 'Godhead',
        ['text'] = {
            [1] = 'When Blind is selected:',
            [2] = '{C:blue}+1 Hand{}',
            [3] = '{C:red}+2 Discards{}',
            [4] = '{C:attention}+1 hand size{}',
            [5] = '{C:money}Earn $3{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
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
        if context.setting_blind  then
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
                        colour = G.C.ORANGE,
                        extra = {
                            dollars = card.ability.extra.dollars,
                            colour = G.C.MONEY
                        }
                        }
                }
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(1)
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-1)
    end
}