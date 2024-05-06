Entity = class('Entity')

function Entity:initialize(def, x, y, world)
  -- collision world 
  self.world = world
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
    self.velocity = {x=0, y=0, top_x=def.velocity.top_x, jump_force=def.velocity.jump_force, top_y=TERMINAL_Y}
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
      local a = anim8.newAnimation(g(frameData.frames[1], frameData.frames[2]), frameData.duration, frameData['onLoop'])
      self.frames[animName] = a
    end
    assert(def.animations[def.startingAnimation] ~= nil, "startingAnimation must have a matching set of frames in the animation table")
    self.animation = self.frames[def.startingAnimation]
  else
    assert("Entity must have a quad, animation or animations field")
  end
  self.hitboxRender = def.hitboxRender or false

  -- Field for determining removal from game
  self.remove = false
end

function Entity:update(dt)
  self.position.x = math.floor(0.5 + self.position.x + self.velocity.x * dt)
  self.velocity.y = self.velocity.y + GRAVITY * self.gravityEffect * dt
  self.position.y = math.floor(0.5 + self.position.y + self.velocity.y * dt)
  if self.hitbox then
    local actualX, actualY, cols, len = self.world:move(self, self.position.x + self.hitbox.ox, self.position.y + self.hitbox.oy, gColFilters[self.filter])
    if self.animation then
      self.animation:update(dt)
    end
    return actualX-self.hitbox.ox, actualY-self.hitbox.oy, cols, len
  end
end

function Entity:onRemove() end

function Entity:draw()
  local offset = 0 
  if self.facing == -1 then 
    offset = self.width
  end
  if self.quad then
    love.graphics.draw(self.image, self.quad, self.position.x, self.position.y, 0, self.facing, 1, offset)
  else
    self.animation:draw(self.image, self.position.x, self.position.y, 0, self.facing, 1, offset)
  end 
end