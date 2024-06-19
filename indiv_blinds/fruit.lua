local blind = {
    name = "The Fruit",
    slug = "fruit", 
    pos = { x = 0, y = 8 },
    dollars = 5, 
    mult = 2, 
    vars = {}, 
    debuff = {},
    boss = {min = 2, max = 10},
    boss_colour = HEX('E06B3B'),
    loc_txt = {}
}

blind.debuff_hand = function(self, blind, cards, hand, handname, check)
    blind.triggered = false
    local total = 0
    for _, v in ipairs(cards) do
        total = total + v.base.nominal
    end
    if total % 2 == 0 then
        blind.triggered = true
        return true
    end
end

return blind