SMODS.Enhancement {
    key = 'magiccard',
    pos = { x = 2, y = 0 },
    loc_txt = {
        name = 'Magic Card',
        text = {
        [1] = 'Create a {C:tarot}Tarot Card{} if card is',
        [2] = 'held in hand'
    }
    },
    atlas = 'CustomEnhancements',
    any_suit = false,
    replace_base_card = false,
    no_rank = false,
    no_suit = false,
    always_scores = false,
    unlocked = true,
    discovered = true,
    no_collection = false,
    weight = 5,
    calculate = function(self, card, context)
        if context.cardarea == G.hand and context.main_scoring then
            return { func = function()local created_consumable = false
                if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
                    created_consumable = true
                    G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            SMODS.add_card{set = 'Tarot', key_append = 'enhanced_card_tarot'}
                            G.GAME.consumeable_buffer = 0
                            return true
                        end
                    }))
                end
                    if created_consumable then
                        card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = "+1 Consumable!", colour = G.C.PURPLE})
                    end
                    return true
                end }
        end
    end
}