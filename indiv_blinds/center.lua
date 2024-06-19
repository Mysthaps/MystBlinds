local blind = {
    name = "The Center",
    slug = "center", 
    pos = { x = 0, y = 10 },
    dollars = 5, 
    mult = 2, 
    vars = {}, 
    debuff = {},
    boss = {min = 3, max = 10},
    boss_colour = HEX('FFEF71'),
    loc_txt = {}
}

blind.defeat = function(self, blind)
    if not blind.disabled then
        if G.GAME.current_round.hands_left > 0 then
            blind:wiggle()
            G.GAME.inflation = G.GAME.inflation or 0
            G.GAME.inflation = G.GAME.inflation + G.GAME.current_round.hands_left
        end
    end
end

return blind