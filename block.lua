Block = {}
Block.__index = Block

function Block:Create(def)
  local this = {
    x = def.x,
    y = def.y,
    x_speed = def.x_speed or nil,
    y_speed = def.y_speed or nil,
    animation = nil,
    gravity = def.gravity or false,
    friction = def.friction or 1,
    points = def.points or 0,
    inside = nil, -- somehow add collectibles to blocks
    type = def.type or "breakable"
  }

  setmetatable(this, self)
  return(this)
end

function Block:update(dt)
  self.animation:update(dt)
  if self.x_speed ~= 0 or self.y_speed ~= 0 then
    self.x = self.x + self.x_speed
    self.y = self.y + self.y_speed
    local actualX, actualY, cols, len = world:move(self, self.x, self.y)
  end
end

function Block:draw()
  self.animation:draw()
end

function Block:collide(object)

end
