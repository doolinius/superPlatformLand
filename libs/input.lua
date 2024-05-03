--[[
Copyright (c) 2018 SSYGEN

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
]]--

local input_path = (...):match('(.-)[^%.]+$') .. '.'
local Input = {}
Input.__index = Input

Input.all_keys = {
    " ", "return", "escape", "backspace", "tab", "space", "!", "\"", "#", "$", "&", "'", "(", ")", "*", "+", ",", "-", ".", "/", "0", "1", "2", "3", "4",
    "5", "6", "7", "8", "9", ":", ";", "<", "=", ">", "?", "@", "[", "\\", "]", "^", "", "`", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m",
    "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "capslock", "f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9", "f10", "f11", "f12", "printscreen",
    "scrolllock", "pause", "insert", "home", "pageup", "delete", "end", "pagedown", "right", "left", "down", "up", "numlock", "kp/", "kp*", "kp-", "kp+", "kpenter",
    "kp0", "kp1", "kp2", "kp3", "kp4", "kp5", "kp6", "kp7", "kp8", "kp9", "kp.", "kp,", "kp=", "application", "power", "f13", "f14", "f15", "f16", "f17", "f18", "f19",
    "f20", "f21", "f22", "f23", "f24", "execute", "help", "menu", "select", "stop", "again", "undo", "cut", "copy", "paste", "find", "mute", "volumeup", "volumedown",
    "alterase", "sysreq", "cancel", "clear", "prior", "return2", "separator", "out", "oper", "clearagain", "thsousandsseparator", "decimalseparator", "currencyunit",
    "currencysubunit", "lctrl", "lshift", "lalt", "lgui", "rctrl", "rshift", "ralt", "rgui", "mode", "audionext", "audioprev", "audiostop", "audioplay", "audiomute",
    "mediaselect", "brightnessdown", "brightnessup", "displayswitch", "kbdillumtoggle", "kbdillumdown", "kbdillumup", "eject", "sleep", "mouse1", "mouse2", "mouse3",
    "mouse4", "mouse5", "wheelup", "wheeldown", "fdown", "fup", "fleft", "fright", "back", "guide", "start", "leftstick", "rightstick", "l1", "r1", "l2", "r2", "dpup",
    "dpdown", "dpleft", "dpright", "leftx", "lefty", "rightx", "righty", "vdpleft", "vdpright", "vdpup", "vdpdown", "vstart", "vselect", "vfleft", "vfright", "vfup", "vfdown"
}

function Input.new(vpad)
    local self = {}

    self.prev_state = {}
    self.state = {}
    self.binds = {}
    self.functions = {}
    self.repeat_state = {}
    self.sequences = {}

    -- Gamepads... currently only supports 1 gamepad, adding support for more is not that hard, just lazy.
    self.joysticks = love.joystick.getJoysticks()
    self.vpad = vpad or nil

    -- Register callbacks automagically
    -- NOTICE: love.update is overridden here.  This means that Input:update(dt) is always called
    -- Have a good close look at Input:update(dt)
    local callbacks = {'keypressed', 'keyreleased', 'mousepressed', 'mousereleased', 'gamepadpressed', 'gamepadreleased', 'gamepadaxis', 'wheelmoved', 'update'}
    local old_functions = {}
    local empty_function = function() end
    for _, f in ipairs(callbacks) do
      -- get a reference to the love2D callback corresponding to the function name
        old_functions[f] = love[f] or empty_function
      -- create a new version of the callback
        love[f] = function(...)
          -- the new version first calls the old version if it exists
            old_functions[f](...)
          -- then calls the additional code in this library
          -- Now, go look at the callbacks below
            self[f](self, ...)
        end
    end

    return setmetatable(self, Input)
end

-- a key can be bound to either a function or an action
-- a function is a function passed as an argument to bind
-- an action is a string, such as 'fire', or 'select'
function Input:bind(key, action)
  -- if the action type is a function, add it to the internal functions table
    if type(action) == 'function' then self.functions[key] = action; return end
  -- otherwise, add it to the 'binds' table

  -- if the action already exists in the 'binds' table, don't add it again
  -- otherwise, set the bound action to an empty table
    if not self.binds[action] then self.binds[action] = {} end
  -- into the bound action table, insert whichever key corresponds to the action
  -- it would seem that this allows multiple keys to be bound to the same action
  --[[
    self.binds = {
      ['select'] = {'space', 'fdown'},
      ['cancel'] = {'c', 'fright'}
    }
  ]]
    table.insert(self.binds[action], key)
end

