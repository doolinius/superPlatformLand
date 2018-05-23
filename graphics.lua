
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
-- block tiles
tilesImage = love.graphics.newImage("maps/maptiles.png")
tilesGrid = anim8.newGrid(16, 16, tilesImage:getDimensions())
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

gBlockGraphics = {
  greenBrick = {grid=tilesGrid, frames = {'13-13', 12}, duration=0.1},
  greenBreak = {grid=itemsGrid, frames = {'1-1', 5}, duration=0.1},
  box = {grid=itemsGrid, frames = {'1-1', 3}, duration=0.1},
  redMove = {grid=itemsGrid, frames = {'4-4', 3}, duration=0.1},
  spikes = {grid=itemsGrid, frames = {'8-8', 3}, duration=0.1},
  invisible = {grid=itemsGrid, frames = {'6-6', 1}, duration=0.1}
}

gBreakFrames = {
  box = {
    {grid=itemsGrid8, frames = {'3-3',5}, duration=0.1},
    {grid=itemsGrid8, frames = {'4-4',5}, duration=0.1},
    {grid=itemsGrid8, frames = {'3-3',6}, duration=0.1},
    {grid=itemsGrid8, frames = {'4-4',6}, duration=0.1}
  },
  greenBreak = {
    {grid=itemsGrid8, frames = {'3-3',9}, duration=0.1},
    {grid=itemsGrid8, frames = {'4-4',9}, duration=0.1},
    {grid=itemsGrid8, frames = {'3-3',10}, duration=0.1},
    {grid=itemsGrid8, frames = {'4-4',10}, duration=0.1}
  }
}

gCollectibleGraphics = {
  coin = {grid=itemsGrid, frames={'2-5',6}, duration=0.2},
  heart = {grid=hudGrid, frames={'9-10',2,'10-10',1,'10-10',2}, duration=0.2}
}

gEffectGraphics = {
  coinSparkle = {grid = itemsGrid, frames={'6-9', 6}, duration = 0.1}
}

gProjectileGraphics = {
  punch = {image = heroImage, quad = love.graphics.newQuad(3*16, 5*16, 16, 16, characterImage:getDimensions())},
  kick = {image = heroImage, quad = love.graphics.newQuad(4*16, 5*16, 16, 16, characterImage:getDimensions())}
}
