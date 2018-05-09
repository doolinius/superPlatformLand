hudQuads = {}
hudImage = love.graphics.newImage("graphics/hud.png")
hudImage:setFilter("nearest", "nearest")
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

tileImage = love.graphics.newImage("maps/platform_tiles.png")
tileImage:setFilter("nearest", "nearest")
local tg = anim8.newGrid(16, 16, tileImage:getDimensions())
local g = anim8.newGrid(8, 8, hudImage:getDimensions())

clcTables = {
  heart = {grid=g,frames={'9-10',2,'10-10',1,'10-10',2}, duration=0.2},
  coin = {grid=tg,frames={'5-8',8}, duration=0.25}
}

clcImages = {
  heart = hudImage,
  coin = tileImage
}

titleImage = love.graphics.newImage("graphics/title.png")
titleImage:setFilter("nearest","nearest")
startImage = love.graphics.newImage("graphics/pressStart.png")
startImage:setFilter("nearest", "nearest")
