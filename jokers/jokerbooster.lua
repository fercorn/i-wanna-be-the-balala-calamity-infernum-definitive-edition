SMODS.Joker{ --Joker Booster
    key = "jokerbooster",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Joker Booster',
        ['text'] = {
            [1] = '{C:attention}+1 Booster Pack{} slot',
            [2] = 'available in shop'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
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
    end,

    add_to_deck = function(self, card, from_debuff)
        SMODS.change_booster_limit(1)
    end,

    remove_from_deck = function(self, card, from_debuff)
        SMODS.change_booster_limit(-1)
    end
}