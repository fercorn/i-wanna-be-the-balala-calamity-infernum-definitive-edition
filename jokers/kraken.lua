SMODS.Joker{ --Kraken
    key = "kraken",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Kraken',
        ['text'] = {
            [1] = 'If hand triggers {C:attention}Boss Blind{},',
            [2] = 'convert all cards into {C:attention}Burnt Cards{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 2
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 7,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if G.GAME.blind.triggered then
                context.other_card:set_ability(G.P_CENTERS.m_iwannabebalala_burntcard)
                return {
                    message = "Card Modified!"
                }
            end
        end
    end
}