
Character = {}
Character.__index = Character

function Character:Create(def, map) -- definition table
  -- create a Lua table to represent our Character
  local this = {
    image = love.graphics.newImage("graphics/" .. def.image),
    x = def.x, -- x position on screen
    y = def.y, -- y position on screen
    px = def.x, -- previous x position
    py = def.y, -- previous y position
    entityType = def.entityType, -- type of entity (enemy, hero, npc, etc.)
    maxSpeed = def.maxSpeed, -- fastest possible X speed
    acc = def.acc, -- acceleration
    friction = def.friction, -- friction (slowing force)
    xVelocity = 0, -- current speed of the Character
    yVelocity = 0,
    jump_force = def.jump_force,  -- initial y speed when taking off from a jump
    facing = def.facing, -- 1 for facing right, -1 for facing left
    maxHp = def.maxHp,
    hp = def.hp,
    ledgeBounce = def.ledgeBounce or false,
    controller = StateMachine:Create()  -- Finite State Machine for controlling character state
  }

  -- sets the scaling filter.  'linear' tries to smooth it out
  -- 'nearest' scales it as nearly exact as possible
  this.image:setFilter("nearest", "nearest")

  -- every spritesheet can be different, this creates a grid of quads from the
  --   definition table
  local grid = anim8.newGrid(def.frame_width, def.frame_height, this.image:getDimensions())

  -- every character will have a table of animation frame sets, one for each
  -- possible state (eg., "run", "idle", "jump", "swim")
  this.animations = {}
  this.colBoxes = {}

  -- loop through the animation definitions in the def table
  --for key, value in pairs(myTable) do
  for state_name, grid_data in pairs(def.animations) do
    -- add a new set of animations to the table
    --  the key will be the state name, the value will be the animation object
    this.animations[state_name] = anim8.newAnimation(grid(unpack(grid_data.frames)), grid_data.duration, grid_data.onLoop)
    this.colBoxes[state_name] = {
      x = grid_data.colX or 0,
      y = grid_data.colY or 0,
      w = grid_data.colW or def.frame_width,
      h = grid_data.colH or def.frame_height
    }
  end
  setmetatable(this, self)

  -- create the states for the Finite State Machine, using the list of state
  -- names in the def table.  It looks up each state in the 'charStates' table
  -- found in state_machine.lua
  for _,state in ipairs(def.states) do
    this.controller.states[state] = charStates[state]:Create(this, map)
  end
  -- set the default state
  this.controller:change(def.default_state)
  this.colBox = this.colBoxes[def.default_state]

  return this
end

function Character:getCollisionRect()
  return self.x + self.colBox.x, self.y + self.colBox.y, self.colBox.w, self.colBox.h
end

function Character:colX()
  return self.x + self.colBox.x
end

function Character:colY()
  return self.y + self.colBox.y
end

function Character:getCollisionXY()
  return self.x + self.colBox.x, self.y + self.colBox.y
end

function Character:update(dt)
    self.controller:update(dt)
end

function Character:draw()
  local offset = 0
  if self.facing == -1 then
    offset = 16
  end
  self.animation:draw(self.image, self.x, self.y, 0, self.facing, 1, offset, 0)
  --self.controller:draw()
end
