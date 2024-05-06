--Block = { type = "block" }
--Block.__index = Block 
Block = class('Block', Entity)
Block.static.type = 'block'

-- This one takes a block definition as found in data/block_defs.lua
function Block:initialize(obj, world)
    local bprops = obj.properties
    self.subtype = bprops.type
    Entity.initialize(self, gBlockDefs[bprops.type], obj.x, obj.y-16, world)
    self.friction = bprops.friction
    self.breakable = bprops.breakable 
    self.bonkable = bprops.bonkable
    self.lethal = bprops.lethal 
    self.jump_through = bprops.jump_through
    self.crumbling = bprops.crumbling
    self.movable = bprops.movable
end 

function Block:update(dt)
    local actualX, actualY, cols, len = Entity.update(self, dt)
end

function Block:draw()
    Entity.draw(self)
end