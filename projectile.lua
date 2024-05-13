Projectile = class('Projectile', Entity)
Projectile.static.type = 'projectile'

function Projectile:initialize(ptype, x, y, world)
    self.type = 'projectile'
    self.subtype = ptype -- punch, kick, bullet, etc.
    local def = gProjectileDefs[ptype]
    Entity.initialize(self, def, x, y, world)
    self.distance = def.distance
end

function Projectile:update(dt)
  local actualX, actualY, cols, len = Entity.update(self, dt)
  -- resolve collisions
  if self.dx >= self.distance then
    self.remove = false
  end
end

function Projectile:draw()
  Entity.draw(self)
end
