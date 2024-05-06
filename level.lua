Level = {}
Level.__index = Level

function Level:Create(level_id, player_id)
    local this = {
        map = sti('assets/maps/' .. level_id .. '.lua', {'bump'}),
        player = nil,
        entities = {},
        world = bump.newWorld(),
        camera = nil
    }
    this.player = Character:new(gCharacterDefs[player_id], 0, 0, this.world)
    this.bg_music = Music[this.map.properties.bg_music]
    this.name = this.map.properties.name
    --this.player.world = this.world -- give the player a reference to the collision world
    this.map:bump_init(this.world)
    this.time_limit = this.map.properties.time_limit
    -- loop through all the objects in the map
    --  enemies, collectibles, blocks, spawn_points, etc. 
    for _, o in pairs(this.map.objects) do -- for key, value in pairs(someTable) do 
        if o.type == 'spawn_point' then 
            -- set player coordinates (this.player)
            this.player.position.x = o.x + this.player.hitbox.ox
            this.player.position.y = o.y - this.player.height
            --this:addEntity(player)
            -- add it to the entities table
            table.insert(this.entities, this.player)
            -- add it to the collision world
            this.world:add(
                this.player, 
                this.player.position.x + this.player.hitbox.ox, 
                this.player.position.y + this.player.hitbox.oy, 
                this.player.hitbox.width, 
                this.player.hitbox.height
            )
        elseif o.type == 'block' then 
            --log.trace("Block type: " .. o.properties.type)
            local b = Block:new(o, this.world)
            --this:addEntity(b)
            table.insert(this.entities, b)
            --log.trace(inspect(b, {depth=2}))
            this.world:add(b, b.position.x, b.position.y, b.hitbox.width, b.hitbox.height)
        elseif o.type == 'enemy' then 
            local e = Enemy:Create(o, this.world)
        elseif o.type == 'collectible' then 
            local c = Collectible:new(o, this.world)
            table.insert(this.entities, c)
            this.world:add(c, c.position.x, c.position.y, c.hitbox.width, c.hitbox.height)
        end
    end

    this.camera = Camera:Create(this.map, gameWidth, gameHeight, this.player)

    local entityLayer = this.map:convertToCustomLayer('entities')
    entityLayer.update = function(self, dt)
        --for _, e in ipairs(this.entities) do
        for i=#this.entities, 1, -1 do
            local e = this.entities[i]
            if e.remove then 
                -- remove from this table
                e:onRemove()
                table.remove(this.entities, i)
                this.world:remove(e)
            else
                e:update(dt)
            end
        end
    end

    entityLayer.draw = function(self)
        for _, e in ipairs(this.entities) do 
            e:draw()
        end
    end

    setmetatable(this, self)
    return(this)
end

function Level:addEntity(e)
    table.insert(self.entities, e)
    self.world:add(e, e.x, e.y, e.w, e.h)
end

function Level:handleInput(dt)
    self.player:handleInput(dt)
end

function Level:update(dt)
    --self.player:handleInput(dt)
    self.map:update(dt)
    self.camera:update(dt)
end

function Level:draw(sx, sy)
    local tx, ty = self.camera:transCoords()
    self.map:draw(tx, ty)
    --love.graphics.setColor(0, 1, 0, 1)
    self.map:bump_draw(tx, ty)
    --love.graphics.setColor(1, 1, 1, 1)
end 