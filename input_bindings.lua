--[[
input = Input()
function love.joystickadded(joystick)
    input.joysticks = love.joystick.getJoysticks()
end

co
-- input:bind('key/button', 'actionlabel')
-- character input

input:bind('m', 'mark')

input:bind('dpleft', 'left')
input:bind('dpright', 'right')
input:bind('a', 'left')
input:bind('d', 'right')
input:bind('s', 'down')
input:bind('w', 'up')
input:bind('m', 'action')
input:bind('p', 'special')
input:bind('space', 'jump')
input:bind('fleft', 'jump')
input:bind('fdown', 'jump')
input:bind('f', 'attack')

-- gamepad input bindings
--input:bind('dpleft', 'left')

-- game input
input:bind('tab', 'pause')
input:bind('2', 'screenshot')
]]

local config = {
    controls = {
        left = {'key:left', 'key:a', 'axis:leftx-', 'button:dpleft'},
        right = {'key:right', 'key:d', 'axis:leftx+', 'button:dpright'},
        up = {'key:up', 'key:w', 'axis:lefty-', 'button:dpup'},
        down = {'key:down', 'key:s', 'axis:lefty+', 'button:dpdown'},
        jump = {'key:space', 'button:a'},
        special = {'key:p', 'button:y'},
        pause = {'key:tab'},
        mark = {'key:m'}
    },
    joystick = love.joystick.getJoysticks()[1]
}

input = baton.new(config)