LevelPlayState = { name = "levelPlayState"}
LevelPlayState.__index = LevelPlayState

-- level_id - the name of the Tiled map
-- character_id - the name of the character in gCharacterDefs
function LevelPlayState:Create(level_id, character_id)
    -- Create the player character first
    -- before creating 'this'
    -- this happens BEFORE creating the level
    --local player = Character:Create(gCharacterDefs[character_id])

    local this = {
        level = Level:Create(level_id, character_id),
        --player = player,
        hud = nil
    }

    this.hud = HUD:Create(gameWorld, this.level)
    -- the Level needs a reference to the player, 
    -- and the player needs a reference to the level
    --this.player.level = this.level

    setmetatable(this, self)
    return(this)
end

function LevelPlayState:enter(params)
    -- start playing music
    -- self.level.bg_music:play()
    -- play a sound? 
end

function LevelPlayState:exit()
end

function LevelPlayState:handleInput(dt)
    if input:pressed('pause') then 
        -- create PauseState
        -- push onto gameStack
    elseif input:pressed('mark') then 
        log.error("-------MARK-------")
    end
end 

function LevelPlayState:update(dt)
    --self:handleInput(dt)
    self.level:handleInput(dt)
    self.level:update(dt)
    self.hud:update(dt)
end 

function LevelPlayState:draw()
    self.level:draw(gameScale, gameScale)
    self.hud:draw()
end