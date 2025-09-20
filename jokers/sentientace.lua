SMODS.Joker{ --Sentient Ace
    key = "sentientace",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Sentient Ace',
        ['text'] = {
            [1] = 'All played {C:attention}Face Cards{} are converted into {C:attention}Aces{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 4
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 4,
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
            if context.other_card:is_face() then
                assert(SMODS.change_base(context.other_card, nil, "Ace"))
                return {
                    message = "Rise!"
                }
            end
        end
    end
}