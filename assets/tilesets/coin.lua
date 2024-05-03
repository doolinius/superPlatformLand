return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.10.2",
  name = "coin",
  class = "",
  tilewidth = 16,
  tileheight = 16,
  spacing = 0,
  margin = 0,
  columns = 4,
  image = "../graphics/pickups/coin.png",
  imagewidth = 64,
  imageheight = 16,
  objectalignment = "unspecified",
  tilerendersize = "tile",
  fillmode = "stretch",
  tileoffset = {
    x = 0,
    y = 0
  },
  grid = {
    orientation = "orthogonal",
    width = 16,
    height = 16
  },
  properties = {},
  wangsets = {},
  tilecount = 4,
  tiles = {
    {
      id = 0,
      type = "collectible",
      animation = {
        {
          tileid = 0,
          duration = 100
        },
        {
          tileid = 1,
          duration = 100
        },
        {
          tileid = 2,
          duration = 100
        },
        {
          tileid = 3,
          duration = 100
        }
      }
    }
  }
}
