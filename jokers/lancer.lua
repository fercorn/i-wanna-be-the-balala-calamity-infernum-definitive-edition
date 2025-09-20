SMODS.Joker{ --Lancer
    key = "lancer",
    config = {
        extra = {
            chips = 50
        }
    },
    loc_txt = {
        ['name'] = 'Lancer',
        ['text'] = {
            [1] = '{C:blue}+50 Chips{} when a {C:attention}Jack of Spades{} is played'
        },
        ['unlock'] = {
            [1] = ''
        }
    },
    pos = {
        x = 9,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 2,
    rarity = 1,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if (context.other_card:get_id() == 11 and context.other_card:is_suit("Spades")) then
                return {
                    chips = card.ability.extra.chips
                }
            end
        end
    end
}