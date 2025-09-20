SMODS.Consumable {
    key = 'ehwaz',
    set = 'spell',
    pos = { x = 3, y = 0 },
    config = { extra = {
        dollars_value = 35,
        joker_slots_value = 1
    } },
    loc_txt = {
        name = 'Ehwaz',
        text = {
        [1] = '{C:money}Earn $35{}',
        [2] = '{C:red}-1 Joker Slot{}'
    }
    },
    cost = 5,
    unlocked = true,
    discovered = true,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'CustomConsumables',
    use = function(self, card, area, copier)
        local used_card = copier or card
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    card_eval_status_text(used_card, 'extra', nil, nil, nil, {message = "+"..tostring(35).." $", colour = G.C.MONEY})
                    ease_dollars(35, true)
                    return true
                end
            }))
            delay(0.6)
            G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    card_eval_status_text(used_card, 'extra', nil, nil, nil, {message = "-"..tostring(1).." Joker Slot", colour = G.C.RED})
                    G.jokers.config.card_limit = math.max(1, G.jokers.config.card_limit - 1)
                    return true
                end
            }))
            delay(0.6)
    end,
    can_use = function(self, card)
        return true
    end
}