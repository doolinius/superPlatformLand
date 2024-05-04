Level = {}
Level.__index = Level

function Level:Create(level_id, player)
    local this = {
        map = sti('assets/maps/' .. level_id .. '.lua', {'bump'}),
        player = player,
        entities = {},
        world = bump.newWorld(),
        camera = nil
    }
    this.bg_music = Music[this.map.properties.bg_music]
    this.name = this.map.properties.name
    this.player.world = this.world -- give the player a reference to the collision world
    this.map:bump_init(this.world)
    this.time_limit = this.map.properties.time_limit
    -- loop through all the objects in the map
    --  enemies, collectibles, blocks, spawn_points, etc. 
    for _, o in pairs(this.map.objects) do -- for key, value in pairs(someTable) do 
        if o.type == 'spawn_point' then 
            -- set player coordinates (this.player)
            player.x = o.x 
            player.y = o.y - player.h 
            --this:addEntity(player)
            -- add it to the entities table
            table.insert(this.entities, player)
            -- add it to the collision world
            this.world:add(player, player.x, player.y, player.w, player.h)
        elseif o.type == 'block' then 
            local b = Block:CreateFromObject(o)
            --this:addEntity(b)
            table.insert(this.entities, b)
            this.world:add(b, b.x, b.y, b.w, b.h)
        elseif o.type == 'enemy' then 
            local e = Enemy:Create(o, this.world)
        elseif o.type == 'collectible' then 

            --this:addCollectible(o)
        end
    end

    this.camera = Camera:Create(this.map, gameWidth, gameHeight, this.player)

    local entityLayer = this.map:convertToCustomLayer('entities')
    entityLayer.update = function(self, dt)
        for _, e in ipairs(this.entities) do
            if e.remove then 
                -- remove from this table
                -- remove from collision world
            end
            e:update(dt)
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
    -- Get rid of any entities that are set to be removed
    --[[
    for i=#self.entities, 1, -1 do 
        local e = self.entities[i]
        if e.remove then 
            --e:onRemove()
            table.remove(self.entities, i)
            self.world:remove(e)
        end
    end
    ]]
end

function Level:draw(sx, sy)
    local tx, ty = self.camera:transCoords()
    self.map:draw(tx, ty)
end 