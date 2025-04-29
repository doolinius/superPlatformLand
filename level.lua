Level = class('Level')

function Level:initialize(level_id, player_id)
    self.map = sti('assets/maps/' .. level_id .. '.lua', {'bump'})
    self.entities = {
        players = {},
        enemies = {},
        collectibles = {},
        blocks = {},
        effects = {},
        projectiles = {}
    }
    self.world = bump.newWorld()

    self.player = Character:new(gCharacterDefs[player_id], 0, 0, self)
    self.bg_music = Music[self.map.properties.bg_music]
    self.name = self.map.properties.name
    --self.player.world = self.world -- give the player a reference to the collision world
    self.map:bump_init(self.world) -- connect STI with bump
    self.time_limit = self.map.properties.time_limit
    -- loop through all the objects in the map
    --  enemies, collectibles, blocks, spawn_points, etc. 
    for _, o in pairs(self.map.objects) do -- for key, value in pairs(someTable) do 
        if o.type == 'spawn_point' then 
            -- set player coordinates (self.player)
            self.player.position.x = o.x + self.player.hitbox.ox
            self.player.position.y = o.y - self.player.height
            --self:addEntity(player)
            -- add it to the entities table
            table.insert(self.entities.players, self.player)
            -- add it to the collision world
            self.world:add(
                self.player, 
                self.player.position.x + self.player.hitbox.ox, 
                self.player.position.y + self.player.hitbox.oy, 
                self.player.hitbox.width, 
                self.player.hitbox.height
            )
        elseif o.type == 'level_end' then
            self.level_end = LevelEnd(o.x, o.y)
            self.world:add(self.level_end, o.x + 4, o.y+4, 16, 16)
        elseif o.type == 'block' then 
            --log.trace("Block type: " .. o.properties.type)
            --log.trace("Block Contains ID: " .. inspect(o.properties.contains))
            o.properties.contains = self.map.objects[o.properties.contains.id]
            --log.trace("Block Contains Object: " .. inspect(obj))
            if o.properties.invisible then
                local b = InvisibleBlock:new(o, self)
                self.world:add(b, b.position.x, b.position.y, b.width, b.height)
            else
                local b
                if o.properties.type == "look" then
                    o.properties.type = "look_left_down"
                    b = LookBlock:new(o, self)
                else 
                    b = Block:new(o, self)
                end
                --self:addEntity(b)
                table.insert(self.entities.blocks, b)
                --log.trace(inspect(b, {depth=2}))
                self.world:add(b, b.position.x, b.position.y, b.hitbox.width, b.hitbox.height)
            end
        elseif o.type == 'enemy' then 
            local e = Enemy:Create(o, self)
            -- add the enemy to the collision world 
            -- add the enemy to the enemies table in entities
        elseif o.type == 'collectible' and o.visible then 
            local c = Collectible:new(o, self)
            table.insert(self.entities.collectibles, c)
            self.world:add(c, c.position.x, c.position.y, c.hitbox.width, c.hitbox.height)
        end
    end

    self.camera = Camera:Create(self.map, gameWidth, gameHeight, self.player)

    local entityLayer = self.map:convertToCustomLayer('entities')
    entityLayer.update = function(layer, dt)
        --for _, e in ipairs(self.entities) do
        if self.level_end then 
            self.level_end:update(dt)
        end
        for _, entities in pairs(self.entities) do -- loops through each entity subtable
            for i=#entities, 1, -1 do -- loop BACKWARDS through each entity
                local e = entities[i]
                if e.remove then 
                    e:onRemove()
                    table.remove(entities, i)
                    if e.type ~= 'effect' then
                        self.world:remove(e)
                    end
                else
                    e:update(dt)
                end
            end
        end
    end

    entityLayer.draw = function(layer)


        for _, e in ipairs(self.entities.blocks) do 
            e:draw()
        end

        if self.level_end then 
            self.level_end:draw()
        end

        for _, e in ipairs(self.entities.effects) do 
            e:draw()
        end
        for _, e in ipairs(self.entities.collectibles) do 
            e:draw()
        end
        for _, e in ipairs(self.entities.enemies) do 
            e:draw()
        end
        for _, e in ipairs(self.entities.players) do 
            e:draw()
        end
    end

    self.map:removeLayer('other') 

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