Entity = class('Entity')

function Entity:initialize(def, x, y, level)
  -- collision world 
  self.level = level
  self.world = level.world
  -- Position and body data
  self.position = {x=x, y=y, facing=1}
  self.width = def.width
  self.height = def.height
  --[[
    1 - no hitbox at all = "none"
    2 - hitbox not declared, so use width and height = nil
    3 - hitbox declared = usual
  ]]
  if def.hitbox == "none" then -- no hitbox 
    self.hitbox = nil
  elseif type(def.hitbox) == 'table' then -- hitbox is specified
    self.hitbox = def.hitbox
  else -- hitbox is equal to size
    self.hitbox = {width=self.width, height=self.height, ox=0, oy=0} 
  end

  -- Velocity data
  if def.velocity then

    self.velocity = {
        x=def.velocity.x or 0, 
        y=def.velocity.y or 0, 
        top_x=def.velocity.top_x or 0, 
        jump_force=def.velocity.jump_force or 0, 
        top_y=TERMINAL_Y
      }
  else 
    self.velocity = {x=0, y=0, top_x=0, jump_force=0, top_y=TERMINAL_Y}
  end
  self.gravityEffect = def.gravityEffect or 0

  -- Drawable data
  if type(def.image) == 'string' then
    self.image = love.graphics.newImage('assets/graphics/' .. def.image)
  else 
    self.image = def.image 
  end
  if def.quad then -- if it's a static sprite
    self.quad = def.quad
  elseif def.animation then -- if the entity has a single animation 
    local imgW, imgH = self.image:getDimensions()
    local g = anim8.newGrid(def.width, def.height, imgW, imgH)
    self.animation = anim8.newAnimation(g(def.animation.frames[1], def.animation.frames[2]), def.animation.duration, def.animation.onLoop)
  elseif def.animations then -- if the entity has a set of animations
    local imgW, imgH = self.image:getDimensions()
    local g = anim8.newGrid(def.width, def.height, imgW, imgH)
    self.frames = {}
    for animName, frameData in pairs(def.animations) do
      local a = anim8.newAnimation(g(frameData.frames[1], frameData.frames[2]), frameData.duration, frameData.onLoop)
      self.frames[animName] = a
    end
    -- Sometimes the starting animation may differ from the starting state
    -- if it is specified, use that.  Otherwise, assume a frame set of the
    -- same name as the state
    local startingAnimation = def.startingAnimation or def.startingState
    assert(def.animations[startingAnimation] ~= nil, "startingAnimation must have a matching set of frames in the animation table")
    self.animation = self.frames[startingAnimation]
  elseif def.framesets then -- if there are multiple sets of frames
    local imgW, imgH = self.image:getDimensions()
    local g = anim8.newGrid(def.width, def.height, imgW, imgH)
    self.framesets = {} -- create the frameset table 
    for setName, animations in pairs(def.framesets) do -- loop through def framesets
      self.framesets[setName] = {} -- create new animations table
      for animName, frameData in pairs(animations) do -- loop animations
        -- create animation 
        local a = anim8.newAnimation(g(frameData.frames[1], frameData.frames[2]), frameData.duration, frameData.onLoop)
        self.framesets[setName][animName] = a -- add to animation table for frameset
      end
    end
    -- set starting frameset
    local startingFrameset = def.startingFrameset or 'normal'
    assert(def.framesets[def.startingFrameset] ~= nil, "startingFrameset must have a matching set of frames in the animation table")
    self.frames = self.framesets[def.startingFrameset]
    -- set starting animation
    local startingAnimation = def.startingAnimation or def.startingState
    assert(self.frames[startingAnimation] ~= nil, "startingAnimation must have a matching set of frames in the animation table")
    --log.warn(inspect(self.frames, {depth=1}))
    self.animation = self.frames[startingAnimation]
    assert(self.animation ~= nil)
  else
    assert("Entity must have a quad, animation or animations field")
  end
  self.rotate = def.rotate or 0
  self.rotAmt = 0
  self.rotTimer = 0
  self.hitboxRender = def.hitboxRender or false

  -- Field for determining removal from game
  self.remove = false
  self.removeEffect = def.removeEffect
end

function Entity:update(dt)
  if self.rotate ~= 0 then 
    self.rotTimer = self.rotTimer + dt 
    if self.rotTimer >= 0.1 then 
      self.rotAmt = self.rotAmt + self.rotate 
    end 
  end
  if self.animation then
    self.animation:update(dt)
  end
  self.position.x = math.floor(0.5 + self.position.x + self.velocity.x * dt)
  self.velocity.y = self.velocity.y + GRAVITY * self.gravityEffect * dt
  self.position.y = math.floor(0.5 + self.position.y + self.velocity.y * dt)
  --if self.hitbox then
  --  local actualX, actualY, cols, len = self.world:move(self, self.position.x + self.hitbox.ox, self.position.y + self.hitbox.oy, gColFilters[self.type])
  --  return actualX-self.hitbox.ox, actualY-self.hitbox.oy, cols, len
  --end
end

function Entity:onRemove() end

function Entity:draw()
  local offset = 0 
  if self.position.facing == -1 then 
    offset = self.width
  end
  if self.type == "character" then
    log.trace("X Pos: " .. self.position.x)
  end
  if self.quad then
    if self.rotate ~= 0 then 
      love.graphics.draw(self.image, self.quad, self.position.x, self.position.y, self.rotAmt, self.position.facing, 1, self.width/2, self.height/2)
    else 
      love.graphics.draw(self.image, self.quad, self.position.x, self.position.y, 0, self.position.facing, 1, offset)
    end 
  else
    self.animation:draw(self.image, self.position.x, self.position.y, 0, self.position.facing, 1, offset)
  end 
end