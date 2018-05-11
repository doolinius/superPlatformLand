
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
  require('projectile')
  require('sounds')
  require('state_machine')
  anim8 = require('libs/anim8/anim8')
  require('graphics')
  Gamestate = require('libs/hump.gamestate')
  require('game_states')
  Gamestate.registerEvents()
  Gamestate.switch(startScreen, "hero", "1-1")

  gravity = 4.5

  score = 0
  lives = 2
  coins = 99


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

-- the love.update(dt) function has an option argument called 'dt'
-- it stands for 'delta time', which represents how much time has passed
-- since the last update(), which also means how much time has passed since
-- the last game frame was drawn
function love.update(dt)

end

-- prints text with a black, 1 pixel offset drop shadow
function printWithShadow(text, x, y, limit, align)
  love.graphics.setColor(0, 0, 0, 1)
  love.graphics.print(text,x+1,y+1)
  love.graphics.setColor(1, 1, 1, 1)
  love.graphics.print(text,x,y)
end

-- the main draw function
function love.draw()

end
