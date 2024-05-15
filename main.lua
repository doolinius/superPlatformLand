require('dependencies')
lovebird.port = 4444

function love.load()
    -- set default scaling mode to nearest
    love.graphics.setDefaultFilter('nearest', 'nearest')
    gameFont = love.graphics.newFont('assets/fonts/pressStart2p.ttf', 8)
    love.graphics.setFont(gameFont)

    -- Set useful global variables 
    winWidth, winHeight, flags = love.window.getMode()
    gameWidth = 288
    gameHeight = 208
    gameScale = 3
    gameCanvas = love.graphics.newCanvas(gameWidth, gameHeight)
    gravity = 500

    gameWorld = GameWorld:Create()
    gStateStack = StateStack:Create()
    local level = LevelPlayState:Create('grasslands_test', 'bushly')
    gStateStack:push(level)
    frameNum = 0 
end

function love.update(dt)
    input:update(dt)
    frameNum = frameNum + 1
    gStateStack:update(dt)
    -- comment out to enable web based debugger at http://localhost:4444
    lovebird.update()
end 

function love.draw()
    love.graphics.setCanvas(gameCanvas)
        love.graphics.clear(0, 0, 0, 0)
        gStateStack:draw()
    love.graphics.setCanvas()
    love.graphics.draw(gameCanvas, 0, 0, 0, gameScale, gameScale)
end