SMODS.Joker{ --Flying Gorilla
    key = "flyinggorilla",
    config = {
        extra = {
            flying_gorilla = 0
        }
    },
    loc_txt = {
        ['name'] = 'Flying Gorilla',
        ['text'] = {
            [1] = '{C:attention}+3 hand size{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 3,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 7,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.buying_card and context.card.config.center.key == self.key and context.cardarea == G.jokers  then
                play_sound("iwannabebalala_flying_gorilla")
    SMODS.calculate_effect({message = "Hey guys its me flying gorilla"}, card)
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.hand:change_size(3)
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.hand:change_size(-3)
    end
}