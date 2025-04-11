Level = {}
Level.__index = Level

function Level:Create(level_id, player_id)
    local this = {
        map = sti('assets/maps/' .. level_id .. '.lua', {'bump'}),
        player = nil,
        entities = {
            players = {},
            enemies = {},
            collectibles = {},
            blocks = {},
            effects = {},
            projectiles = {}
        },
        world = bump.newWorld(),
        camera = nil
    }
    this.player = Character:new(gCharacterDefs[player_id], 0, 0, this)
    this.bg_music = Music[this.map.properties.bg_music]
    this.name = this.map.properties.name
    --this.player.world = this.world -- give the player a reference to the collision world
    this.map:bump_init(this.world) -- connect STI with bump
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
            table.insert(this.entities.players, this.player)
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
            --log.trace("Block Contains ID: " .. inspect(o.properties.contains))
            o.properties.contains = this.map.objects[o.properties.contains.id]
            --log.trace("Block Contains Object: " .. inspect(obj))
            if o.properties.invisible then
                local b = InvisibleBlock:new(o, this)
                this.world:add(b, b.x, b.y, b.width, b.height)
            else
                local b
                if o.properties.type == "look" then
                    o.properties.type = "look_left_down"
                    b = LookBlock:new(o, this)
                else 
                    b = Block:new(o, this)
                end
                --this:addEntity(b)
                table.insert(this.entities.blocks, b)
                --log.trace(inspect(b, {depth=2}))
                this.world:add(b, b.position.x, b.position.y, b.hitbox.width, b.hitbox.height)
            end
        elseif o.type == 'enemy' then 
            local e = Enemy:Create(o, this)
            -- add the enemy to the collision world 
            -- add the enemy to the enemies table in entities
        elseif o.type == 'collectible' and o.visible then 
            local c = Collectible:new(o, this)
            table.insert(this.entities.collectibles, c)
            this.world:add(c, c.position.x, c.position.y, c.hitbox.width, c.hitbox.height)
        end
    end

    this.camera = Camera:Create(this.map, gameWidth, gameHeight, this.player)

    local entityLayer = this.map:convertToCustomLayer('entities')
    entityLayer.update = function(self, dt)
        --for _, e in ipairs(this.entities) do
        for _, entities in pairs(this.entities) do
            for i=#entities, 1, -1 do
                local e = entities[i]
                if e.remove then 
                    -- remove from this table
                    e:onRemove()
                    table.remove(entities, i)
                    if e.type ~= 'effect' then
                        this.world:remove(e)
                    end
                else
                    e:update(dt)
                end
            end
        end
    end

    entityLayer.draw = function(self)


        for _, e in ipairs(this.entities.blocks) do 
            e:draw()
        end

        for _, e in ipairs(this.entities.effects) do 
            e:draw()
        end
        for _, e in ipairs(this.entities.collectibles) do 
            e:draw()
        end
        for _, e in ipairs(this.entities.enemies) do 
            e:draw()
        end
        for _, e in ipairs(this.entities.players) do 
            e:draw()
        end
    end

    this.map:removeLayer('other') 

    setmetatable(this, self)
    return(this)
end

function Level:addEntity(e)
    table.insert(self.entities[e.type], e)
    self.world:add(e, e.position.x, e.position.y, e.width, e.height)
end

function Level:addEffect(e)
    table.insert(self.entities.effects, e)
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
    --self.map:bump_draw(tx, ty)
    --love.graphics.setColor(1, 1, 1, 1)
end 

function Level:addBlock(b)
    self.world:add(b, b.position.x, b.position.y, b.width, b.height)
    table.insert(self.entities.blocks, b)
end