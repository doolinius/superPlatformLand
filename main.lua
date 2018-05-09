
function love.load()
  inspect = require('libs/inspect')
  gameFont = love.graphics.newFont('pressStart2p.ttf', 8)
  gameFont:setFilter("nearest", "nearest")
  love.graphics.setFont(gameFont)
  scale = 4
  love.window.setMode(320 * scale, 192 * scale)
  wWidth, wHeight = love.graphics.getDimensions()
  log = require('libs/log')
  sti = require('libs/sti')
  bump = require('libs/bump')
  require('map')
  require('map_defs')
  --world = bump.newWorld()
  --map = sti("maps/test.lua", {"bump"})
  require('entity_defs')
  require('character')
  require('sounds')
  require('state_machine')
  anim8 = require('libs/anim8/anim8')
  require('hud')
  Gamestate = require('libs/hump.gamestate')
  require('game_states')
  Gamestate.registerEvents()
  Gamestate.switch(startScreen, "hero", "1-1")
  --[[
  hero = Character:Create(heroDef,map)
  hero.x = hero.x + 16
  world:add(hero, hero.x, hero.y, 16, 16)
  map:bump_init(world)

  entities = {} -- a global entities table for enemies
  collectibles = {} -- a global table for collectible items

  local cLayer = map.layers[5]
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
        table.insert(collectibles, c)
        world:add(c, c.x, c.y, c.animation:getDimensions())
      end
    end
  end

  map:removeLayer(5)

  rollyGuy = Character:Create(ballDef,map)

  table.insert(entities,rollyGuy)
  for _,e in ipairs(entities) do
    world:add(e, e.x, e.y, 16, 16)
  end
  ]]
  gravity = 4.5

  --tx = 0

  score = 0
  lives = 2
  coins = 99
  hearts = 1
  --time = 200
  -- uncomment the next line for background music
  --sounds.level1:play()

end

-- This filter applies only to collisions that result from moving
-- the hero
function heroFilter(hero, other)
  -- handle collision with collectibles and enemies
  if other.type then
    if other.type == "coin" or other.type == "heart" then
      return("cross")
    else
      return("touch")
    end

  -- handle collision with blocks
  elseif other.properties then
    -- if it's solid, just return slide, no questions asked
    if other.properties.blockType == "solid" then
      return("slide")
    -- if it's a passthrough block, check to see if the hero was previously
    -- above the block.  If so, it's a slide collision, otherwise allow him
    -- to cross through
    elseif other.properties.blockType == "passthrough" then
      if math.floor(hero.py) + 16 >= other.y then
        return("cross")
      else
        return("slide")
      end
    -- if it's a breakable block, check to see if hero is hitting it from
    -- the bottom
    elseif other.properties.blockType == "breakable" then
      return("slide")
    elseif other.properties.blockType == "invisible" then
      return("cross")
    else
      return(other.properties.colType)
    end
  else
    --log.trace("UGH... DEFAULT")
    return("slide")
  end
end

-- this function determines the type of collision between two objects
-- it is used any time something is moved in the collision world
function colFilter(item, other)
  if other.type then
    if other.type == "coin" or other.type == "heart" then
      return("cross")
    end
  elseif other.properties then
    if item == hero and other.properties.colType == "bounce" then
      return("cross")
    else
      return(other.properties.colType)
    end
  else
    return("slide")
  end
end
--[[
function take_coin(coin)
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
]]
-- the love.update(dt) function has an option argument called 'dt'
-- it stands for 'delta time', which represents how much time has passed
-- since the last update(), which also means how much time has passed since
-- the last game frame was drawn
function love.update(dt)
  --[[
  time = time - dt
  map:update(dt)

  -- update the hero
  -- new x and y values
  hero:update(dt)
  -- try to move the hero in the collision world
  local actualX, actualY, cols, len = world:move(hero, hero.x, hero.y, colFilter)

  -- if there was a collision
  if (len > 0) then
    print("collisions!!")
    -- put the hero where the collision world says he should be
    hero.x = actualX
    hero.y = actualY
    -- after collision detection
    for i=1, len do
      local c = cols[i]
      if c.type == "cross" then
        --local instance = map:getInstanceByPixel(c.other.x, c.other.y, 3)
        --map:removeInstance(instance)
        if c.other.type == "coin" then
          take_coin(c.other)
        end
      end
    end
  end

  -- loop through all enemies and update them
  for _,e in ipairs(entities) do
    e:update(dt)
    actualX, actualY, cols, len = world:move(e, e.x, e.y, colFilter)
    e.x = actualX
    e.y = actualY
  end

  for _,c in pairs(collectibles) do
    c.animation:update(dt)
  end

  -- how much to move the "camera" by
  if hero.x < wWidth / (scale * 2) then
    tx = 0
  elseif hero.x > (map.width * 16) - (wWidth / (scale * 2)) then
    tx = -(map.width * 16 - wWidth / scale)
    tx = math.floor(tx)
  else
    tx = -(hero.x - wWidth / (scale * 2))
    tx = math.floor(tx) -- make sure it's an integer
  end
  ]]
end

-- prints text with a black, 1 pixel offset drop shadow
function printWithShadow(text, x, y, limit, align)
  love.graphics.setColor(0, 0, 0, 1)
  love.graphics.print(text,x+1,y+1)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.print(text,x,y)
end

--[[
-- draw the heads-up display
-- show score, health, number of lives, coins and timer
function drawHUD()
  printWithShadow("LIVES x " .. lives, 1, 1)
  love.graphics.draw(hudImage, hud.fullHeart, 0, 9)
  love.graphics.draw(hudImage, hud.emptyHeart, 8, 9)
  love.graphics.draw(hudImage, hud.emptyHeart, 16, 9)
  love.graphics.draw(hudImage, hud.coin, 16*8, 1)
  love.graphics.draw(hudImage, hud.x, 17*8, 1)
  printWithShadow(coins, 18*8, 1)
  love.graphics.draw(hudImage, hud.clock, (wWidth/scale)-6*8, 1)
  printWithShadow(math.floor(time), (wWidth/scale)-5*8, 1)
  printWithShadow("hero.x: " .. hero.x, (wWidth/scale)-12*8, 9)
  printWithShadow("tx: " .. tx, (wWidth/scale)-12*8, 17)
  printWithShadow("map.w: " .. map.width*16, (wWidth/scale)-12*8, 25)
end
]]
-- the main draw function
function love.draw()
  --[[
  love.graphics.scale(scale,scale) -- set the proper scale
  love.graphics.push()             -- save current graphics parameters
  love.graphics.translate(tx,0)    -- translate the camera
  map:draw(tx, 0, scale, scale)    -- draw the map based on the translation
  hero:draw()                      -- draw the hero
  for _,e in ipairs(entities) do   -- loop through and draw enemies
    e:draw()
  end
  for _,c in pairs(collectibles) do -- loop through and draw collectibles
    print("Drawing a " .. c.type)
    c.animation:draw(clcImages[c.type], c.x, c.y)
  end
  love.graphics.pop()              -- go back to previous graphics parameters
  drawHUD()                        -- draw heads up display outside
  ]]
end
