SMODS.Joker{ --Polyphemus
    key = "polyphemus",
    config = {
        extra = {
            mult = 70
        }
    },
    loc_txt = {
        ['name'] = 'Polyphemus',
        ['text'] = {
            [1] = 'If hand contains {C:attention}5{} scoring cards, {C:red}+70 Mult{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 20,
    rarity = "iwannabebalala_quality_four",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if #context.scoring_hand == 5 then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}