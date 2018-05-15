
Character = {}
Character.__index = Character

function Character:Create(def, map) -- definition table
  -- create a Lua table to represent our Character
  local this = {
    image = love.graphics.newImage("graphics/" .. def.image),
    x = def.x, -- x position on screen
    y = def.y, -- y position on screen
    px = def.x,
    py = def.y,
    entityType = def.entityType, -- type of entity (enemy, hero, npc, etc.)
    top_speed = def.speed, -- fastest possible X speed
    speed = 0, -- current speed of the Character
    facing = def.facing, -- 1 for facing right, -1 for facing left
    jump_force = def.jump_force,  -- initial y speed when taking off from a jump
    y_speed = def.y_speed,
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

  -- loop through the animation definitions in the def table
  --for key, value in pairs(myTable) do
  for state_name, grid_data in pairs(def.animations) do
    -- add a new set of animations to the table
    --  the key will be the state name, the value will be the animation object
    this.animations[state_name] = anim8.newAnimation(grid(unpack(grid_data.frames)), grid_data.duration, grid_data.onLoop)
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

  return this
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
  self.controller:draw()
end
