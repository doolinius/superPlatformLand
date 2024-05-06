gColFilters = {
  block = function (item, other)
    return('slide')
  end,
  collectible = function (item, other)
    return('slide')
  end,
  projectile = function (item, other)
    return('slide')
  end,
  character = function (item, other)
    return('slide')
  end
}
--[[
function colFilter(char, other)
  if char.entityType == "projectile" then
    return("cross")
  elseif other.entityType == "collectible" then
    return("cross")
  elseif other.entityType == "enemy" or other.entityType == "hero" then
    return("cross")
  elseif other.entityType == "projectile" then
    return("cross")
  elseif other.entityType == "block" then
    local charX, charY, charW, charH = char:getCollisionRect()
    local charMid = charX + math.floor(charW / 2)
    local blockMid = other.x + 8
    if other.type == "invisible" then
      if math.floor(char.py) >= other.y + 16 then
        return("slide")
      else
        return("cross")
      end
    elseif math.abs(blockMid - charMid) >= (charW/2 + 8) then
      log.trace("outside bounds")
      return("slide")
    elseif math.floor(char.py) > math.floor(char.y) and math.abs(charMid - blockMid) >= 6 then -- remove hardcoded 16
      log.trace("ROUND THAT CORNER")
      log.trace("py: " .. char.py .. " other.y+16:" .. other.y + 16)
      return("cross")
    end
    return("slide")
  else -- if colliding with a block
    if other.properties then
      if other.properties.blockType == "passthrough" then
        if math.floor(char.py) + 16 >= other.y then
          return("cross")
        else
          return("slide")
        end
      elseif other.properties.blockType == "ledge" then
        if char.ledgeBounce then
          return("bounce")
        else
          return("cross")
        end
      else
        return("slide")
      end
    else
      return("slide")
    end
  end
  --[[
  -- handle collision with collectibles and enemies
  if other.type then
    if other.type == "coin" or other.type == "heart" then
      return("cross")
    else
      return("touch")
    end

  -- handle collision with blocks
  elseif other.properties then
    -- if it's solid, just return slide, no questions asked
    if other.properties.blockType == "solid" then
      return("slide")
    -- if it's a passthrough block, check to see if the hero was previously
    -- above the block.  If so, it's a slide collision, otherwise allow him
    -- to cross through
    elseif other.properties.blockType == "passthrough" then
      if math.floor(hero.py) + 16 >= other.y then
        return("cross")
      else
        return("slide")
      end
    -- if it's a breakable block, check to see if hero is hitting it from
    -- the bottom
    elseif other.properties.blockType == "breakable" then
      return("slide")
    elseif other.properties.blockType == "invisible" then
      return("cross")
    else
      return(other.properties.colType)
    end
  else
    --log.trace("UGH... DEFAULT")
    return("slide")
  end
  
end
]]