HUD = {}
HUD.__index = HUD 

function HUD:Create(gameworld, level)
    local this = {
        gameworld = gameworld, 
        level = level
    }

    setmetatable(this, self)
    return(this)
end 

function HUD:update(dt)

end 

function HUD:debug()

end

function HUD:draw()
    hudPrintf(self.level.name, 10, 10, gameWidth, 'center')
    -- self:debug()
end

function hudPrintf(text, x, y, width, align)
    love.graphics.setColor(0, 0, 0, 1)
    love.graphics.printf(text, x+1, y+1, width, align)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf(text, x, y, width, align)
end 