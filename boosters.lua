SMODS.Booster {
    key = 'spell_pack',
    loc_txt = {
        name = "Spell Pack",
        text = {
            "Choose 1 of up to 3 Spell Cards"
        },
        group_name = "iwannabebalala_boosters"
    },
    config = { extra = 3, choose = 1 },
    weight = 0.75,
    atlas = "CustomBoosters",
    pos = { x = 0, y = 0 },
    kind = 'Spell',
    group_key = "iwannabebalala_boosters",
    draw_hand = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        return {
        set = "spell",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "iwannabebalala_spell_pack"
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("9013fe"))
        ease_background_colour({ new_colour = HEX('9013fe'), special_colour = HEX("7d1892"), contrast = 2 })
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.PURPLE, 0.4), lighten(G.C.PURPLE, 0.2), lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}


SMODS.Booster {
    key = 'spell_pack2',
    loc_txt = {
        name = "Spell Pack",
        text = {
            "Choose 1 of up to 3 Spell Cards"
        },
        group_name = "iwannabebalala_boosters"
    },
    config = { extra = 3, choose = 1 },
    weight = 0.75,
    atlas = "CustomBoosters",
    pos = { x = 1, y = 0 },
    kind = 'Spell',
    group_key = "iwannabebalala_boosters",
    draw_hand = true,
    discovered = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra }
        }
    end,
    create_card = function(self, card, i)
        return {
        set = "spell",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "iwannabebalala_spell_pack2"
        }
    end,
    ease_background_colour = function(self)
        ease_colour(G.C.DYN_UI.MAIN, HEX("9013fe"))
        ease_background_colour({ new_colour = HEX('9013fe'), special_colour = HEX("7d1892"), contrast = 2 })
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.2,
            initialize = true,
            lifespan = 1,
            speed = 1.1,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.PURPLE, 0.4), lighten(G.C.PURPLE, 0.2), lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,
}
