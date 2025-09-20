SMODS.Joker{ --Naneinf
    key = "naneinf",
    config = {
        extra = {
        }
    },
    loc_txt = {
        ['name'] = 'Naneinf',
        ['text'] = {
            [1] = 'When a {C:attention}High Card{} is played, add a {C:attention}Polychrome {C:attention}Red Seal {C:attention}Steel King of Hearts{} to your hand'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 6,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 12,
    rarity = "iwannabebalala_epic",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            if context.scoring_name == "High Card" then
                local card_front = G.P_CARDS.H_K
                local new_card = create_playing_card({
                    front = card_front,
                    center = G.P_CENTERS.m_steel
                }, G.discard, true, false, nil, true)
            new_card:set_seal("Red", true)
            new_card:set_edition("e_polychrome", true)
                
                G.playing_card = (G.playing_card and G.playing_card + 1) or 1
                new_card.playing_card = G.playing_card
                table.insert(G.playing_cards, new_card)
                
                G.E_MANAGER:add_event(Event({
                    func = function() 
                        G.hand:emplace(new_card)
                        new_card:start_materialize()
                        return true
                    end
                }))
                return {
                    message = "oh yeah baron and mime lets gooo"
                }
            end
        end
    end
}