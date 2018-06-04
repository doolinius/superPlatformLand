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

Entity = {entityType = "effect"}
Entity.__index = Entity

function Entity:Create(def)
  local this = {
    x = def.x or 0,
    y = def.y or 0,
    xVelocity = def.xVelocity or 0,
    yVelocity = def.yVelocity or 0,
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
    if self.gravity or self.yVelocity ~= 0 or self.xVelocity ~= 0 then
      if self.gravity then
        self.yVelocity = self.yVelocity - gravity * dt
        self.y = self.y + self.yVelocity * dt
      end
      self.x = self.x + self.xVelocity * self.facing
      --local actualX, actualY, cols, len = world:move(self, self.x, self.y)
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

Block = {entityType = "block"}
Block.__index = Block

function Block:Create(def)
  local this = {
    x = def.x or 0,
    y = def.y or 0,
    ox = def.x or 0,
    oy = def.y or 0,
    xVelocity = def.xVelocity or 0,
    yVelocity = def.yVelocity or 0,
    image = def.image,
    animation = nil,
    gravity = def.gravity or false,
    gravityFactor = def.gravityFactor or 1,
    friction = def.friction or 1,
    points = def.points or 0,
    inside = nil, -- somehow add collectibles to blocks
    type = def.type or "breakable",
    breakFrames = def.breakFrames or nil,
    moveable = def.moveable or false,
    enabled = true,
    inBonk = false
  }
  local a = def.animation
  this.animation = anim8.newAnimation(a.grid(unpack(a.frames)), a.duration)

  setmetatable(this, self)
  return(this)
end

function Block:makeBreakFrames()
  local breakEffects = {}
  local def = {
    x = self.x,
    y = self.y,
    xVelocity = -0.75,
    yVelocity = -150,
    image = self.image,
    gravity = true,
    duration = 3,
    animation = self.breakFrames[1]
  }
  local upperLeft = Entity:Create(def)

  def.x = self.x + 8
  def.xVelocity = 0.75
  def.animation = self.breakFrames[2]

  local upperRight = Entity:Create(def)

  def.x = self.x
  def.y = self.y + 8
  def.xVelocity = -0.75
  def.yVelocity = -100
  def.animation = self.breakFrames[3]

  local lowerLeft = Entity:Create(def)

  def.x = self.x + 8
  def.xVelocity = 0.75
  def.animation = self.breakFrames[4]

  local lowerRight = Entity:Create(def)

  table.insert(breakEffects, upperLeft)
  table.insert(breakEffects, upperRight)
  table.insert(breakEffects, lowerLeft)
  table.insert(breakEffects, lowerRight)

  return(breakEffects)

end

function Block:setPosition(x, y)
  self.x = x
  self.y = y
  self.ox = x
  self.oy = y
end

function Block:bonk()
  self.inBonk = true
  self.yVelocity = -50
end

function Block:update(dt)
  self.animation:update(dt)
  if self.inBonk then
    self.yVelocity = self.yVelocity - gravity * dt * self.gravityFactor
  end
  if self.xVelocity ~= 0 or self.yVelocity ~= 0 then
    self.x = self.x + self.xVelocity * dt
    self.y = self.y + self.yVelocity * dt
    if self.y >= self.oy then
      self.y = self.oy
      self.inBonk = false
      self.yVelocity = 0
    end
    local actualX, actualY, cols, len = world:move(self, self.x, self.y, colFilter)
    --self.x = actualX
    --self.y = actualY
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

Collectible = {entityType = "collectible"}
Collectible.__index = Collectible

function Collectible:Create(def)
  local this = {
    x = def.x,
    y = def.y,
    xVelocity = def.xVelocity or 0,
    yVelocity = def.yVelocity or 0,
    type = def.type,
    image = def.image,
    animation = gCollectibleGraphics[def.type],
    points = def.points or 0,
    enabled = true
  }
  -- create animation.  grid not necessary.
  -- so in graphics.lua, create Images and Grids
  -- in entity_defs.lua, create definition tables with information to create
  -- new instances of the animation
  local a = def.animation
  this.animation = anim8.newAnimation(a.grid(unpack(a.frames)), a.duration)

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
