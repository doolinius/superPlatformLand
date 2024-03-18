Map = {}
Map.__index = Map

function Map:Create(def, player)
  local this = {
    map = sti("maps/" .. def.mapFile, {"bump"}),
    world = bump.newWorld(),
    enemies = {},
    collectibles = {}
  }

  this.map:bump_init(this.world)
  --local px, py = getSpawnPoint()
  --player:setPosition(px, py)
  --world:add(player, player.x, player.y, player.w, player.h)

  -- add all of the collectibles
  local cLayer = this.map.layers[5]
  for y=1, cLayer.height do
    for x=1, cLayer.width do
      local tile = cLayer.data[y][x]
      if tile then
        local c = {}
        c.x = (x-1) * 16
        c.y = (y-1) * 16
        c.type = tile.properties.type
        local anim = clcTables[c.type]
        c.animation = anim8.newAnimation(anim.grid(unpack(anim.frames)),anim.duration)
        print("Adding " .. c.type .. " at x:" .. c.x .. " y:" .. c.y)
        table.insert(this.collectibles, c)
        this.world:add(c, c.x, c.y, c.animation:getDimensions())
      end
    end
  end

  setmetatable(this, self)

  -- add all of the enemies
  local eLayer = this.map.layers[6]
  for y=1, eLayer.height do
    for x=1, eLayer.width do
      local tile = eLayer.data[y][x]
      if tile then
        local e = Character:Create(gEnemyDefs[tile.properties.enemyType], this)
        e.x = (x-1) * 16
        e.y = (y-1) * 16
        table.insert(this.enemies, e)
        this.world:add(e, e.x, e.y, e.animation:getDimensions())
      end
    end
  end

  -- remove the enemy and collectible layers
  --this.map:removeLayer(6)
  --this.map:removeLayer(5)

  return(this)
end

function Map:addHero(hero)
  self.world:add(hero, hero.x, hero.y, hero.animation:getDimensions())
end

function Map:takeCoin(coin)
  self.world:remove(coin)
  for i=1, #self.collectibles do
    if coin == self.collectibles[i] then
      table.remove(self.collectibles, i)
    end
  end

  coins = coins + 1
  sounds.coin:stop() -- stop coin sound if already playing
  sounds.coin:play()
  if coins == 100 then
    lives = lives + 1
    coins = 0
    sounds.oneup:play()
  end
end

function Map:update(dt)
  self.map:update(dt)
  for _, e in ipairs(self.enemies) do
    e:update(dt)
  end
  for _, c in ipairs(self.collectibles) do
    c.animation:update(dt)
  end
end

function Map:draw(tx, rot, scaleX, scaleY)
  self.map:draw(tx, rot, scaleX, scaleY)
  for _,e in ipairs(self.enemies) do   -- loop through and draw enemies
    e:draw()
  end
  for _,c in pairs(self.collectibles) do -- loop through and draw collectibles
    c.animation:draw(clcImages[c.type], c.x, c.y)
  end
end
