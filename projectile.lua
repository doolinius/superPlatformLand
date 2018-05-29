Projectile = {}
Projectile.__index = Projectile

function Projectile:Create(def, x, y)
  local this = {
    type = def.type, -- punch, kick, bullet, etc.
    x = x,
    y = y,
    entityType = "projectile",
    facing = def.facing or 1,
    x_speed = def.x_speed,
    distance = def.distance,
    dx = 0,
    image = def.image, gProjectileGraphics[def.type],
    animation = nil,
    enabled = true
  }
  local a = def.animation
  this.animation = anim8.newAnimation(a.grid(unpack(a.frames)), a.duration)

  setmetatable(this, self)
  return(this)
end

function Projectile:update(dt)
  self.x = self.x + self.x_speed * self.facing
  self.dx = self.dx + self.x_speed
  if self.dx >= self.distance then
    self.enabled = false
  end
end

function Projectile:draw()
  local offset = 0
  if self.facing == -1 then
    offset = 16
  end
  self.animation:draw(self.image, self.x, self.y, 0, self.facing, 1, offset, 0)
end
