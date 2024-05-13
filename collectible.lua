Collectible = class('Collectible', Entity)
Collectible.static.type = 'collectible'

function Collectible:initialize(obj, level)
    self.type = 'collectible'
    self.subtype = obj.properties.type
    Entity.initialize(self, gCollectibleDefs[obj.properties.type], obj.x, obj.y-obj.height, level)
    self.points = obj.properties.points
    self.sound = Sound[obj.properties.sound]
    self.onCollect = gCollectibleDefs[obj.properties.type].onCollect
end

function Collectible:onRemove()
    if self.removeEffect then 
        -- create effect
        local e = Effect:new(gEffectDefs[self.removeEffect], self.position.x, self.position.y, self.level)
        -- place in Level
        self.level:addEffect(e)
    end
end

function Collectible:update(dt)
    local actualX, actualY, cols, len = Entity.update(self, dt)
    -- resolve collisions
end

function Collectible:draw()
    Entity.draw(self)
end