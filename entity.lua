-- Taken from http://lua-users.org/wiki/InheritanceTutorial
-- Create a new class that inherits from a base class
--
function inheritsFrom( baseClass )

    -- The following lines are equivalent to the SimpleClass example:

    -- Create the table and metatable representing the class.
    local new_class = {}
    local class_mt = { __index = new_class }

    -- Note that this function uses class_mt as an upvalue, so every instance
    -- of the class will share the same metatable.
    --
    function new_class:Create()
        local newinst = {}
        setmetatable( newinst, class_mt )
        return newinst
    end

    -- The following is the key to implementing inheritance:

    -- The __index member of the new class's metatable references the
    -- base class.  This implies that all methods of the base class will
    -- be exposed to the sub-class, and that the sub-class can override
    -- any of these methods.
    --
    if baseClass then
        setmetatable( new_class, { __index = baseClass } )
    end

    return new_class
end

Entity = {}
Entity.__index = Entity

function Entity:Create(def)
  local this = {
    x = def.x,
    y = def.y,
    x_speed = def.x_speed or 0,
    y_speed = def.y_speed or 0,
    image = def.image,
    animation = nil,
    facing = def.facing or 1,
    gravity = def.gravity or false, -- whether or not the entity is affected by gravity,
    duration = def.duration or 0,
    enabled = true
  }
  local a = def.animation

  this.animation = anim8.newAnimation(a.grid(unpack(a.frames)), a.duration, 'pauseAtEnd')

  setmetatable(this, self)
  return(this)
end

function Entity:update(dt)
  self.animation:update(dt)
  if self.duration == 0 then
    self.enabled = false
  else
    self.duration = math.max(0, self.duration - dt)
    if self.gravity or self.y_speed ~= 0 or self.x_speed ~= 0 then
      if self.gravity then
        self.y_speed = self.y_speed + gravity * dt
        self.y = self.y + self.y_speed
      end
      self.x = self.x + self.x_speed * self.facing
      local actualX, actualY, cols, len = world:move(self, self.x, self.y)
      -- dammit, have to collide this thing
    end
  end
end

function Entity:draw()
  local offset = 0
  if self.facing == -1 then
    offset, height = self.image:getDimensions()
  end
  self.animation:draw(self.image, self.x, self.y, 0, self.facing, 1, offset, 0)
end

--Block = inheritsFrom(Entity)

Block = {}
Block.__index = Block

function Block:Create(def)
  local this = {
    x = def.x,
    y = def.y,
    x_speed = def.x_speed or nil,
    y_speed = def.y_speed or nil,
    animation = nil,
    gravity = def.gravity or false,
    friction = def.friction or 1,
    points = def.points or 0,
    inside = nil, -- somehow add collectibles to blocks
    type = def.type or "breakable"
  }

  setmetatable(this, self)
  --self.__index = self
  return(this)
end

function Block:update(dt)
  self.animation:update(dt)
  if self.x_speed ~= 0 or self.y_speed ~= 0 then
    self.x = self.x + self.x_speed
    self.y = self.y + self.y_speed
    local actualX, actualY, cols, len = world:move(self, self.x, self.y)
  end
end

function Block:draw()
  --local offset = 0
  --if self.facing == -1 then
  --  offset = 16
  --end
  self.animation:draw(self.image, self.x, self.y)--, 0, self.facing, 1, offset, 0)
end

function Block:collide(object)

end

Collectible = {}
Collectible.__index = Collectible

function Collectible:Create(def)
  local this = {
    x = def.x,
    y = def.y,
    x_speed = def.x_speed or 0,
    y_speed = def.y_speed or 0,
    entityType = def.entityType,
    animation = gCollectibleAnims[def.collectibleType],
    points = def.points or 0
  }

  --local g = anim8.newGrid(def.frames, def.duration)

  setmetatable(this, self)
  return(this)
end

function Collectible:update(dt)
  self.animation:update(dt)
end

function Collectible:draw()
  --local offset = 0
  --if self.facing == -1 then
  --  offset = 16
  --end
  self.animation:draw(self.image, self.x, self.y)--, 0, self.facing, 1, offset, 0)
end

function Collectible:collide(object)

end
