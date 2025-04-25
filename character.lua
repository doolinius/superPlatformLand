
Character = class('Character', Entity)
Character.static.type = 'character'

function Character:initialize(def, x, y, level)
    self.type = 'character'
    Entity.initialize(self, def, x, y, level)
    self.gravityEffect = 1.0
    self.grounded = true
    self.health = health or 1 -- default value trick
    self.world = level.world
    --level = level
    self.status = {
        invincible = false,
        invulnerable = false
    }

    if def.status then 
        for name, value in pairs(def.status) do 
            self.status[name] = value 
        end
    end 

    -- Create the state machine with an empty state table
    local states = {}
    self.controller = StateMachine:Create(states)
    -- for each state in the definition table
    for _, name in ipairs(def.states) do

        local state = gCharacterStates[name] -- get a reference to the class
        assert(state) -- make sure it exists
        assert(states[name] == nil) -- make sure we haven't already added it
    
        local instance = state:new(self, self.level) -- Create the instance of the state
        states[name] = function () return instance end -- add it to the table
   
    end
    
    self.controller:change(def.startingState)--, {anim=self.startingAnimation})

    self.special = def.special

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
    --local actualX, actualY, cols, len = Entity.update(self, dt)
    --self.position.px = self.position.x
    --self.position.py = self.position.y
    --local actualX, actualY, cols, len = Entity.update(self, dt)
    Entity.update(self, dt)
    local actualX, actualY, cols, len = self.level.world:check(self, self.position.x + self.hitbox.ox, self.position.y + self.hitbox.oy, gColFilters.character)

    -- position updating WAS here

    --[[
        Option 1 - Entity updates velocities, but doesn't move 
        Option 2 - Entity also moves, but doesn't move in world
        Option 3 - Entity moves in world and returns collision data here
    ]]

    self.grounded = false
    if len > 0 then -- there were collisions
        for i=1, len do -- loop through all collision objects
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
            if c.other.type == "terrain" then

                log.trace("props: " .. inspect(c.other.properties))
                if c.other.properties.jump_through then 
                    if c.normal.y == 1 or c.normal.y == 0 then
                        log.trace("JUMP THROUGH " .. inspect(c.normal) .. " " .. c.type)
                    else 
                        self.velocity.y = 0
                    end
                elseif c.normal.y == -1 or c.normal.y == 1 then -- if we are touching ground 
                    self.velocity.y = 0
                    if c.normal.y == -1 then
                        self.grounded = true 
                    end
                end
            elseif c.other.type == 'enemy' then 
                self:takeHit(c.other)
            elseif c.other.type == 'collectible' then 
                --self:collect(c.other)
                c.other:onCollect(self)
            elseif c.other.type == "block" then

                if c.normal.y == -1 and not c.other.invisible then
                    self.velocity.y = 0
                    self.grounded = true
                end
  
                if c.other.lethal then 
                    --self.controller:change('die')
                elseif c.other.invisible then 
                    if c.normal.y == 1 then -- if I hit invisible block from bottom
                        actualX = c.itemRect.x 
                        actualY = c.itemRect.y
                        self.velocity.y = 0
                        c.other:onBonk(self)
                    end
                elseif c.other.breakable then
                    if c.normal.y == 1 then
                        self.velocity.y = self.velocity.y * 0.5
                        --c.other.remove = true 
                        --breakBlock(c.other, self.level)
                        c.other:onBreak(self.level)
                    end
                elseif c.other.bonkable then
                    if c.normal.y == 1 then 
                        self.velocity.y = 0
                        c.other:onBonk(self)
                    end
                elseif c.other.jump_through then 
                    if c.normal.y == 1 or c.normal.y == 0 then
                        --log.trace("JUMP THROUGH " .. inspect(c.normal) .. " " .. c.type)
                    else 
                        self.velocity.y = 0
                    end
                elseif c.normal.y == 1 or c.normal.y == -1 then -- we hit a block from below
                    --log.trace("FROM BELOW")
                    self.velocity.y = 0
                end
            end
        end
    end
    self.level.world:update(self, actualX, actualY)
    
    actualX = actualX-self.hitbox.ox
    actualY = actualY-self.hitbox.oy
    self.position.x = actualX 
    self.position.y = actualY

    self.position.x = math.floor(actualX+0.5)
    self.position.y = math.floor(actualY+0.5)
    --log.trace("Update X: " .. self.x .. " Y: " .. self.y)
end

function Character:bottom()
    return(self.position.y + self.hitbox.height)
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
