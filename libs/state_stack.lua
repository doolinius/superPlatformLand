
CreateBlock = function(stack)
  return {
    enter = function() end,
    exit = function() end,
    handleInput = function(self) end,
    draw = function()
    end,
    update = function(self)
      return false
    end
  }
end

StateStack = {}
StateStack.__index = StateStack
function StateStack:Create()
    local this =
    {
        states = {}
    }

    setmetatable(this, self)
    return this
end

function StateStack:push(state)
    table.insert(self.states, state)
    state:enter()
end

function StateStack:pop()
  local top = self.states[#self.states]
  table.remove(self.states, #self.states)
  --log.trace("exiting top state" .. " " .. (top.stateName or ""))
  top:exit()
  return top
end

function StateStack:top()
    return self.states[#self.states]
end

function StateStack:update(dt)

    -- update them and check input
    -- TODO: WARNING!!  This might break things!!
    -- that's why it's indented improperly.
        local top = self.states[#self.states]
            if not top then
                return
            end
        -- This is where the in-game input is handled
        -- By that, I mean other than the few inputs that are handled
        -- by the Game object, the top state of the gamestack will
        -- handle all other input
        top:handleInput()
    for k = #self.states, 1, -1 do
        local v = self.states[k]
        if v then -- WARNING:  WHOAH... this seems like a nasty hack
          local continue = v:update(dt)
          if not continue then
              break
          end
        end
    end

end

--function StateStack:handleInput()
--  local top = self.states[#self.states]
--  if not top then
--    return
--  else
--    top:handleInput()
--  end
--end

function StateStack:draw()
    for _, v in ipairs(self.states) do
        v:draw()
    end
end
