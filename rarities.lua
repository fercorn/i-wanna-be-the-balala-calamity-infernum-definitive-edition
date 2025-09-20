SMODS.Rarity {
    key = "epic",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.025,
    badge_colour = HEX('5b333e'),
    loc_txt = {
        name = "Epic"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "quality_four",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0,
    badge_colour = HEX('f8e71c'),
    loc_txt = {
        name = "Quality Four"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}