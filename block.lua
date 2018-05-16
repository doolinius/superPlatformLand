Block = {}
Block.__index = Block

function Block:Create(def)
  local this = {
    x = def.x,
    y = def.y,
    animation = nil,
    gravity = def.gravity or false,
    friction = def.friction or 1,
    points = def.points or nil,
    inside = nil, -- somehow add collectibles to blocks
    type = def.type or "breakable"
  }

  setmetatable(this, self)
  return(this)
end

function Block:update(dt)

end

function Block:draw()

end

function Block:collide(object)

end
