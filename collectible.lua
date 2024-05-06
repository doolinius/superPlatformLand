Collectible = class('Collectible', Entity)
Collectible.static.type = 'collectible'

function Collectible:initialize(obj, world)
    Entity.initialize(self, gCollectibleDefs[obj.properties.type], obj.x, obj.y, world)
    self.subtype = obj.type
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
    local actualX, actualY, cols, len = Entity.update(self, dt)
    -- resolve collisions
end

function Collectible:draw()
    Entity.draw(self)
end