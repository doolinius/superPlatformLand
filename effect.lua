Effect = class('Effect', Entity)
Effect.static.type = 'effect'

function Effect:initialize(def, x, y)
    def.hitbox = "none"
    Entity.initialize(self, def, x, y)
    self.timer = def.duration
end 

function Effect:update(dt)
    self.timer = self.timer - dt
    if self.timer <= 0 then 
        self.remove = true
    end
    Entity.update(self, dt)
end

function Effect:draw()
    Entity.draw(self)
end