-- check to see if an action input was pressed
-- if input:pressed('cancel') then
-- This function also gets called in Input:update() first thing
--    without an action, so the 'else' condition runs
--    This handles calling functions that are bound to actions
function Input:pressed(action)
  -- if an action is passed
    if action then
      -- for each input in the bound action table (e.g., ['select'] = {'space', 'fdown'})
        for _, key in ipairs(self.binds[action]) do
          -- if that input is pressed this frame, but not last frame
            if self.state[key] and not self.prev_state[key] then
              -- return true, that the input has been pressed
                return true
            end
        end

    -- This block will get called in Input:update() every frame
    -- as it is called without an action
    else
      -- for each key in the all_keys table ...
        for _, key in ipairs(Input.all_keys) do
          -- if the key is set to true now, but it wasn't last frame
            if self.state[key] and not self.prev_state[key] then
              -- AND if there is a function that corresponds to that key
                if self.functions[key] then
                  -- call it
                    self.functions[key]()
                end
            end
        end
    end
end

-- checks to see if an input has been released
function Input:released(action)
  -- for each input in the bound action table
    for _, key in ipairs(self.binds[action]) do
      -- if it had previously been down but is not any longer
        if self.prev_state[key] and not self.state[key] then
          -- then it has been released this frame
            return true
        end
    end
end

