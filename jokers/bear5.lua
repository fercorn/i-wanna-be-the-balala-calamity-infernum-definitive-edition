SMODS.Joker{ --Bear5
    key = "bear5",
    config = {
        extra = {
            mult = 5,
            dollars = 5,
            bear5 = 0
        }
    },
    loc_txt = {
        ['name'] = 'Bear5',
        ['text'] = {
            [1] = '{C:red}+5 Mult{}',
            [2] = 'Grant {C:money}$5{} every time a {C:attention}5{} is played'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 1,
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
                    mult = card.ability.extra.mult
                }
        end
        if context.individual and context.cardarea == G.play  then
            if context.other_card:get_id() == 5 then
                play_sound("iwannabebalala_bear5")
    SMODS.calculate_effect({message = "BEAR5 IS COMING"}, card)
                return {
                    dollars = card.ability.extra.dollars
                }
            end
        end
    end
}