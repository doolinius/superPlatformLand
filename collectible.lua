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
  self.animation:draw()
end

function Collectible:collide(object)

end
