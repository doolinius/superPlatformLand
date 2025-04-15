return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 200,
  height = 30,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 15,
  nextobjectid = 163,
  properties = {
    ["bg_music"] = "bg_music2",
    ["name"] = "Sunny Day",
    ["time_limit"] = 400
  },
  tilesets = {
    {
      name = "coin",
      firstgid = 1,
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
    },
    {
      name = "health_kit",
      firstgid = 5,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 1,
      image = "../graphics/pickups/health_kit.png",
      imagewidth = 16,
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
      tilecount = 1,
      tiles = {
        {
          id = 0,
          type = "collectible"
        }
      }
    },
    {
      name = "heart",
      firstgid = 6,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "../graphics/pickups/heart.png",
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
    },
    {
      name = "presents",
      firstgid = 10,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 3,
      image = "../graphics/pickups/presents.png",
      imagewidth = 48,
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
      tilecount = 3,
      tiles = {
        {
          id = 0,
          type = "collectible"
        },
        {
          id = 1,
          type = "collectible"
        },
        {
          id = 2,
          type = "collectible"
        }
      }
    },
    {
      name = "bubs",
      firstgid = 13,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "../graphics/characters/bubs.png",
      imagewidth = 96,
      imageheight = 128,
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
      tilecount = 48,
      tiles = {
        {
          id = 0,
          type = "enemy"
        },
        {
          id = 12,
          type = "enemy"
        },
        {
          id = 24,
          type = "enemy"
        },
        {
          id = 36,
          type = "enemy"
        }
      }
    },
    {
      name = "jumpy_nero_gloppy",
      firstgid = 61,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "../graphics/characters/jumpy_nero_gloppy.png",
      imagewidth = 96,
      imageheight = 128,
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
      tilecount = 48,
      tiles = {
        {
          id = 0,
          type = "enemy",
          animation = {
            {
              tileid = 0,
              duration = 2000
            },
            {
              tileid = 1,
              duration = 100
            }
          }
        },
        {
          id = 6,
          type = "enemy",
          animation = {
            {
              tileid = 6,
              duration = 2000
            },
            {
              tileid = 7,
              duration = 100
            }
          }
        },
        {
          id = 12,
          type = "enemy",
          animation = {
            {
              tileid = 12,
              duration = 2000
            },
            {
              tileid = 13,
              duration = 100
            }
          }
        },
        {
          id = 18,
          type = "enemy",
          animation = {
            {
              tileid = 18,
              duration = 100
            },
            {
              tileid = 19,
              duration = 100
            },
            {
              tileid = 20,
              duration = 100
            },
            {
              tileid = 21,
              duration = 100
            },
            {
              tileid = 22,
              duration = 100
            },
            {
              tileid = 23,
              duration = 100
            }
          }
        },
        {
          id = 24,
          type = "enemy",
          animation = {
            {
              tileid = 24,
              duration = 100
            },
            {
              tileid = 25,
              duration = 100
            },
            {
              tileid = 26,
              duration = 100
            },
            {
              tileid = 27,
              duration = 100
            },
            {
              tileid = 28,
              duration = 100
            },
            {
              tileid = 29,
              duration = 100
            }
          }
        },
        {
          id = 30,
          type = "enemy",
          animation = {
            {
              tileid = 30,
              duration = 100
            },
            {
              tileid = 34,
              duration = 100
            },
            {
              tileid = 33,
              duration = 100
            },
            {
              tileid = 32,
              duration = 100
            },
            {
              tileid = 31,
              duration = 100
            },
            {
              tileid = 32,
              duration = 100
            },
            {
              tileid = 33,
              duration = 100
            },
            {
              tileid = 34,
              duration = 100
            }
          }
        },
        {
          id = 36,
          type = "enemy",
          animation = {
            {
              tileid = 36,
              duration = 100
            },
            {
              tileid = 40,
              duration = 100
            },
            {
              tileid = 39,
              duration = 100
            },
            {
              tileid = 38,
              duration = 100
            },
            {
              tileid = 37,
              duration = 100
            },
            {
              tileid = 38,
              duration = 100
            },
            {
              tileid = 39,
              duration = 100
            },
            {
              tileid = 40,
              duration = 100
            }
          }
        },
        {
          id = 42,
          type = "enemy",
          animation = {
            {
              tileid = 42,
              duration = 100
            },
            {
              tileid = 46,
              duration = 100
            },
            {
              tileid = 45,
              duration = 100
            },
            {
              tileid = 44,
              duration = 100
            },
            {
              tileid = 43,
              duration = 100
            },
            {
              tileid = 44,
              duration = 100
            },
            {
              tileid = 45,
              duration = 100
            },
            {
              tileid = 46,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "chichi",
      firstgid = 109,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 7,
      image = "../graphics/characters/chichi.png",
      imagewidth = 112,
      imageheight = 64,
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
      tilecount = 28,
      tiles = {
        {
          id = 0,
          type = "enemy",
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
            },
            {
              tileid = 2,
              duration = 100
            },
            {
              tileid = 1,
              duration = 100
            }
          }
        },
        {
          id = 7,
          type = "enemy",
          animation = {
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 8,
              duration = 100
            },
            {
              tileid = 9,
              duration = 100
            },
            {
              tileid = 10,
              duration = 100
            },
            {
              tileid = 9,
              duration = 100
            },
            {
              tileid = 8,
              duration = 100
            }
          }
        },
        {
          id = 14,
          type = "enemy",
          animation = {
            {
              tileid = 14,
              duration = 100
            },
            {
              tileid = 15,
              duration = 100
            },
            {
              tileid = 16,
              duration = 100
            },
            {
              tileid = 17,
              duration = 100
            },
            {
              tileid = 16,
              duration = 100
            },
            {
              tileid = 15,
              duration = 100
            }
          }
        },
        {
          id = 21,
          type = "enemy",
          animation = {
            {
              tileid = 21,
              duration = 100
            },
            {
              tileid = 22,
              duration = 100
            },
            {
              tileid = 23,
              duration = 100
            },
            {
              tileid = 24,
              duration = 100
            },
            {
              tileid = 23,
              duration = 100
            },
            {
              tileid = 22,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "round_dudes",
      firstgid = 137,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 7,
      image = "../graphics/characters/round_dudes.png",
      imagewidth = 112,
      imageheight = 112,
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
      tilecount = 49,
      tiles = {
        {
          id = 7,
          type = "enemy",
          animation = {
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 8,
              duration = 100
            },
            {
              tileid = 9,
              duration = 100
            },
            {
              tileid = 10,
              duration = 100
            },
            {
              tileid = 11,
              duration = 100
            },
            {
              tileid = 12,
              duration = 100
            }
          }
        },
        {
          id = 21,
          type = "enemy",
          animation = {
            {
              tileid = 21,
              duration = 100
            },
            {
              tileid = 22,
              duration = 100
            },
            {
              tileid = 23,
              duration = 100
            },
            {
              tileid = 24,
              duration = 100
            },
            {
              tileid = 25,
              duration = 100
            },
            {
              tileid = 26,
              duration = 100
            }
          }
        },
        {
          id = 28,
          type = "enemy",
          animation = {
            {
              tileid = 28,
              duration = 200
            },
            {
              tileid = 29,
              duration = 200
            },
            {
              tileid = 30,
              duration = 200
            },
            {
              tileid = 31,
              duration = 200
            }
          }
        },
        {
          id = 42,
          type = "enemy",
          animation = {
            {
              tileid = 42,
              duration = 150
            },
            {
              tileid = 43,
              duration = 150
            },
            {
              tileid = 44,
              duration = 150
            },
            {
              tileid = 45,
              duration = 150
            },
            {
              tileid = 46,
              duration = 150
            },
            {
              tileid = 47,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "diver_fish",
      firstgid = 186,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 6,
      image = "../graphics/characters/diver_fish.png",
      imagewidth = 96,
      imageheight = 48,
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
      tilecount = 18,
      tiles = {
        {
          id = 0,
          type = "enemy",
          animation = {
            {
              tileid = 0,
              duration = 150
            },
            {
              tileid = 1,
              duration = 150
            },
            {
              tileid = 2,
              duration = 150
            },
            {
              tileid = 3,
              duration = 150
            }
          }
        },
        {
          id = 6,
          type = "enemy",
          animation = {
            {
              tileid = 6,
              duration = 150
            },
            {
              tileid = 7,
              duration = 150
            },
            {
              tileid = 8,
              duration = 150
            },
            {
              tileid = 9,
              duration = 150
            }
          }
        },
        {
          id = 12,
          type = "enemy",
          animation = {
            {
              tileid = 12,
              duration = 150
            },
            {
              tileid = 13,
              duration = 150
            },
            {
              tileid = 14,
              duration = 150
            },
            {
              tileid = 15,
              duration = 150
            }
          }
        }
      }
    },
    {
      name = "blocks_16x16",
      firstgid = 204,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 11,
      image = "../graphics/tilesets/blocks_tiles/blocks.png",
      imagewidth = 176,
      imageheight = 128,
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
      tilecount = 88,
      tiles = {
        {
          id = 0,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "grey_crumble"
          }
        },
        {
          id = 1,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 2,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 3,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 4,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 5,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 6,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 7,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 8,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 9,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 10,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 11,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "tan_crumble"
          }
        },
        {
          id = 12,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 13,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 14,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 15,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 16,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 17,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 18,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 19,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 20,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 21,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 22,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_brick_breakable"
          }
        },
        {
          id = 23,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_brick"
          }
        },
        {
          id = 24,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 25,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "ice"
          }
        },
        {
          id = 26,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 27,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "dk_green_brick_breakable"
          }
        },
        {
          id = 28,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "dk_green_brick"
          }
        },
        {
          id = 29,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 30,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "grey_brick_breakable"
          }
        },
        {
          id = 31,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "grey_brick"
          }
        },
        {
          id = 32,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 33,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick_breakable"
          }
        },
        {
          id = 34,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 35,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 36,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "ice_spikes"
          }
        },
        {
          id = 37,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "ice_breakable"
          }
        },
        {
          id = 38,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick_breakable"
          }
        },
        {
          id = 39,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 40,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 41,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "brown_brick_breakable"
          }
        },
        {
          id = 42,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "brown_brick"
          }
        },
        {
          id = 43,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 44,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 45,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 46,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 47,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 48,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 49,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 50,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 51,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 52,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 53,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 54,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 55,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 56,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 57,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 58,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 59,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 60,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 61,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 62,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 63,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 64,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 65,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 66,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 67,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 68,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 69,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 70,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "dead"
          }
        },
        {
          id = 77,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 78,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 79,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 80,
          type = "block",
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        }
      }
    },
    {
      name = "blocks_thin",
      firstgid = 292,
      class = "",
      tilewidth = 16,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      columns = 11,
      image = "../graphics/tilesets/blocks_tiles/blocks.png",
      imagewidth = 176,
      imageheight = 128,
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
        height = 8
      },
      properties = {},
      wangsets = {},
      tilecount = 176,
      tiles = {
        {
          id = 6,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 8,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 28,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 30,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 46,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 48,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 51,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 54,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 68,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 73,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 76,
          type = "block",
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        }
      }
    },
    {
      name = "grassland_terrain",
      firstgid = 468,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 17,
      image = "../graphics/tilesets/grassland/grassland_terrain.png",
      imagewidth = 272,
      imageheight = 320,
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
      tilecount = 340,
      tiles = {
        {
          id = 190,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 191,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 192,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 198,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 222,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 223,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 227,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 228,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 231,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 232,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 233,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 234,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        },
        {
          id = 236,
          objectGroup = {
            type = "objectgroup",
            draworder = "index",
            id = 2,
            name = "",
            class = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            parallaxx = 1,
            parallaxy = 1,
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "terrain",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 16,
                height = 7,
                rotation = 0,
                visible = true,
                properties = {
                  ["collidable"] = true
                }
              }
            }
          }
        }
      }
    },
    {
      name = "grassland_entities",
      firstgid = 808,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 20,
      image = "../graphics/tilesets/grassland/grassland_entities.png",
      imagewidth = 320,
      imageheight = 112,
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
      tilecount = 140,
      tiles = {}
    }
  },
  layers = {
    {
      type = "imagelayer",
      image = "../graphics/tilesets/grassland/bg/5_sky.png",
      id = 7,
      name = "bg6",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = true,
      repeaty = true,
      properties = {}
    },
    {
      type = "imagelayer",
      image = "../graphics/tilesets/grassland/bg/4_clouds_distant.png",
      id = 6,
      name = "bg4",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 272,
      parallaxx = 0.15,
      parallaxy = 1,
      repeatx = true,
      repeaty = false,
      properties = {}
    },
    {
      type = "imagelayer",
      image = "../graphics/tilesets/grassland/bg/3_clouds.png",
      id = 5,
      name = "bg3",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 272,
      parallaxx = 0.2,
      parallaxy = 1,
      repeatx = true,
      repeaty = false,
      properties = {}
    },
    {
      type = "imagelayer",
      image = "../graphics/tilesets/grassland/bg/2_hills.png",
      id = 4,
      name = "bg2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 272,
      parallaxx = 0.3,
      parallaxy = 1,
      repeatx = true,
      repeaty = false,
      properties = {}
    },
    {
      type = "imagelayer",
      image = "../graphics/tilesets/grassland/bg/1_foreground.png",
      id = 3,
      name = "bg1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 272,
      parallaxx = 0.5,
      parallaxy = 1,
      repeatx = true,
      repeaty = false,
      properties = {}
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 200,
      height = 30,
      id = 1,
      name = "terrain",
      class = "terrain",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["collidable"] = false
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 0, 0, 0, 0, 0, 211, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 275, 275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 658, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 675, 693, 693, 693, 693, 778, 693, 693, 693, 693, 693, 693, 693, 778, 693, 693, 693, 693, 693, 693, 693, 778, 693, 677, 0, 698, 699, 702, 0, 0, 0, 698, 699, 702, 0, 0, 0, 698, 699, 702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 658, 691, 692, 693, 693, 693, 693, 693, 693, 778, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 658, 659, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 675, 693, 693, 693, 778, 693, 693, 693, 693, 693, 693, 693, 693, 778, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 275, 675, 676, 677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 704, 0, 0, 0, 0, 0, 0, 0, 0, 658, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 693, 778, 677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 675, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 676, 677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 200,
      height = 30,
      id = 2,
      name = "decoration",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 837, 838, 839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 857, 858, 859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 909, 0, 877, 878, 879, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "entities",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 91,
          name = "",
          type = "spawn_point",
          shape = "point",
          x = 32,
          y = 448,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 93,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 64,
          y = 416,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 94,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 592,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 95,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 608,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 96,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 608,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 97,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 624,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 98,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 640,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 99,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 656,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 100,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 528,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "brown_brick_breakable"
          }
        },
        {
          id = 101,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 544,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "brown_brick_breakable"
          }
        },
        {
          id = 102,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 560,
          y = 352,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = true,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "brown_brick_breakable"
          }
        },
        {
          id = 103,
          name = "",
          type = "collectible",
          shape = "rectangle",
          x = 416,
          y = 320,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["points"] = 50,
            ["sound"] = "coin",
            ["type"] = "coin"
          }
        },
        {
          id = 104,
          name = "",
          type = "collectible",
          shape = "rectangle",
          x = 256,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["points"] = 50,
            ["sound"] = "coin",
            ["type"] = "coin"
          }
        },
        {
          id = 105,
          name = "",
          type = "collectible",
          shape = "rectangle",
          x = 288,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["points"] = 50,
            ["sound"] = "coin",
            ["type"] = "coin"
          }
        },
        {
          id = 106,
          name = "",
          type = "collectible",
          shape = "rectangle",
          x = 320,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["points"] = 50,
            ["sound"] = "coin",
            ["type"] = "coin"
          }
        },
        {
          id = 107,
          name = "",
          type = "collectible",
          shape = "rectangle",
          x = 352,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["points"] = 50,
            ["sound"] = "coin",
            ["type"] = "coin"
          }
        },
        {
          id = 108,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 672,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 110,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 688,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 111,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 704,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 112,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 720,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 113,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 736,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 114,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 752,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 115,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 768,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 116,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 784,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 117,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 800,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 118,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 816,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 119,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 832,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 120,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 848,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 129,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 256,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 300,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_solid_thin"
          }
        },
        {
          id = 130,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 272,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 300,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_solid_thin"
          }
        },
        {
          id = 132,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 288,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 300,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_solid_thin"
          }
        },
        {
          id = 133,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 304,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 300,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_solid_thin"
          }
        },
        {
          id = 134,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 320,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 300,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_solid_thin"
          }
        },
        {
          id = 135,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 336,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 300,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_solid_thin"
          }
        },
        {
          id = 136,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 352,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 300,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "orange_solid_thin"
          }
        },
        {
          id = 137,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 512,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_solid_thin"
          }
        },
        {
          id = 138,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 496,
          y = 344,
          width = 16,
          height = 8,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = true,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_solid_thin"
          }
        },
        {
          id = 143,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 864,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 213,
          visible = true,
          properties = {
            ["bonkable"] = false,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = true,
            ["movable"] = false,
            ["type"] = "spikes"
          }
        },
        {
          id = 144,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 928,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 145,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 944,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 146,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 976,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 147,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1008,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 148,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1024,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 149,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1072,
          y = 368,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 150,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1104,
          y = 368,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 151,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1168,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 152,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1184,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 153,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1216,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 154,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 1232,
          y = 400,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 238,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "green_brick"
          }
        },
        {
          id = 155,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 272,
          y = 288,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = { id = 156 },
            ["crumbling"] = false,
            ["friction"] = 1,
            ["invisible"] = true,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["type"] = "red_brick"
          }
        },
        {
          id = 157,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 80,
          y = 416,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 283,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 158,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 144,
          y = 384,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 283,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        },
        {
          id = 159,
          name = "",
          type = "block",
          shape = "rectangle",
          x = 112,
          y = 368,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 283,
          visible = true,
          properties = {
            ["bonkable"] = true,
            ["breakable"] = false,
            ["contains"] = "none",
            ["crumbling"] = false,
            ["friction"] = 1,
            ["jump_through"] = false,
            ["lethal"] = false,
            ["movable"] = false,
            ["replacement"] = "dead",
            ["type"] = "look"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 9,
      name = "other",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 156,
          name = "",
          type = "collectible",
          shape = "rectangle",
          x = 272,
          y = 304,
          width = 16,
          height = 16,
          rotation = 0,
          gid = 1,
          visible = true,
          properties = {
            ["points"] = 50,
            ["sound"] = "coin",
            ["type"] = "coin"
          }
        }
      }
    },
    {
      type = "imagelayer",
      image = "",
      id = 10,
      name = "fg1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = false,
      repeaty = false,
      properties = {}
    },
    {
      type = "imagelayer",
      image = "",
      id = 11,
      name = "fg2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = false,
      repeaty = false,
      properties = {
        ["music"] = "",
        ["name"] = "",
        ["time"] = 0
      }
    }
  }
}
