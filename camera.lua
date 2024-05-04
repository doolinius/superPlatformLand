--[[
  The Camera is an object that exists to create translation coordinates for drawing the game map

  The Camera can follow a game object (usually a moving character), or set to look at a particular
  coordinate.  It can also move from one coordinate to another smoothly. 

]]

Camera = {}
Camera.__index = Camera

function Camera:Create(map, gameWidth, gameHeight, followObject, offset)
  local this = {
    map = map,
    followObject = followObject or nil,
    offset = offset or {x=0,y=0},
    x = 0,
    y = 0,
    minTX = 0,
    minTY = 0,
    maxTX = (map.width * map.tilewidth) - gameWidth,
    maxTY = (map.height * map.tileheight) - gameHeight,
    tweenX = nil,
    tweenY = nil,
    clamp = false -- TODO: make use of this?
  }

  setmetatable(this, self)

  if this.followObject then
    this:follow(this.followObject, this.offset)
  end

  return(this)
end

-- Follow a particular object with x, y coordinates
function Camera:follow(obj, offset)
  self.offset = offset or {x=0,y=0}
  self.followObject = obj
  self.x = self.followObject.x + self.offset.x
  self.y = self.followObject.y + self.offset.y
end

function Camera:followCharacter(char)
  self:follow(char.entity)
end

-- Move the camera to a specific location
function Camera:lookAt(x, y)
  self.x = x
  self.y = y
end

function Camera:moveTo(x, y, duration)
  self.tweenX = Tween:Create(self.x, x, duration, Tween.EaseOutCirc)
  self.tweenY = Tween:Create(self.y, y, duration, Tween.EaseOutCirc)
  --self.followObject = nil
end

function Camera:moveToAndFollow(followObject, duration)
  self:moveTo(followObject.x, followObject.y, duration)
  self:follow(followObject)
end

function Camera:isMoving()
  return (self.tweenX and not self.tweenX:IsFinished() and
          self.tweenY and not self.tweenY:IsFinished())
end

function clamp(val, minVal, maxVal)
  --assert(minVal <= val and val <= maxVal, "value cannot be clamped between provided minimum and maximum")
  return (math.max(minVal, math.min(val, maxVal)))
end

-- Sets the minimum and maximum translation values for any given map/submap
-- Parameters: newMap - the map that the Camera is changing to
function Camera:setBounds(newMap)
    self.minTX = 0 
    self.maxTX = (newMap.width * newMap.tilewidth) - self.gameWidth 
    self.minTY = 0 
    self.maxTY = (newMap.height * newMap.tileheight) - self.gameHeight

    --log.trace("Camera minTX:" .. self.minTX .. " maxTX:" .. self.maxTX)
    --log.trace("Camera minTY:" .. self.minTY .. " maxTY:" .. self.maxTY)

end

-- Get the current translation coordinates for drawing the map
function Camera:transCoords()
  -- calculate what the tx and ty would normally be
  -- The division by 2 is required because the character or object 
  -- the camera is following should be center screen
  local tx = self.x - math.floor(gameWidth / 2)
  local ty = self.y - math.floor(gameHeight / 2)
  -- clamp the tx and ty between current min and max values
  -- negate these values for the true tx and ty
  tx = -(clamp(tx, self.minTX, self.maxTX))
  ty = -(clamp(ty, self.minTY, self.maxTY))
  -- floor them because of the division by 2
  --log.trace("TX: " .. tx .. " TY: " .. ty)
  --return math.floor(tx+0.5), math.floor(ty)
  return tx, ty
  --[[
  local tx = 0
  local ty = 0
  -- if the map's width is smaller than the gameWidth (for something like a small house)
  if self.map.pixelWidth < gameWidth then
    tx = (gameWidth  - self.map.pixelWidth) / 2 -- Center the map horizontally
  elseif self.x > (self.map.pixelWidth - gameWidth / 2) then
    tx = gameWidth - self.map.pixelWidth
  elseif self.x > gameWidth / 2 then
    tx = (gameWidth /2) - self.x
  else
    tx = 0
  end

  -- if the map's height is less than the gameHeight
  if self.map.pixelHeight < gameHeight then
    ty = (gameHeight  - self.map.pixelHeight) / 2 -- Center the map vertically
  elseif self.y > (self.map.pixelHeight - gameHeight / 2) then
    ty = gameHeight - self.map.pixelHeight
  elseif self.y > gameHeight / 2 then
    ty = (gameHeight / 2) - self.y
  else
    ty = 0
  end
  ]]
end

function Camera:update(dt)
  if self.followObject and not self:isMoving() then
    --log.trace("Not moving.")
    self.x = self.followObject.x + self.offset.x
    self.y = self.followObject.y + self.offset.y
  elseif self:isMoving() then
    --log.trace("Uhh.. moving???")
    self.tweenX:Update(dt)
    self.tweenY:Update(dt)
    self.x = math.floor(self.tweenX:Value())
    self.y = math.floor(self.tweenY:Value())
  end
end
