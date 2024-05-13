gEffectDefs = {
    silver_sparkle = {
        image = 'effects/silver_parkle.png',
        width = 16,
        height = 16,
        animation = {frames={'1-5', 1}, duration=0.15, onLoop='pauseAtEnd'},
        duration = 5 * 0.15
    },
    yellow_sparkle = {
        image = 'effects/yellow_sparkle.png',
        width = 16,
        height = 16,
        animation = {frames={'1-5', 1}, duration=0.15, onLoop='pauseAtEnd'},
        duration = 5 * 0.15,
        velocity = {y=-30}
    },
    dust = {
        image = 'effects/dust.png',
        width = 16,
        height = 16,
        animation = {frames={'1-3', 1}, duration=0.15, onLoop='pauseAtEnd'},
        duration = 6 * 0.15
    },
    poof = {
        image = 'effects/poof.png',
        width = 16,
        height = 16,
        animation = {frames={'1-3', 1}, duration=0.15, onLoop='pauseAtEnd'},
        duration = 8 * 0.15
    },
    explosion = {
        image = 'effects/explosion.png',
        width = 16,
        height = 16,
        animation = {frames={'1-3', 1}, duration=0.15, onLoop='pauseAtEnd'},
        duration = 8 * 0.15
    },
    dress_toss = {
        image = 'effects/dress.png',
        width = 16,
        height = 16,
        animation = {frames={'1-1', 1}, duration=1, onLoop='pauseAtEnd'},
        duration = 1.5,
        gravityEffect = 1.0
    }
}