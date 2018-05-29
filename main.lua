
function love.load()
  inspect = require('libs/inspect')
  love.graphics.setDefaultFilter("nearest", "nearest")
  gameFont = love.graphics.newFont('pressStart2p.ttf', 8)
  love.graphics.setFont(gameFont)
  scale = 4
  love.window.setMode(320 * scale, 192 * scale)
  wWidth, wHeight = love.graphics.getDimensions()
  log = require('libs/log')
  sti = require('libs/sti')
  bump = require('libs/bump')
  anim8 = require('libs/anim8/anim8')
  Gamestate = require('libs/hump.gamestate')
  require('collision')
  require('map')
  require('map_defs')
  --world = bump.newWorld()
  --map = sti("maps/test.lua", {"bump"})
  require('graphics')
  require('entity_defs')
  require('character')
  require('projectile')
  require('sounds')
  require('state_machine')
  require('entity')
  require('game_states')
  Gamestate.registerEvents()
  Gamestate.switch(startScreen, "hero", "1-1")

  gravity = -4.5

  score = 0
  lives = 2
  coins = 99


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
