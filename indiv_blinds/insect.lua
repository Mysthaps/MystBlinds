local blind = {
    name = "The Insect",
    slug = "insect", 
    pos = { x = 0, y = 3 },
    dollars = 5, 
    mult = 2, 
    vars = {}, 
    debuff = {},
    boss = {min = 3, max = 10},
    boss_colour = HEX('873E2C'),
    loc_txt = {}
}

blind.press_play = function(self)
    G.GAME.blind.prepped = true
end

blind.drawn_to_hand = function(self)
    if G.jokers and G.jokers.cards[1] and not G.jokers.cards[1].debuff and G.GAME.blind.prepped then
        G.jokers.cards[1]:set_debuff(true)
        G.jokers.cards[1]:juice_up()
        G.GAME.blind:wiggle()
    end
end

return blind