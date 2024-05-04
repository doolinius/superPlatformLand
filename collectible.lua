Collectible = class('Collectible', Entity)

function Collectible:initialize(obj)
    Entity.initialize(self, gCollectibleDefs[obj.properties.type], obj.x, obj.y)
    self.type = obj.type
    self.points = obj.points
    self.sound = Sound[obj.sound]
    self.onCollect = gCollectibleDefs[obj.properties.type].onCollect
end

function Collectible:onRemove()
    if self.removeEffect then 
        -- create effect
        local e = Effect.new(self.removeEffect, self.position.x, self.position.y)
        -- place in Level
    end
end

function Collectible:update(dt)
    Entity.update(self, dt)
end

function Collectible:draw()
    Entity.draw(self)
end