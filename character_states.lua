IdleState = { name = "idle" }
IdleState.__index = IdleState 

function IdleState:Create(character, level)
    local this = {
        character = character, 
        level = level, 
        controller = character.controller
    }

    setmetatable(this, self)
    return(this)
end

function IdleState:enter(params)
    self.character.velocity.x = 0
    self.character.animation = self.character.frames.idle
end

function IdleState:exit() 
end

function IdleState:handleInput(dt)
    if input:pressed('left') then 
        self.controller:change('run', {dir=-1})
    elseif input:pressed('right') then 
        self.controller:change('run', {dir=1})
    end

    if input:pressed('jump') then 
        self.controller:change('jump')
    end
end

function IdleState:update(dt)

end

function IdleState:draw()
end

RunState = { name = "run" }
RunState.__index = RunState

function RunState:Create(character, level)
    local this = {
        character = character,
        level = level, 
        controller = character.controller
    }

    setmetatable(this, self)
    return(this)
end

function RunState:enter(params) 
    self.character.animation = self.character.frames.run
    self.character.facing = params.dir
    self.character.velocity.x = self.character.velocity.top_x * self.character.facing
end 

function RunState:exit() end 

function RunState:handleInput()
    if input:down('left') then 
        self.character.facing = -1
        self.character.velocity.x = -self.character.velocity.top_x
    elseif input:down('right') then 
        self.character.facing = 1
        self.character.velocity.x = self.character.velocity.top_x
    else
        self.character.controller:change('idle')
    end
    if input:pressed('jump') then 
        self.character.controller:change('jump')
    end
end

function RunState:update(dt) 
    
end 

function RunState:draw() end

JumpState = { name = "jump" }
JumpState.__index = JumpState

function JumpState:Create(character, level)
    local this = {
        character = character,
        level = level,
        controller = character.controller
    }

    setmetatable(this, self)
    return(this)
end 

function JumpState:enter(params)
    self.character.velocity.y = -self.character.velocity.jump_force 
    self.character.animation = self.character.frames.jump
end

function JumpState:exit() end 

function JumpState:handleInput()
    if self.character.velocity.y >= 0 then
        self.controller:change('fall')
    else
        if input:down('left') then
            self.character.facing = -1
            self.character.velocity.x = -self.character.velocity.top_x
        elseif input:down('right') then 
            self.character.velocity.x = self.character.velocity.top_x
            self.character.facing = 1
        else
            self.character.velocity.x = 0
        end
    end
end

function JumpState:update(dt)
    
end

function JumpState:draw() end

FallState = { name = "fall" }
FallState.__index = FallState

function FallState:Create(character, level)
    local this = {
        character = character,
        level = level,
        controller = character.controller
    }

    setmetatable(this, self)
    return(this)
end 

function FallState:enter(params) 
    self.character.animation = self.character.frames.fall
end 

function FallState:exit() end 

function FallState:handleInput()
    if input:down('left') then
        self.character.facing = -1
        self.character.velocity.x = -self.character.velocity.top_x
    elseif input:down('right') then 
        self.character.velocity.x = self.character.velocity.top_x
        self.character.facing = 1
    else
        self.character.velocity.x = 0
    end
    if self.character.velocity.y == 0 then
        self.character:landFromFall()
    end
end

function FallState:update(dt) 
    
end 

function FallState:draw() end 

-- a table of all states that the character can be in
-- this is a lookup table for creating the Character and StateMachine
gCharacterStates = {
    idle = IdleState,
    run = RunState,
    jump = JumpState,
    fall = FallState
}