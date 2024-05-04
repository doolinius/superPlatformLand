
input = Input()
function love.joystickadded(joystick)
    input.joysticks = love.joystick.getJoysticks()
end

-- input:bind('key/button', 'actionlabel')
-- character input

input:bind('dpleft', 'left')
input:bind('dpright', 'right')
input:bind('a', 'left')
input:bind('d', 'right')
input:bind('space', 'jump')
input:bind('fleft', 'jump')
input:bind('fdown', 'jump')
input:bind('f', 'attack')

-- gamepad input bindings
--input:bind('dpleft', 'left')

-- game input
input:bind('tab', 'pause')
input:bind('2', 'screenshot')