gCollectibleDefs = {
    coin = {
        image = 'pickups/coin.png',
        quad = nil,
        animation = {frames={'1-4', 1}, duration=0.15},
        width = 16,
        height = 16,
        removeEffect = 'yellow_sparkle',
        onCollect = function(c, character)
            gameWorld:addCoin(c) -- GLOBAL
            c.sound:stop()
            c.sound:play()
            c.remove = true
        end
    },
    heart = {},
    
}