function Input:sequence(...)
    local sequence = {...}
    if #sequence <= 1 then error("Use :pressed instead if you only need to check 1 action") end
    if type(sequence[#sequence]) ~= 'string' then error("The last argument must be an action") end
    if #sequence % 2 == 0 then error("The number of arguments passed in must be odd") end

    local sequence_key = ''
    for _, seq in ipairs(sequence) do sequence_key = sequence_key .. tostring(seq) end

    if not self.sequences[sequence_key] then
        self.sequences[sequence_key] = {sequence = sequence, current_index = 1}

    else
        if self.sequences[sequence_key].current_index == 1 then
            local action = self.sequences[sequence_key].sequence[self.sequences[sequence_key].current_index]
            for _, key in ipairs(self.binds[action]) do
                if self.state[key] and not self.prev_state[key] then
                    self.sequences[sequence_key].last_pressed = love.timer.getTime()
                    self.sequences[sequence_key].current_index = self.sequences[sequence_key].current_index + 1
                end
            end

        else
            local delay = self.sequences[sequence_key].sequence[self.sequences[sequence_key].current_index]
            local action = self.sequences[sequence_key].sequence[self.sequences[sequence_key].current_index + 1]

            if (love.timer.getTime() - self.sequences[sequence_key].last_pressed) > delay then self.sequences[sequence_key] = nil end
            for _, key in ipairs(self.binds[action]) do
                if self.state[key] and not self.prev_state[key] then
                    if (love.timer.getTime() - self.sequences[sequence_key].last_pressed) <= delay then
                        if self.sequences[sequence_key].current_index + 1 == #self.sequences[sequence_key].sequence then
                            self.sequences[sequence_key] = nil
                            return true
                        else
                            self.sequences[sequence_key].last_pressed = love.timer.getTime()
                            self.sequences[sequence_key].current_index = self.sequences[sequence_key].current_index + 2
                        end
                    else
                        self.sequences[sequence_key] = nil
                    end
                end
            end
        end
    end
end

-- I think these are needed to remove ambiguity, since we want to bind unique inputs
-- however, the face buttons of a gamepad, for example, are 'a', 'y', 'x', 'b' and others
-- This overlaps with actual keyboard inputs, so these tables map a unique input to
-- the input specific to the gamepad, mouse or whatever.  This is why 'fdown' and friends
-- are used for the gamepad face button inputs
local key_to_button = {mouse1 = '1', mouse2 = '2', mouse3 = '3', mouse4 = '4', mouse5 = '5'}
local gamepad_to_button = {fdown = 'a', fup = 'y', fleft = 'x', fright = 'b', back = 'back', guide = 'guide', start = 'start',
                           leftstick = 'leftstick', rightstick = 'rightstick', l1 = 'leftshoulder', r1 = 'rightshoulder',
                           dpup = 'dpup', dpdown = 'dpdown', dpleft = 'dpleft', dpright = 'dpright'}
local axis_to_button = {leftx = 'leftx', lefty = 'lefty', rightx = 'rightx', righty = 'righty', l2 = 'triggerleft', r2 = 'triggerright'}

local vpad_to_button = {vfdown = 'a', vfup = 'y', vfleft = 'x', vfright = 'b', vdpup = 'dpup', vdpdown = 'dpdown', vdpleft = 'dpleft', vdpright = 'dpright'}

-- checks to see if an input is down, using intervals and delays
-- I think the same overall logic is used in all three scenarios
-- it's just that there is a check to see if interval and delay
-- parameters are met as well as the input itself
function Input:down(action, interval, delay)
    if action and delay and interval then
        for _, key in ipairs(self.binds[action]) do
            if self.state[key] and not self.prev_state[key] then
                self.repeat_state[key] = {pressed_time = love.timer.getTime(), delay = delay, interval = interval, delay_stage = true}
                return true
            elseif self.repeat_state[key] and self.repeat_state[key].pressed then
                return true
            end
        end

    elseif action and interval and not delay then
        for _, key in ipairs(self.binds[action]) do
            if self.state[key] and not self.prev_state[key] then
                self.repeat_state[key] = {pressed_time = love.timer.getTime(), delay = 0, interval = interval, delay_stage = false}
                return true
            elseif self.repeat_state[key] and self.repeat_state[key].pressed then
                return true
            end
        end

  -- if interval and delay has not been set
    elseif action and not interval and not delay then
      -- for each input in the bound action table
        for _, key in ipairs(self.binds[action]) do

            if (not gamepad_to_button[key] and (not vpad_to_button[key]) and love.keyboard.isDown(key) or love.mouse.isDown(key_to_button[key] or 0)) then
                return true
            end

            if self.vpad then
              if vpad_to_button[key] then
                return self.state[key]
              end
            end

            -- Supports only 1 gamepad, add more later...
            if self.joysticks[1] then
                if axis_to_button[key] then
                    return self.state[key]
                elseif gamepad_to_button[key] then
                    if self.joysticks[1]:isGamepadDown(gamepad_to_button[key]) then
                        return true
                    end
                end
            end
        end
    end
end

function Input:unbind(key)
    for action, keys in pairs(self.binds) do
        for i = #keys, 1, -1 do
            if key == self.binds[action][i] then
                table.remove(self.binds[action], i)
            end
        end
    end
    if self.functions[key] then
        self.functions[key] = nil
    end
end

function Input:unbindAll()
    self.binds = {}
    self.functions = {}
end

local copy = function(t1)
    local out = {}
    for k, v in pairs(t1) do out[k] = v end
    return out
end

function Input:update()
    self:pressed()
    self.prev_state = copy(self.state)
    self.state['wheelup'] = false
    self.state['wheeldown'] = false

    if self.vpad then
      self.vpad:update()
      -- set new state
      for _, key in ipairs(self.vpad.keys) do
        if self.vpad:isDown(key) then
          self.state[key] = true
        else
          self.state[key] = false
        end
      end
    end

    for k, v in pairs(self.repeat_state) do
        if v then
            v.pressed = false
            local t = love.timer.getTime() - v.pressed_time
            if v.delay_stage then
                if t > v.delay then
                    v.pressed = true
                    v.pressed_time = love.timer.getTime()
                    v.delay_stage = false
                end
            else
                if t > v.interval then
                    v.pressed = true
                    v.pressed_time = love.timer.getTime()
                end
            end
        end
    end
end

-- This will get called in addition to the native Love2D version
function Input:keypressed(key)
  -- if the key has been pressed, the internal state of this key
  -- is set to true
    self.state[key] = true
end

function Input:keyreleased(key)
  -- if the key is released, set the internal state to false
  -- and the repeat_state entry to false
    self.state[key] = false
    self.repeat_state[key] = false
end

local button_to_key = {
    [1] = 'mouse1', [2] = 'mouse2', [3] = 'mouse3', [4] = 'mouse4', [5] = 'mouse5',
    ['l'] = 'mouse1', ['r'] = 'mouse2', ['m'] = 'mouse3', ['x1'] = 'mouse4', ['x2'] = 'mouse5'
}

function Input:mousepressed(x, y, button)
    self.state[button_to_key[button]] = true
end

function Input:mousereleased(x, y, button)
    self.state[button_to_key[button]] = false
    self.repeat_state[button_to_key[button]] = false
end

function Input:wheelmoved(x, y)
    if y > 0 then self.state['wheelup'] = true
    elseif y < 0 then self.state['wheeldown'] = true end
end

local button_to_gamepad = {a = 'fdown', y = 'fup', x = 'fleft', b = 'fright', back = 'back', guide = 'guide', start = 'start',
                           leftstick = 'leftstick', rightstick = 'rightstick', leftshoulder = 'l1', rightshoulder = 'r1',
                           dpup = 'dpup', dpdown = 'dpdown', dpleft = 'dpleft', dpright = 'dpright'}

function Input:gamepadpressed(joystick, button)
    self.state[button_to_gamepad[button]] = true
end

function Input:gamepadreleased(joystick, button)
    self.state[button_to_gamepad[button]] = false
    self.repeat_state[button_to_gamepad[button]] = false
end

local button_to_axis = {leftx = 'leftx', lefty = 'lefty', rightx = 'rightx', righty = 'righty', triggerleft = 'l2', triggerright = 'r2'}

function Input:gamepadaxis(joystick, axis, newvalue)
    self.state[button_to_axis[axis]] = newvalue
end

return setmetatable({}, {__call = function(_, ...) return Input.new(...) end})
