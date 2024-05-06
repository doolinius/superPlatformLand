
Character = class('Character', Entity)
Character.static.type = 'character'

function Character:initialize(def, x, y, world)
    Entity.initialize(self, def, x, y, world)
    self.gravityEffect = 1.0
    self.health = health or 1 -- default value trick
    self.world = world
    --level = level

    -- Create the state machine with an empty state table
    local states = {}
    self.controller = StateMachine:Create(states)

    -- for each state in the definition table
    for _, name in ipairs(def.states) do
        local state = gCharacterStates[name] -- get a reference to the class
        assert(state) -- make sure it exists
        assert(states[state.name] == nil) -- make sure we haven't already added it

        local instance = state:Create(self) -- Create the instance of the state
        states[state.name] = function () return instance end -- add it to the table
    end

    self.controller:change(def.states[1])
end

function Character:handleInput(dt)
    --self.animation = self.frames.idle
    -- handle input
    --
    self.controller:handleInput(dt)
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
    local actualX, actualY, cols, len = Entity.update(self, dt)

    self.position.x = actualX 
    self.position.y = actualY

    --[[
        Option 1 - Entity updates velocities, but doesn't move 
        Option 2 - Entity also moves, but doesn't move in world
        Option 3 - Entity moves in world and returns collision data here
    ]]

    if len > 0 then -- there were collisions
        for i=1, len do 
            --[[
                if terrain or block then
                    check normal for above/below collision
                    set y velocity to 0 
                    if block then 
                        handle block collisions
                -collectible
                -projectile
                -enemy
                -checkpoint
                -level end
            ]]
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
    self.position.x = math.floor(actualX+0.5)
    self.position.y = math.floor(actualY+0.5)
    --log.trace("Update X: " .. self.x .. " Y: " .. self.y)
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
    Entity.draw(self)
    --[[
    local offset = 0
    if self.facing == -1 then 
        offset = self.w 
    end
    self.animation:draw(self.image, self.x, self.y, 0, self.facing, 1, offset)
    ]]
end
