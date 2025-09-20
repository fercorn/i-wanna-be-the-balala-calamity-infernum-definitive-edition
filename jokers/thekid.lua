SMODS.Joker{ --The Kid
    key = "thekid",
    config = {
        extra = {
            Xmult = 5,
            hands = 1,
            hands2 = 1,
            kid_boss = 0,
            round = 0,
            kid_blind = 0,
            kid_death = 0
        }
    },
    loc_txt = {
        ['name'] = 'The Kid',
        ['text'] = {
            [1] = '{X:red,C:white}X5{} {C:red}Mult{}',
            [2] = '{C:attention}+2 hand size{}',
            [3] = '{C:hearts}Only 1 hand{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 4,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 15,
    rarity = "iwannabebalala_epic",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },
    soul_pos = {
        x = 5,
        y = 4
    },

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    Xmult = card.ability.extra.Xmult
                }
        end
        if context.setting_blind  then
            if G.GAME.blind.boss then
                play_sound("iwannabebalala_kid_boss")
    SMODS.calculate_effect({message = "NO! I WANNA BE THE GUY!"}, card)
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "1 Life!", colour = G.C.BLUE})
                G.GAME.current_round.hands_left = card.ability.extra.hands
                return true
            end
                }
            else
                play_sound("iwannabebalala_kid_blind")
    SMODS.calculate_effect({message = "Die monster!"}, card)
                return {
                    func = function()
                card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "1 Life!", colour = G.C.BLUE})
                G.GAME.current_round.hands_left = card.ability.extra.hands2
                return true
            end
                }
            end
        end
        if context.end_of_round and context.game_over and context.main_eval  then
                play_sound("iwannabebalala_kid_death")
    SMODS.calculate_effect({message = "GAME OVER! PRESS R TO RESTART!"}, card)
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(2)
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-2)
    end
}