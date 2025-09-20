SMODS.Consumable {
    key = 'multicoupon',
    set = 'Spectral',
    pos = { x = 6, y = 0 },
    loc_txt = {
        name = 'Multi-Coupon',
        text = {
        [1] = 'You got a coupon!',
        [2] = '(x3!)'
    }
    },
    cost = 9,
    unlocked = true,
    discovered = false,
    hidden = false,
    can_repeat_soul = false,
    atlas = 'CustomConsumables',
    use = function(self, card, area, copier)
        local used_card = copier or card
            play_sound("iwannabebalala_triple_coupon")
    SMODS.calculate_effect({message = "You got a coupon!"}, card)
    end,
    can_use = function(self, card)
        return true
    end
}