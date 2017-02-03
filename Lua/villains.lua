Villain = {
    health = 100,
    
    new = function(self, name)
        local obj = {
            name = name,
            health = self.health
        }
        setmetatable(obj, self)
        self.__index = self
        return obj
    end,

    take_hit = function(self)
        self.health = self.health - 10
    end
}

SuperVillain = Villain.new(Villain)

function SuperVillain.take_hit(self)
    -- Armor!
    self.health = self.health - 5
end