return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.3",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 106,
  height = 13,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 9,
  backgroundcolor = { 46, 74, 68 },
  properties = {},
  tilesets = {
    {
      name = "items",
      firstgid = 1,
      filename = "items.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "items.png",
      imagewidth = 141,
      imageheight = 96,
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
      terrains = {},
      tilecount = 48,
      tiles = {
        {
          id = 16,
          properties = {
            ["blockType"] = "breakable"
          }
        },
        {
          id = 19,
          properties = {
            ["blockType"] = "pushable"
          }
        },
        {
          id = 21,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 23,
          properties = {
            ["blockType"] = "death"
          }
        },
        {
          id = 32,
          properties = {
            ["blockType"] = "breakable"
          }
        },
        {
          id = 35,
          properties = {
            ["blockType"] = "pushable"
          }
        }
      }
    },
    {
      name = "platform_tiles",
      firstgid = 49,
      filename = "platform_tiles.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "platform_tiles.png",
      imagewidth = 352,
      imageheight = 304,
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
      terrains = {},
      tilecount = 418,
      tiles = {
        {
          id = 7,
          animation = {
            {
              tileid = 7,
              duration = 100
            },
            {
              tileid = 6,
              duration = 100
            }
          }
        },
        {
          id = 9,
          animation = {
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
              tileid = 10,
              duration = 100
            }
          }
        },
        {
          id = 31,
          animation = {
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
            }
          }
        },
        {
          id = 53,
          animation = {
            {
              tileid = 53,
              duration = 100
            },
            {
              tileid = 54,
              duration = 100
            },
            {
              tileid = 55,
              duration = 100
            }
          }
        },
        {
          id = 75,
          animation = {
            {
              tileid = 75,
              duration = 100
            },
            {
              tileid = 76,
              duration = 100
            }
          }
        },
        {
          id = 79,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 80,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 81,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 82,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 83,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 84,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 85,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 86,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 101,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 102,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 103,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 105,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 106,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 107,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 114,
          animation = {
            {
              tileid = 114,
              duration = 100
            },
            {
              tileid = 115,
              duration = 100
            }
          }
        },
        {
          id = 123,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 124,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 125,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 126,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 127,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 128,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 129,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 130,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 132,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 133,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 134,
          properties = {
            ["blockType"] = "breakable"
          }
        },
        {
          id = 135,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 136,
          properties = {
            ["blockType"] = "breakable"
          }
        },
        {
          id = 137,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 145,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 146,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 147,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 148,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 149,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 150,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 151,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 152,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 154,
          properties = {
            ["blockType"] = "breakable"
          }
        },
        {
          id = 155,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 156,
          properties = {
            ["blockType"] = "breakable"
          }
        },
        {
          id = 157,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 158,
          properties = {
            ["type"] = "coin"
          },
          animation = {
            {
              tileid = 158,
              duration = 200
            },
            {
              tileid = 159,
              duration = 200
            },
            {
              tileid = 160,
              duration = 200
            },
            {
              tileid = 161,
              duration = 200
            }
          }
        },
        {
          id = 159,
          properties = {
            ["type"] = "coin"
          }
        },
        {
          id = 160,
          properties = {
            ["type"] = "coin"
          }
        },
        {
          id = 161,
          properties = {
            ["type"] = "coin"
          }
        },
        {
          id = 162,
          animation = {
            {
              tileid = 162,
              duration = 200
            },
            {
              tileid = 163,
              duration = 200
            },
            {
              tileid = 164,
              duration = 200
            },
            {
              tileid = 165,
              duration = 200
            },
            {
              tileid = 166,
              duration = 200
            }
          }
        },
        {
          id = 167,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 168,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 169,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 170,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 171,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 172,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 173,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 174,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 176,
          animation = {
            {
              tileid = 176,
              duration = 100
            },
            {
              tileid = 177,
              duration = 100
            },
            {
              tileid = 178,
              duration = 100
            },
            {
              tileid = 179,
              duration = 100
            },
            {
              tileid = 180,
              duration = 100
            }
          }
        },
        {
          id = 185,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 186,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 187,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 188,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 189,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 190,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 191,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 192,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 193,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 194,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 195,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 196,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 207,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 208,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 209,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 210,
          properties = {
            ["blockType"] = "passthrough"
          }
        },
        {
          id = 214,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 218,
          properties = {
            ["blockType"] = "solid"
          }
        }
      }
    },
    {
      name = "tiles",
      firstgid = 467,
      filename = "tiles.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "tiles.png",
      imagewidth = 432,
      imageheight = 398,
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
      terrains = {
        {
          name = "SpringLand",
          tile = 173,
          properties = {}
        }
      },
      tilecount = 648,
      tiles = {
        {
          id = 25,
          animation = {
            {
              tileid = 25,
              duration = 200
            },
            {
              tileid = 52,
              duration = 200
            }
          }
        },
        {
          id = 26,
          animation = {
            {
              tileid = 26,
              duration = 200
            },
            {
              tileid = 53,
              duration = 200
            }
          }
        },
        {
          id = 172,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 173,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 174,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 186,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 187,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 188,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 199,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 200,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 201,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 213,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 214,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 215,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 226,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 228,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 240,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 242,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 243,
          animation = {
            {
              tileid = 243,
              duration = 300
            },
            {
              tileid = 297,
              duration = 300
            }
          }
        },
        {
          id = 244,
          animation = {
            {
              tileid = 244,
              duration = 300
            },
            {
              tileid = 298,
              duration = 300
            }
          }
        },
        {
          id = 245,
          animation = {
            {
              tileid = 245,
              duration = 300
            },
            {
              tileid = 299,
              duration = 300
            }
          }
        },
        {
          id = 246,
          animation = {
            {
              tileid = 246,
              duration = 300
            },
            {
              tileid = 300,
              duration = 300
            }
          }
        },
        {
          id = 247,
          animation = {
            {
              tileid = 247,
              duration = 300
            },
            {
              tileid = 301,
              duration = 300
            }
          }
        },
        {
          id = 248,
          animation = {
            {
              tileid = 248,
              duration = 300
            },
            {
              tileid = 302,
              duration = 300
            }
          }
        },
        {
          id = 249,
          animation = {
            {
              tileid = 249,
              duration = 300
            },
            {
              tileid = 303,
              duration = 300
            }
          }
        },
        {
          id = 250,
          animation = {
            {
              tileid = 250,
              duration = 300
            },
            {
              tileid = 304,
              duration = 300
            }
          }
        },
        {
          id = 251,
          animation = {
            {
              tileid = 251,
              duration = 300
            },
            {
              tileid = 305,
              duration = 300
            }
          }
        },
        {
          id = 252,
          animation = {
            {
              tileid = 252,
              duration = 300
            },
            {
              tileid = 306,
              duration = 300
            }
          }
        },
        {
          id = 270,
          animation = {
            {
              tileid = 270,
              duration = 300
            },
            {
              tileid = 324,
              duration = 300
            }
          }
        },
        {
          id = 271,
          animation = {
            {
              tileid = 271,
              duration = 300
            },
            {
              tileid = 325,
              duration = 300
            }
          }
        },
        {
          id = 276,
          animation = {
            {
              tileid = 276,
              duration = 300
            },
            {
              tileid = 330,
              duration = 300
            }
          }
        },
        {
          id = 277,
          animation = {
            {
              tileid = 277,
              duration = 300
            },
            {
              tileid = 331,
              duration = 300
            }
          }
        },
        {
          id = 278,
          animation = {
            {
              tileid = 278,
              duration = 300
            },
            {
              tileid = 332,
              duration = 300
            }
          }
        },
        {
          id = 550,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 551,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 552,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 564,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 565,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 566,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 577,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 578,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 579,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 591,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 592,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 593,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 604,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 606,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 618,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 620,
          properties = {
            ["blockType"] = "solid"
          }
        },
        {
          id = 621,
          animation = {
            {
              tileid = 621,
              duration = 300
            },
            {
              tileid = 622,
              duration = 300
            }
          }
        }
      }
    },
    {
      name = "collision",
      firstgid = 1115,
      filename = "collision.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "collision.png",
      imagewidth = 32,
      imageheight = 32,
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
      terrains = {},
      tilecount = 4,
      tiles = {
        {
          id = 0,
          properties = {
            ["blockType"] = "solid",
            ["colType"] = "slide"
          }
        },
        {
          id = 1,
          properties = {
            ["blockType"] = "solid",
            ["colType"] = "touch"
          }
        },
        {
          id = 2,
          properties = {
            ["blockType"] = "solid",
            ["colType"] = "cross"
          }
        },
        {
          id = 3,
          properties = {
            ["blockType"] = "ledge",
            ["colType"] = "bounce"
          }
        }
      }
    },
    {
      name = "hud",
      firstgid = 1119,
      filename = "hud.tsx",
      tilewidth = 8,
      tileheight = 8,
      spacing = 0,
      margin = 0,
      image = "../graphics/hud.png",
      imagewidth = 80,
      imageheight = 16,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 8,
        height = 8
      },
      properties = {},
      terrains = {},
      tilecount = 20,
      tiles = {
        {
          id = 9,
          properties = {
            ["type"] = "heart"
          }
        },
        {
          id = 18,
          properties = {
            ["type"] = "heart"
          },
          animation = {
            {
              tileid = 18,
              duration = 200
            },
            {
              tileid = 19,
              duration = 200
            },
            {
              tileid = 9,
              duration = 200
            }
          }
        },
        {
          id = 19,
          properties = {
            ["type"] = "heart"
          }
        }
      }
    },
    {
      name = "enemies",
      firstgid = 1139,
      filename = "enemies.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../graphics/enemies.png",
      imagewidth = 112,
      imageheight = 112,
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
      terrains = {},
      tilecount = 49,
      tiles = {
        {
          id = 0,
          properties = {
            ["enemyType"] = "hopper"
          },
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
              tileid = 4,
              duration = 100
            }
          }
        },
        {
          id = 1,
          properties = {
            ["enemyType"] = "hopper"
          }
        },
        {
          id = 2,
          properties = {
            ["enemyType"] = "hopper"
          }
        },
        {
          id = 3,
          properties = {
            ["enemyType"] = "hopper"
          }
        },
        {
          id = 4,
          properties = {
            ["enemyType"] = "hopper"
          }
        },
        {
          id = 5,
          properties = {
            ["enemyType"] = "hopper"
          }
        },
        {
          id = 14,
          properties = {
            ["enemyType"] = "rolly"
          },
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
              tileid = 18,
              duration = 100
            },
            {
              tileid = 19,
              duration = 100
            }
          }
        },
        {
          id = 15,
          properties = {
            ["enemyType"] = "rolly"
          }
        },
        {
          id = 16,
          properties = {
            ["enemyType"] = "rolly"
          }
        },
        {
          id = 17,
          properties = {
            ["enemyType"] = "rolly"
          }
        },
        {
          id = 18,
          properties = {
            ["enemyType"] = "rolly"
          }
        },
        {
          id = 19,
          properties = {
            ["enemyType"] = "rolly"
          }
        },
        {
          id = 28,
          properties = {
            ["enemyType"] = "popup"
          }
        },
        {
          id = 29,
          properties = {
            ["enemyType"] = "popup"
          },
          animation = {
            {
              tileid = 32,
              duration = 100
            },
            {
              tileid = 31,
              duration = 100
            },
            {
              tileid = 30,
              duration = 100
            },
            {
              tileid = 29,
              duration = 100
            },
            {
              tileid = 30,
              duration = 100
            },
            {
              tileid = 31,
              duration = 100
            }
          }
        },
        {
          id = 30,
          properties = {
            ["enemyType"] = "popup"
          }
        },
        {
          id = 31,
          properties = {
            ["enemyType"] = "popup"
          }
        },
        {
          id = 32,
          properties = {
            ["enemyType"] = "popup"
          }
        },
        {
          id = 33,
          properties = {
            ["enemyType"] = "popup"
          }
        },
        {
          id = 42,
          properties = {
            ["enemyType"] = "bird"
          },
          animation = {
            {
              tileid = 42,
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
              tileid = 44,
              duration = 100
            },
            {
              tileid = 43,
              duration = 100
            }
          }
        },
        {
          id = 43,
          properties = {
            ["enemyType"] = "bird"
          }
        },
        {
          id = 44,
          properties = {
            ["enemyType"] = "bird"
          }
        },
        {
          id = 45,
          properties = {
            ["enemyType"] = "bird"
          }
        },
        {
          id = 46,
          properties = {
            ["enemyType"] = "bird"
          }
        },
        {
          id = 47,
          properties = {
            ["enemyType"] = "bird"
          }
        },
        {
          id = 48,
          properties = {
            ["enemyType"] = "bird"
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "background",
      x = 0,
      y = 0,
      width = 106,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 467, 468, 469, 470, 471, 472,
        467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 467, 468, 469, 470, 471, 472,
        494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 494, 495, 496, 497, 498, 499,
        521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 521, 522, 523, 524, 525, 526,
        548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 548, 549, 550, 551, 552, 553,
        575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 575, 576, 577, 578, 579, 580,
        602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 602, 603, 604, 605, 606, 607,
        629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 629, 630, 631, 632, 633, 634,
        656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 656, 657, 658, 659, 660, 661,
        683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 683, 684, 685, 686, 687, 688,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "decoration",
      x = 0,
      y = 0,
      width = 106,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 612, 614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        710, 711, 558, 559, 0, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 558, 559, 718, 719, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 710, 711, 712, 713, 714, 715, 558, 559, 718, 719, 0, 0, 269, 0, 0, 0,
        737, 738, 585, 586, 0, 742, 743, 744, 745, 746, 612, 613, 614, 740, 741, 742, 743, 744, 745, 746, 737, 738, 739, 740, 741, 742, 743, 612, 613, 613, 613, 613, 613, 613, 613, 613, 614, 744, 745, 746, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 737, 738, 739, 740, 741, 742, 585, 586, 745, 746, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 737, 738, 739, 740, 741, 742, 743, 587, 587, 746, 737, 738, 739, 587, 587, 742, 585, 586, 745, 746, 0, 0, 269, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "platforms",
      x = 0,
      y = 0,
      width = 106,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639, 641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 256, 256, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639, 693, 668, 0, 0, 639, 641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 256, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639, 640, 640, 640,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639, 693, 667, 668, 0, 0, 666, 668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 256, 0, 0, 0, 0, 0, 256, 257, 257, 257, 257, 257, 257, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 667, 667, 667,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 24, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 639, 693, 667, 667, 695, 640, 640, 693, 668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 667, 667, 667,
        639, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 641, 0, 0, 0, 0, 0, 639, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 693, 667, 667, 667, 667, 667, 667, 667, 695, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 640, 667, 667, 667,
        666, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 668, 0, 0, 0, 0, 0, 666, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667,
        666, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 668, 0, 0, 0, 0, 0, 666, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667, 667,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "blocks",
      x = 0,
      y = 0,
      width = 106,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 33, 0, 0, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 20, 17, 17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 33, 33, 0, 0, 33, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 183, 183, 33, 33, 183, 0, 0, 0, 0, 0, 0, 17, 17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 20, 17, 17, 17, 20, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "collectibles",
      x = 0,
      y = 0,
      width = 106,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1137, 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 207, 0, 207, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 207, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "enemies",
      x = 0,
      y = 0,
      width = 106,
      height = 13,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1139, 0, 0, 0, 0, 0, 0, 0, 0, 1168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "collision",
      x = 0,
      y = 0,
      width = 106,
      height = 13,
      visible = false,
      opacity = 0.5,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115,
        1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115,
        1115, 0, 0, 0, 0, 0, 1115, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1118, 0, 0, 0, 0, 0, 0, 0, 1118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115,
        1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115,
        1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115,
        1115, 0, 0, 0, 0, 1115, 1115, 0, 0, 1115, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 1115, 1115, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115,
        1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 1115, 0, 0, 1115, 1115, 0, 0, 0, 0, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 1115, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 1115, 0, 0, 1115, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 1115, 0, 0, 1115, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1118, 0, 0, 0, 0, 0, 0, 1115, 1116, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 1115, 1115, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 0, 0, 0, 0, 0, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 1115, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 1115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "Spawn Point",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 6,
          name = "Player",
          type = "",
          shape = "rectangle",
          x = 16,
          y = 128,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
