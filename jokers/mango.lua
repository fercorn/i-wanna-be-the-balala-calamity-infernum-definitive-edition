SMODS.Joker{ --Mango
    key = "mango",
    config = {
        extra = {
            mult = 15
        }
    },
    loc_txt = {
        ['name'] = 'Mango',
        ['text'] = {
            [1] = 'All  {C:attention}Mustard Cards{} give {C:red}+15 Mult{} each'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
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
            if SMODS.get_enhancements(context.other_card)["m_iwannabebalala_mustardcard"] == true then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}