--Block = { type = "block" }
--Block.__index = Block 
Block = class('Block', Entity)
Block.static.type = 'block'
Block:include(Stateful)

-- This one takes a block definition as found in data/block_defs.lua
function Block:initialize(obj, world)
    self.type = 'block'
    local bprops = obj.properties
    self.subtype = bprops.type
    Entity.initialize(self, gBlockDefs[bprops.type], obj.x, obj.y-obj.height, world)
    self.friction = bprops.friction
    self.breakable = bprops.breakable 
    self.bonkable = bprops.bonkable
    self.lethal = bprops.lethal 
    self.jump_through = bprops.jump_through
    self.crumbling = bprops.crumbling
    self.movable = bprops.movable
    self.invisible = bprops.invisible

    self.contains = bprops.contains

end 

function Block:update(dt)
    local actualX, actualY, cols, len = Entity.update(self, dt)
end

function Block:draw()
    Entity.draw(self)
end

function Block:onBreak(level)
    self.remove = true
    Sound.break_block:stop()
    Sound.break_block:play()
    local f1 = Effect:new(gFragEffectDefs[self.subtype .. "_left"], self.position.x, self.position.y, level)
    local f2 = Effect:new(gFragEffectDefs[self.subtype .. "_right"], self.position.x+8, self.position.y, level)
    local f3 = Effect:new(gFragEffectDefs[self.subtype .. "_left"], self.position.x, self.position.y+8, level)
    local f4 = Effect:new(gFragEffectDefs[self.subtype .. "_right"], self.position.x+8, self.position.y+8, level)
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

function Block:onBonk()
    -- if necessary, replace with new block (need a field for that)
    -- move self/new block to Bonk state
    -- emit collectible if necessary
end

local Bonked = Block:addState('Bonked')

function Bonked:enteredState()
    self.startY = self.position.y
    self.velocity.y = -30
end

function Bonked:update(dt)
    Block.update(self, dt)
    if self.velocity.y < 0 then 
        -- TODO: check for collision with enemies
    elseif self.position.y >= self.startY then 
        self.position.y = self.startY
        self:gotoState(nil)
    end 
end

InvisibleBlock = class('InvisibleBlock', Block)

function InvisibleBlock:initialize(obj, level)
    self.type = 'block'
    self.subtype = 'invisible'
    local bprops = obj.properties
    self.subtype = bprops.type
    self.x = obj.x 
    self.y = obj.y 
    self.height = obj.height 
    self.width = obj.width
    --Entity.initialize(self, gBlockDefs[bprops.type], obj.x, obj.y-obj.height, world)
    self.friction = 1
    self.bonkable = true
    self.invisible = bprops.invisible
    self.contains = bprops.contains
    self.world = level.world -- MAY NOT NEED
end

function InvisibleBlock:update(dt) end 

function InvisibleBlock:draw() end