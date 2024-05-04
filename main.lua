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
    gameScale = 2
    gameCanvas = love.graphics.newCanvas(gameWidth, gameHeight)
    gravity = 500

    --gameWorld = GameWorld:Create()
    --gStateStack = StateStack:Create()
    --local level = LevelPlayState:Create('grasslands_test', 'mr_man')
    --gStateStack:push(level)

    e = Effect:new(gEffects.yellow_sparkle, 10, 10)

    map = sti('assets/maps/grasslands_test.lua', {'bump'})

    local obj
    local obj2
    for _, o in pairs(map.objects) do 
        
        if o.type == "block" then 
            obj = o
        end
        if o.type == "collectible" then 
            obj2 = o
        end
    end

    b = Block:new(obj)
    b.position.x = 50 
    b.position.y = 50

    c = Collectible:new(obj2)
    c.position.x = 100
    c.position.y = 100

end

function love.update(dt)
    b:update(dt)
    e:update(dt)
    c:update(dt)
    --level:update(dt)
    --gStateStack:update(dt)
    -- comment out to enable web based debugger at http://localhost:4444
    lovebird.update()
end 

function love.draw()
    --level:draw()
    love.graphics.setCanvas(gameCanvas)
        love.graphics.clear(0, 0, 0, 0)
        e:draw()
        b:draw()
        c:draw()
        --gStateStack:draw()
    love.graphics.setCanvas()
    --love.graphics.scale(gameScale)
    love.graphics.draw(gameCanvas, 0, 0, 0, gameScale, gameScale)
end