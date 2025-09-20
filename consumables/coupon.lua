SMODS.Consumable {
    key = 'coupon',
    set = 'Tarot',
    pos = { x = 2, y = 0 },
    loc_txt = {
        name = 'Coupon',
        text = {
        [1] = 'You got a coupon!'
    }
    },
    cost = 3,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'CustomConsumables',
    use = function(self, card, area, copier)
        local used_card = copier or card
            play_sound("iwannabebalala_coupon_collect")
    SMODS.calculate_effect({message = "You got a coupon!"}, card)
    end,
    can_use = function(self, card)
        return true
    end
}