
Character = {}
Character.__index = Character

function Character:Create(def, world)
    local this = {
        image = love.graphics.newImage('assets/graphics/characters/' .. def.image),
        x = 0,
        y = 0,
        w = def.w,
        h = def.h,
        hitbox = def.hitbox,
        velocity = def.velocity,
        facing = 1,
        frames = {}, -- a table of animations
        animation = nil,
        health = health or 1, -- default value trick
        world = world,
        controller = nil, -- the StateMachine
        --level = level
    }
    local imgW, imgH = this.image:getDimensions()
    local g = anim8.newGrid(this.w, this.h, imgW, imgH)
    for aName, aData in pairs(def.animations) do 
        local anim = anim8.newAnimation(g(aData.frames[1], aData.frames[2]), aData.duration)
        this.frames[aName] = anim
    end
    -- the default animation will be the first one listed in the list of states
    -- the names should correspond. e.g., 'idle' animation is also the 'idle' states
    this.animation = this.frames[def.states[1]]

    -- Create the state machine with an empty state table
    local states = {}
    this.controller = StateMachine:Create(states)

    -- for each state in the definition table
    for _, name in ipairs(def.states) do
        local state = gCharacterStates[name] -- get a reference to the class
        assert(state) -- make sure it exists
        assert(states[state.name] == nil) -- make sure we haven't already added it

        local instance = state:Create(this, map) -- Create the instance of the state
        states[state.name] = function () return instance end -- add it to the table
    end

    this.controller:change(def.states[1])

    setmetatable(this, self)
    return(this)
end

function Character:handleInput(dt)
    --self.animation = self.frames.idle
    -- handle input
    --
    --self.controller:handleInput(dt)
    --[[
    if input:down('right') then 
        --self.x = self.x + self.velocity.
        self.velocity.x = self.velocity.top_x
        self.facing = 1
        self.animation = self.frames.run
    elseif input:down('left') then 
        self.velocity.x = -self.velocity.top_x
        self.facing = -1
        self.animation = self.frames.run
    else 
        self.velocity.x = 0 
        self.animation = self.frames.idle
    end 

    if input:pressed('jump') and not self.grounded then 
        print("jump pressed")
        self.velocity.y = self.velocity.jump_force
        -- set jump animation
    end

    if input:pressed('attack') then 
        -- change animation 
        -- send out the projectile 
        -- make the sound 
    end
    ]]
end

function characterCollisionFilter(char, other)
    if other.type == "block" then
        return("slide")
    elseif other.type == "collectible" then 
        return("cross")
		else 
				return("slide")
    end
end

function Character:update(dt)
    -- update the state machine
    -- The state machine will handle setting velocities, directions, animations
    -- It will also handle the input
    self.controller:update(dt)
    

    -- After the state machine is updated, we handle everything else including:
    --      gravity
    --      collision detection and resolution
    --      movement
    --      updating the animation
    self.velocity.y = self.velocity.y + (gravity * dt)
    --log.trace('self.velocity.y = ' .. self.velocity.y .. ' + (' .. gravity .. " * " .. dt .. ')')
    local goal_x = self.x + (self.velocity.x * dt)
    local goal_y = self.y + (self.velocity.y * dt)
    local actual_x, actual_y, cols, len = self.world:move(self, goal_x, goal_y, characterCollisionFilter)
    -- Collision detection and resolution
    if len > 0 then -- there were collisions
        for i=1, len do 
            local c = cols[i]
            
            if c.other['properties'] ~= nil then
                --log.trace("Colliding with TERRAIN")
                if c.normal.y == -1 or c.normal.y == 1 then -- if we are touching ground 
                    self.velocity.y = 0 
                end
            elseif c.other.type == 'enemy' then 
                self.character:takeHit()
            elseif c.other.type == 'collectible' then 
                self.character:collect(c.other)
            elseif c.other.type == "block" then 
                --log.trace("hit a BLOCK" .. inspect(c.other, {depth=1}))
                if c.normal.y == 1 or c.normal.y == -1 then -- we hit a block from below
                    self.velocity.y = 0
                end
                if c.other.lethal then 
                    --self.controller:change('die')
                end
            end
        end
    end
    self.x = math.floor(actual_x+0.5)
    self.y = math.floor(actual_y+0.5)
    --log.trace("Update X: " .. self.x .. " Y: " .. self.y)
    self.animation:update(dt)
end

function Character:landFromFall()
    if input:pressed("left") then 
        self.controller:change('run', {dir=-1})
    elseif input:pressed('right') then 
        self.controller:change('run', {dir=1})
    else
        self.controller:change('idle')
    end
end

-- When a character takes a hit
function Character:takeHit()
end 

-- When a player character dies
function Character:die()
end

-- When a player character collects an item
function Character:collect(c)
    -- depends on type of collectible
    -- implement collectible logic
    -- play sounds
end 

function Character:draw()
    local offset = 0
    if self.facing == -1 then 
        offset = self.w 
    end
    self.animation:draw(self.image, self.x, self.y, 0, self.facing, 1, offset)
end
