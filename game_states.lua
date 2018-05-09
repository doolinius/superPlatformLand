startScreen = {}
fileSelect = {}
levelIntro = {}
playLevel = {}
pausePlay = {}

function startScreen:enter()
  self.timer = 0.5
  self.exiting = false
  self.startAlpha = 1
  self.alpha = 1
  self.map = sti("maps/title.lua")
  local titleWidth, titleHeight = titleImage:getDimensions()
  local startWidth, startHeight = startImage:getDimensions()
  self.titleX = (wWidth / (scale * 2) - titleWidth / (scale * 2))
  self.titleY = (wHeight / (scale * 2) - titleHeight / (scale * 2) - 30)
  self.startX = (wWidth / (scale * 2) - startWidth / (scale * 2))
  self.startY = (wHeight / (scale * 2)) -- startHeight / (scale * 2) + titleHeight -- startHeight / 2)
  sounds.intro_screen:play()
end

function startScreen:update(dt)
  if love.keyboard.isDown('return') then
    self.exiting = true
    sounds.start:play()
  end
  if self.exiting then
    if self.alpha <= 0 then
      sounds.intro_screen:stop()
      Gamestate.switch(playLevel, "hero", "1-1")
    else
      self.alpha = self.alpha - dt / 1.5
      self.startAlpha = self.alpha
      sounds.intro_screen:setVolume(sounds.intro_screen:getVolume() - dt)
    end
  else
    self.timer = self.timer - dt
    if self.timer <= 0 then
      self.timer = 0.5
      if self.startAlpha == 1 then
        self.startAlpha = 0
      else
        self.startAlpha = 1
      end
    end
  end
end

function startScreen:draw()
  love.graphics.scale(scale,scale)
  love.graphics.push()
  love.graphics.setColor(1, 1, 1, self.alpha)
  self.map:draw(0, 0, scale, scale)
  love.graphics.draw(titleImage, self.titleX, self.titleY, 0, 1/scale, 1/scale)
  love.graphics.setColor(1, 1, 1, self.startAlpha)
  love.graphics.draw(startImage, self.startX, self.startY, 0, 1/scale, 1/scale)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.pop()
end

function startScreen:leave()
end

function playLevel:enter(previous, heroName, level)
  log.trace("Entering PlayLevel state")
  -- get the correct map definition
  local mapDef = gMapDefs[level]
  self.map = sti("maps/" .. mapDef.mapFile, {"bump"})--Map:Create(mapDef)
  world = bump.newWorld()
  self.map:bump_init(world)
  --self.map.world = self.world
  self.time = mapDef.time
  self.bgMusic = sounds[mapDef.bgMusic]
  self.bgMusic:play()
  collectibles = {}
  enemies = {}

  local cLayer = self.map.layers[5]
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
        --print("Adding " .. c.type .. " at x:" .. c.x .. " y:" .. c.y)
        table.insert(collectibles, c)
        world:add(c, c.x, c.y, c.animation:getDimensions())
      end
    end
  end

  -- add all of the enemies
  local eLayer = self.map.layers[6]
  for y=1, eLayer.height do
    for x=1, eLayer.width do
      local tile = eLayer.data[y][x]
      if tile then
        local e = Character:Create(gEnemyDefs[tile.properties.enemyType], self.map)
        e.x = (x-1) * 16
        e.y = (y-1) * 16
        e.type = tile.properties.enemyType
        table.insert(enemies, e)
        world:add(e, e.x, e.y, e.animation:getDimensions())
      end
    end
  end

  hero = Character:Create(playerDefs[heroName], self.map)
  log.trace("Created here: " .. playerDefs[heroName].image)
  world:add(hero, hero.x, hero.y, hero.animation:getDimensions())

  self.tx = 0

  log.trace("PlayLevel " .. level .. " ready")
end

function playLevel:updateEntities(dt)
  for _, e in ipairs(enemies) do
    e:update(dt)
  end
  for _, c in ipairs(collectibles) do
    c.animation:update(dt)
  end
end

function takeHeart(heart)
  world:remove(heart)
  for i=1, #collectibles do
    if heart == collectibles[i] then
      table.remove(collectibles, i)
    end
  end

  hearts = math.min(3, hearts + 1)
  sounds.heart:play()
end

function takeCoin(coin)
  world:remove(coin)
  for i=1, #collectibles do
    if coin == collectibles[i] then
      table.remove(collectibles, i)
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

function playLevel:update(dt)
  --log.trace("PlayLevel UPDATE")
  self.time = self.time - dt
  self.map:update(dt)
  self:updateEntities(dt)
  hero:update(dt)
  -- how much to move the "camera" by
  if hero.x < wWidth / (scale * 2) then
    self.tx = 0
  elseif hero.x > (self.map.width * 16) - (wWidth / (scale * 2)) then
    self.tx = -(self.map.width * 16 - wWidth / scale)
    self.tx = math.floor(self.tx)
  else
    self.tx = -(hero.x - wWidth / (scale * 2))
    self.tx = math.floor(self.tx) -- make sure it's an integer
  end
end

-- draw the heads-up display
-- show score, health, number of lives, coins and timer
function playLevel:drawHUD()
  printWithShadow("LIVES x " .. lives, 1, 1)
  for i=1, hearts do
    love.graphics.draw(hudImage, hud.fullHeart, i*8, 9)
  end
  for i=hearts, 3 do
    love.graphics.draw(hudImage, hud.emptyHeart, i*8, 9)
  end
  --love.graphics.draw(hudImage, hud.emptyHeart, 16, 9)
  love.graphics.draw(hudImage, hud.coin, 16*8, 1)
  love.graphics.draw(hudImage, hud.x, 17*8, 1)
  printWithShadow(coins, 18*8, 1)
  love.graphics.draw(hudImage, hud.clock, (wWidth/scale)-6*8, 1)
  printWithShadow(math.floor(self.time), (wWidth/scale)-5*8, 1)
  printWithShadow("hero.x: " .. hero.x, (wWidth/scale)-12*9, 9)
  printWithShadow("hero.y: " .. hero.y, (wWidth/scale)-12*9, 17)
  printWithShadow("state: " .. hero.controller.current.name, (wWidth/scale)-12*8, 25)
end

function playLevel:drawEntities()
  for _,e in ipairs(enemies) do   -- loop through and draw enemies
    e:draw()
  end
  for _,c in pairs(collectibles) do -- loop through and draw collectibles
    c.animation:draw(clcImages[c.type], c.x, c.y)
  end
end

function playLevel:draw()
  --log.trace("PlayLevel DRAW")
  love.graphics.scale(scale,scale) -- set the proper scale
  love.graphics.push()             -- save current graphics parameters
  love.graphics.translate(self.tx,0)    -- translate the camera
  self.map:draw(self.tx, 0, scale, scale)    -- draw the map based on the translation
  self:drawEntities()
  hero:draw()                     -- draw the hero
  love.graphics.pop()              -- go back to previous graphics parameters
  self:drawHUD()                   -- draw heads up display outside
end
