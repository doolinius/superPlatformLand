GameWorld = {}
GameWorld.__index = GameWorld

function GameWorld:Create()
    local this = {
        score = 0,
        coins = 0,
        lives = 3,
        totalPlayTime = 0,
        current_level = ''
    }

    setmetatable(this, self)
    return(this)
end

function GameWorld:addScore(amount)
    self.score = self.score + amount
end

function GameWorld:addCoin(c)
    self:addScore(c.points)
    self.coins = self.coins + 1 
    if self.coins == 100 then 
        self.lives = self.lives + 1 
        self.coins = 0
    end
end 

function GameWorld:save()
end