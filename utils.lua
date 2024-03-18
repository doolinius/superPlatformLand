

-- a function to calculate the X direction overlap distance (in pixels) between
-- two rectangles
function overlap(min1, w1, min2, w2)
  local max1 = min1 + w1
  local max2 = min2 + w2
  return math.max(0, math.min(max1, max2) - math.max(min1, min2))
end
