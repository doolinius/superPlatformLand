
-- interactive blocks and collectibles
itemsImage = love.graphics.newImage("maps/items.png")
itemsGrid = anim8.newGrid(16, 16, itemsImage:getDimensions())
itemsGrid8 = anim8.newGrid(8, 8, itemsImage:getDimensions())
-- Heads Up Display graphics and one collectible (heart)
hudImage = love.graphics.newImage("graphics/hud.png")
hudGrid = anim8.newGrid(8, 8, hudImage:getDimensions())
-- characters, enemies and a few projectiles and collectibles
characterImage = love.graphics.newImage("graphics/characters.png")
characterGrid = anim8.newGrid(16, 16, characterImage:getDimensions())
characterGrid8 = anim8.newGrid(8, 8, characterImage:getDimensions())
-- Title screen graphics
titleImage = love.graphics.newImage("graphics/title.png")
startImage = love.graphics.newImage("graphics/pressStart.png")

-- HUD graphics table setup and table
hudQuads = {}
quadCount = 1
for j=0,1 do
  for i=0,9 do
    local quad = love.graphics.newQuad(i*8, j*8, 8, 8, hudImage:getDimensions())
    hudQuads[quadCount] = quad
    quadCount = quadCount + 1
  end
end

hud = {
  fullHeart = hudQuads[17],
  emptyHeart = hudQuads[18],
  clock = hudQuads[16],
  coin = hudQuads[8],
  x = hudQuads[9]
}

local tg = anim8.newGrid(16, 16, itemsImage:getDimensions())
local g = anim8.newGrid(8, 8, hudImage:getDimensions())

collectibleAnims = {}

clcTables = {
  heart = {grid=g,frames={'9-10',2,'10-10',1,'10-10',2}, duration=0.2},
  coin = {grid=tg,frames={'2-5',6}, duration=0.25},
  coinSparkle = {grid = itemsGrid, frames={'6-9', 6}, duration = 0.1}
}

gEffectsAnims = {
  coinSparkle = anim8.newAnimation(itemsGrid(unpack(clcTables.coinSparkle.frames)), clcTables.coinSparkle.duration, 'pauseAtEnd')
}

clcImages = {
  heart = hudImage,
  coin = itemsImage,
  coinSparkle = itemsImage
}

gProjectileGraphics = {
  punch = {image = heroImage, quad = love.graphics.newQuad(3*16, 5*16, 16, 16, characterImage:getDimensions())},
  kick = {image = heroImage, quad = love.graphics.newQuad(4*16, 5*16, 16, 16, characterImage:getDimensions())}
}
