Collectible = {}
Collectible.__index = Collectible

function Collectible:Create(def)
  local this = {
    x = def.x,
    y = def.y,
    entityType = def.entityType,
    animation = nil,
    points = def.points or 0
  }

  local g = anim8.newGrid(def.frames, def.duration)


  setmetatable(this, self)
  return(this)
end

function Collectible:update(dt)

end

function Collectible:draw()

end

function Collectible:collide(object)

end 
