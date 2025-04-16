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
    self.friction = bprops.friction or 1.0
    self.breakable = bprops.breakable or false 
    self.bonkable = bprops.bonkable or false 
    self.lethal = bprops.lethal or false 
    self.jump_through = bprops.jump_through or false 
    self.crumbling = bprops.crumbling or false 
    self.movable = bprops.movable or false 
    self.invisible = bprops.invisible or false 
    self.contains = bprops.contains or "none"
    self.replacement = bprops.replacement or nil
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

function Block:onBonk(char)
    -- if necessary, replace with new block (need a field for that)
    -- move self/new block to Bonk state
    if self.replacement ~= "none" then 
        local newBlock = self:replaceWith(self.replace)
        newBlock:gotoState('Bonked')
    else 
        self:gotoState('Bonked')
    end
    -- emit collectible if necessary
    if self.contains then 
        log.info("Contains " .. self.contains.type)
        self.contains:emit()
    end
end

function Block:replaceWith(blockType)
    --local b = Block:new(gBlockDefs[blockType], self.position.x, self.position.y, self.world)
    local b = Block:new(
        {x=self.position.x, y=self.position.y+self.height, 
        height=self.height, width=self.width, 
        properties = {type = "dead"}}, 
        self.world)
    self.level:addBlock(b)
    self.remove = true
    return(b)
end

local Bonked = Block:addState('Bonked')

function Bonked:enteredState()
    self.startY = self.position.y
    self.velocity.y = -110
    self.gravityEffect = 1.9
end

function Bonked:exitedState()
    self.velocity.y = 0
    self.gravityEffect = 0
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

LookBlock = class('LookBlock', Block)

function LookBlock:update(dt)
    local player = self.level.player 
    local dx = player.position.x - self.position.x 
    local dy = player.position.y - self.position.y
    local tan = dy / dx -- SOH, CAH, TOA
    local angle = math.abs(math.atan(tan) * 57.3) -- convert rads to degrees
    local dir = "_left"
    local height = "_up"
    if dx > 0 then 
        dir = "_right"
    end 
    if angle >=45 and dy < 0 then 
        height = "_high"
    elseif angle < 45 and dy >= 0 then 
        height = "_down"
    elseif angle >= 45 and dy >= 0 then 
        height = "_low"
    end
    
    self.quad = gBlockQuads["look" .. dir .. height]
end

InvisibleBlock = class('InvisibleBlock', Block)

function InvisibleBlock:initialize(obj, level)
    self.type = 'block'
    self.subtype = 'invisible'
    local bprops = obj.properties
    --self.subtype = bprops.type
    self.position = {
        x = obj.x,
        y = obj.y
    }
    self.height = obj.height 
    self.width = obj.width
    --Entity.initialize(self, gBlockDefs[bprops.type], obj.x, obj.y-obj.height, world)
    self.friction = 1
    self.bonkable = true
    self.invisible = bprops.invisible
    self.contains = bprops.contains
    self.world = level.world -- MAY NOT NEED
    self.level = level
end
