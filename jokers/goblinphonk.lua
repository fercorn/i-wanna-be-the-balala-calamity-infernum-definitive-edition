SMODS.Joker{ --Goblin Phonk
    key = "goblinphonk",
    config = {
        extra = {
            dollars = 2
        }
    },
    loc_txt = {
        ['name'] = 'Goblin Phonk',
        ['text'] = {
            [1] = 'Scored {C:attention}Mustard Cards{} give {C:money}$2{} each'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 3,
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
                    dollars = card.ability.extra.dollars
                }
            end
        end
    end
}