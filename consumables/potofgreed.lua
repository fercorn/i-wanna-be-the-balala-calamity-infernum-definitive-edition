SMODS.Consumable {
    key = 'potofgreed',
    set = 'Tarot',
    pos = { x = 8, y = 0 },
    config = { extra = {
        hand_size_value = 2
    } },
    loc_txt = {
        name = 'Pot of Greed',
        text = {
        [1] = 'Draw {C:attention}2{} cards'
    }
    },
    cost = 3,
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'CustomConsumables',
    use = function(self, card, area, copier)
        local used_card = copier or card
            if G.GAME.blind.in_blind then
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.4,
            func = function()
                card_eval_status_text(used_card, 'extra', nil, nil, nil, {message = "Draw 2!", colour = G.C.BLUE})
                SMODS.draw_cards(2)
                return true
            end
        }))
        delay(0.6)
      end
    end,
    can_use = function(self, card)
        return true
    end
}