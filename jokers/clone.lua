SMODS.Joker{ --Clone
    key = "clone",
    config = {
        extra = {
            odds = 3
        }
    },
    loc_txt = {
        ['name'] = 'Clone',
        ['text'] = {
            [1] = 'When a consumable is used,',
            [2] = '{C:green}#1# in 3{} chance to create another'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 0
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

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_iwannabebalala_clone') 
        return {vars = {new_numerator, new_denominator}}
    end,

    calculate = function(self, card, context)
        if context.using_consumeable  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_1f16634a', 1, card.ability.extra.odds, 'j_iwannabebalala_clone', false) then
              SMODS.calculate_effect({func = function()local created_consumable = false
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    created_consumable = true
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            local random_sets = {'Tarot', 'Planet', 'Spectral'}
                            local random_set = random_sets[math.random(1, #random_sets)]
                            SMODS.add_card{set=random_set, soulable = nil, key_append='joker_forge_' .. random_set:lower()}
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                end
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Cloned!", colour = G.C.PURPLE})
                    end
                    return true
                end}, card)
          end
            end
        end
    end
}