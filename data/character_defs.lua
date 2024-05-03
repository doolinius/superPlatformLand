gCharacterDefs = {
    mr_man = {
        image = 'mr_man.png',
        w = 16, 
        h = 16,
        hitbox = {
            w = 8,
            h = 14,
            ox = 4,
            oy = 2
        },
        velocity = {x=0, y=0, 
            top_x=90, 
            jump_force=250},
        animations = {
            idle = {frames={'1-3', 1}, duration=0.15},
            run = {frames={'1-6', 2}, duration=0.15},
            jump = {frames={1, 3}, duration=0.15},
            fall = {frames={2, 3}, duration=0.15}
        },
        states = {'idle', 'run', 'jump', 'fall'}--,, 'fall', 'punch', 'hit', 'die'}
    }
}