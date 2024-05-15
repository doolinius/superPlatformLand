gCharacterDefs = {
    mr_man = {
        image = 'characters/mr_man.png',
        width = 16, 
        height = 16,
        hitbox = {
            width = 8,
            height = 14,
            ox = 4,
            oy = 2
        },
        velocity = {x=0, y=0, 
            top_x=90, 
            jump_force=230},
        animations = {
            idle = {frames={'1-3', 1}, duration=0.15},
            run = {frames={'1-6', 2}, duration=0.15},
            jump = {frames={1, 3}, duration=0.15},
            fall = {frames={2, 3}, duration=0.15},
            hit = {frames={5,1}, duration=1}
        },
        startingState = 'idle',
        states = {'idle', 'run', 'jump', 'fall'}--,, 'fall', 'punch', 'hit', 'die'}
    },
    princess_sera = {
        image = 'characters/princess_sera.png',
        width = 16, 
        height = 32,
        hitbox = {
            width = 10,
            height = 19,
            ox = 3,
            oy = 12
        },
        velocity = {x=0, y=0, 
            top_x=80, 
            jump_force=250},
        framesets = {
            dress = {
                idle = {frames={1,1}, duration=1},
                run = {frames={'3-4', 1}, duration=0.25},
                jump = {frames={5,1}, duration=1},
                fall = {frames={6,1}, duration=1},
                float = {frames={'11-12', 3}, duration=0.5},
                get_serious = {frames={'3-4',2}, duration=0.2, onLoop='pauseAtEnd'}
            },
            normal = {
                idle = {frames={'7-9', 1}, duration=0.15},
                run = {frames={'7-12', 2}, duration=0.15},
                jump = {frames={12, 1}, duration=0.15},
                fall = {frames={1, 2}, duration=0.15}
            }
        },
        status = {
            dress = true
        },
        startingFrameset = 'dress',
        startingAnimation = 'idle',
        startingState = 'idle',
        states = {'idle', 'run', 'jump', 'fall', 'float', 'get_serious'},--,, 'fall', 'punch', 'hit', 'die'}
        special = function(char)
            if char.status.dress == true then
                char.controller:change('get_serious')
            end
        end
    },
    bushly = {
        image = 'characters/bushly.png',
        width = 16, 
        height = 16,
        hitbox = {
            width = 8,
            height = 12,
            ox = 4,
            oy = 4
        },
        velocity = {x=0, y=0, 
            top_x=120, 
            jump_force=275},
        status = {
            charged = false
        },
        animations = {
            idle = {frames={'1-2', 1}, duration=0.25},
            run = {frames={'1-6', 2}, duration=0.1},
            jump = {frames={4, 1}, duration=0.15},
            fall = {frames={5, 1}, duration=0.15},
            crouch = {frames={'1-4', 3}, duration=0.05, onLoop='pauseAtEnd'}
        },
        startingState = 'idle',
        states = {'idle', 'run', 'jump', 'fall', 'crouch'}--,, 'fall', 'punch', 'hit', 'die'}
    },
    bumpy = {
        image = 'characters/bumpy.png',
        width = 16, 
        height = 16,
        hitbox = {
            width = 12,
            height = 12,
            ox = 2,
            oy = 3
        },
        velocity = {x=0, y=0, 
            top_x=75, 
            jump_force=230},
        status = {
            charged = false
        },
        animations = {
            idle = {frames={'1-3', 1}, duration=0.25},
            run = {frames={'2-7', 2}, duration=0.15},
            jump = {frames={4, 1}, duration=0.15},
            fall = {frames={6, 1}, duration=0.15},
            bot_slam = {frames={}, duration={0.25, 1}, onLoop='pauseAtEnd'}
        },
        startingState = 'idle',
        states = {'idle', 'run', 'jump', 'fall'}--,, 'fall', 'punch', 'hit', 'die'}
    },
}