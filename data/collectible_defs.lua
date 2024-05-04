gCollectibleDefs = {
    coin = {
        image = 'pickups/coin.png',
        quad = nil,
        animation = {frames={'1-4', 1}, duration=0.15},
        width = 16,
        height = 16,
        onCollect = function(c, target)
            target:addCoin(c)
            c.sound:stop()
            c.sound:play()
        end
    },
    heart = {},
    
}