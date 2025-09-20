SMODS.Joker{ --px34gtyu6cx/wrafawdwwawd$$$$$^^szs
    key = "px34gtyu6cxwrafawdwwawdszs",
    config = {
        extra = {
            xchips = 8,
            Xmult = 3,
            dollars = 8
        }
    },
    loc_txt = {
        ['name'] = 'px34gtyu6cx/wrafawdwwawd$$$$$^^szs',
        ['text'] = {
            [1] = '{X:blue,C:white}X8{} Chips and {X:red,C:white}X3{} Mult',
            [2] = '{}{C:money}$8{} at end of round',
            [3] = '{C:inactive}Designed by winter4wonder{}'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 9,
        y = 3
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 20,
    rarity = 4,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["iwannabebalala_iwannabebalala_jokers"] = true },
    in_pool = function(self, args)
          return (
          not args 
          or args.source ~= 'sho' and args.source ~= 'buf' and args.source ~= 'jud' 
          or args.source == 'rif' or args.source == 'rta' or args.source == 'sou' or args.source == 'uta' or args.source == 'wra'
          )
          and true
      end,

    set_ability = function(self, card, initial)
        card:set_eternal(true)
    end,

    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
                return {
                    x_chips = card.ability.extra.xchips,
                    extra = {
                        Xmult = card.ability.extra.Xmult
                        }
                }
        end
        if context.end_of_round and context.game_over == false and context.main_eval  then
                return {
                    dollars = card.ability.extra.dollars
                }
        end
    end
}