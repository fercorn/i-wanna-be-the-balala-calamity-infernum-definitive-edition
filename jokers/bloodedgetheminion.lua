SMODS.Joker{ --Bloodedge The Minion
    key = "bloodedgetheminion",
    config = {
        extra = {
            bloodedgeScaling = 0
        }
    },
    loc_txt = {
        ['name'] = 'Bloodedge The Minion',
        ['text'] = {
            [1] = 'This Joker gains {C:red}+10 Mult{}',
            [2] = 'for every {C:attention}Exe Seal{} played',
            [3] = '{C:inactive}(Currently {C:red}+#1# {}{C:inactive}Mult){}{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 1,
        y = 0
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 8,
    rarity = 3,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        return {vars = {card.ability.extra.bloodedgeScaling}}
    end,

    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play  then
            if context.other_card.seal == "Iwannabebalala_exeseal" then
                card.ability.extra.bloodedgeScaling = (card.ability.extra.bloodedgeScaling) + 10
                return {
                    message = "meh... *listens to music*"
                }
            end
        end
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    mult = card.ability.extra.bloodedgeScaling
                }
        end
    end
}