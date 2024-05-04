Entity = class('Entity')

function Entity:initialize(def, x, y)
  -- Position and body data
  self.position = {x=x, y=y, facing=1}
  self.width = def.width
  self.height = def.height
  self.hitbox = def.hitbox or nil -- some entities will not have a hitbox

  -- Velocity data
  self.velocity = {x=0, y=0, top_x=def.top_x, top_y=TERMINAL_Y}

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
    for animName, frameData in pairs(def.frames) do 
      local a = anim8.newAnimation(g(frameData.frames[1], frameData.frames[2], frameData.duration), frameData['onLoop'])
      self.frames[animName] = a
    end
    assert(def.frames[def.startingAnimation] ~= nil, "startingAnimation must have a matching set of frames in the animation table")
    self.animation = self.frames[def.startingAnimation]
  else
    assert("Entity must have a quad, animation or animations field")
  end
  self.hitboxRender = def.hitboxRender or false

  -- Field for determining removal from game
  self.remove = false
end

function Entity:update(dt)
  self.position.x = self.position.x + self.velocity.x * dt
  self.position.y = self.position.y + self.velocity.y * dt
  if self.animation then
    self.animation:update(dt)
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