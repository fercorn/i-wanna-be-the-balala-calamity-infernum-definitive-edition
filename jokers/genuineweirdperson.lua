SMODS.Joker{ --Genuine Weird Person
    key = "genuineweirdperson",
    config = {
        extra = {
            chips = 69
        }
    },
    loc_txt = {
        ['name'] = 'Genuine Weird Person',
        ['text'] = {
            [1] = '{C:blue}+69 Chips{}',
            [2] = '{C:dark_edition}+2 Joker Slots{}',
            [3] = '{C:inactive}{s:0.8}\"boii we gotta humble this diddybludden\"{}{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    chips = card.ability.extra.chips
                }
        end
    end,

    add_to_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit + 2
    end,

    remove_from_deck = function(self, card, from_debuff)
        G.jokers.config.card_limit = G.jokers.config.card_limit - 2
    end
}