SMODS.Joker{ --Fat Spectre
    key = "fatspectre",
    config = {
        extra = {
            odds = 4,
            start_dissolve = 0,
            y = 0
        }
    },
    loc_txt = {
        ['name'] = 'Fat Spectre',
        ['text'] = {
            [1] = 'When hand is played,',
            [2] = '{C:green}#3# in 4{} chance to create a {C:spectral}Spectral{} card'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 2,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 6,
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    loc_vars = function(self, info_queue, card)
        local new_numerator, new_denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'j_iwannabebalala_fatspectre') 
        return {vars = {card.ability.extra.start_dissolve, card.ability.extra.y, new_numerator, new_denominator}}
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if true then
                if SMODS.pseudorandom_probability(card, 'group_0_ae56356d', 1, card.ability.extra.odds, 'j_iwannabebalala_fatspectre', false) then
              local created_consumable = false
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    created_consumable = true
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card{set = 'Spectral', soulable = nil, key = nil, key_append = 'joker_forge_spectral'}
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                end
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "Created!", colour = G.C.SECONDARY_SET.Spectral})
          end
            end
        end
        if context.setting_blind  then
            if (function()
      for i = 1, #G.jokers.cards do
          if G.jokers.cards[i].config.center.key == "j_baseball" then
              return true
          end
      end
      return false
  end)() then
                return {
                    func = function()
                card:start_dissolve()
                return true
            end,
                    message = "Purified!"
                }
            end
        end
    end
}