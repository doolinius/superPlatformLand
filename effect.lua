Effect = class('Effect', Entity)
Effect.static.type = 'effect'

function Effect:initialize(def, x, y, level)
    self.type = 'effect'
    def.hitbox = "none"
    Entity.initialize(self, def, x, y, level)
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

function breakBlock(block, level)
    Sound.break_block:stop()
    Sound.break_block:play()
    local f1 = Effect:new(gFragEffectDefs[block.subtype .. "_left"], block.position.x, block.position.y, level)
    local f2 = Effect:new(gFragEffectDefs[block.subtype .. "_right"], block.position.x+8, block.position.y, level)
    local f3 = Effect:new(gFragEffectDefs[block.subtype .. "_left"], block.position.x, block.position.y+8, level)
    local f4 = Effect:new(gFragEffectDefs[block.subtype .. "_right"], block.position.x+8, block.position.y+8, level)
    local Y_VEL = -150
    local X_VEL = 40
    f1.velocity.y = Y_VEL
    f1.velocity.x = -X_VEL
    f1.rotate = -f1.rotate
    f2.velocity.y = Y_VEL
    f2.velocity.x = X_VEL 
    f3.velocity.y = Y_VEL+20
    f3.velocity.x = -X_VEL-50
    f3.rotate = -f3.rotate
    f4.velocity.y = Y_VEL+20
    f4.velocity.x = X_VEL+50
    level:addEffect(f1)
    level:addEffect(f2)
    level:addEffect(f3)
    level:addEffect(f4)
end