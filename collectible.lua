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

  setmetatable(this, self)
  return(this)
end
