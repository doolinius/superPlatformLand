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
      imageheight = 80,
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
      tilecount = 40,
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
      firstgid = 41,
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
      firstgid = 459,
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
      firstgid = 1107,
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
      firstgid = 1111,
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
      firstgid = 1131,
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
    },
    {
      name = "moreSprites",
      firstgid = 1180,
      filename = "moreSprites.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      image = "../graphics/moreSprites.png",
      imagewidth = 384,
      imageheight = 288,
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
      tilecount = 432,
      tiles = {
        {
          id = 0,
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
            }
          }
        },
        {
          id = 3,
          animation = {
            {
              tileid = 3,
              duration = 400
            },
            {
              tileid = 4,
              duration = 400
            }
          }
        },
        {
          id = 5,
          animation = {
            {
              tileid = 6,
              duration = 1000
            },
            {
              tileid = 5,
              duration = 2000
            }
          }
        },
        {
          id = 20,
          animation = {
            {
              tileid = 20,
              duration = 150
            },
            {
              tileid = 21,
              duration = 150
            },
            {
              tileid = 22,
              duration = 150
            }
          }
        },
        {
          id = 24,
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
            },
            {
              tileid = 30,
              duration = 100
            }
          }
        },
        {
          id = 25,
          animation = {
            {
              tileid = 24,
              duration = 150
            },
            {
              tileid = 25,
              duration = 150
            },
            {
              tileid = 73,
              duration = 200
            },
            {
              tileid = 30,
              duration = 150
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
            },
            {
              tileid = 34,
              duration = 100
            },
            {
              tileid = 35,
              duration = 100
            },
            {
              tileid = 36,
              duration = 100
            }
          }
        },
        {
          id = 37,
          animation = {
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
            },
            {
              tileid = 41,
              duration = 100
            },
            {
              tileid = 42,
              duration = 100
            }
          }
        },
        {
          id = 48,
          animation = {
            {
              tileid = 48,
              duration = 200
            },
            {
              tileid = 49,
              duration = 200
            }
          }
        },
        {
          id = 52,
          animation = {
            {
              tileid = 52,
              duration = 400
            },
            {
              tileid = 53,
              duration = 400
            }
          }
        },
        {
          id = 68,
          animation = {
            {
              tileid = 69,
              duration = 100
            },
            {
              tileid = 70,
              duration = 100
            }
          }
        },
        {
          id = 73,
          animation = {
            {
              tileid = 73,
              duration = 100
            },
            {
              tileid = 74,
              duration = 100
            },
            {
              tileid = 75,
              duration = 100
            }
          }
        },
        {
          id = 79,
          animation = {
            {
              tileid = 79,
              duration = 100
            },
            {
              tileid = 80,
              duration = 100
            },
            {
              tileid = 81,
              duration = 100
            },
            {
              tileid = 82,
              duration = 100
            },
            {
              tileid = 83,
              duration = 100
            },
            {
              tileid = 84,
              duration = 100
            }
          }
        },
        {
          id = 85,
          animation = {
            {
              tileid = 85,
              duration = 100
            },
            {
              tileid = 86,
              duration = 100
            },
            {
              tileid = 87,
              duration = 100
            },
            {
              tileid = 88,
              duration = 100
            },
            {
              tileid = 89,
              duration = 100
            },
            {
              tileid = 90,
              duration = 100
            }
          }
        },
        {
          id = 109,
          animation = {
            {
              tileid = 109,
              duration = 200
            },
            {
              tileid = 110,
              duration = 200
            },
            {
              tileid = 111,
              duration = 200
            },
            {
              tileid = 112,
              duration = 200
            },
            {
              tileid = 113,
              duration = 200
            },
            {
              tileid = 114,
              duration = 200
            }
          }
        },
        {
          id = 127,
          animation = {
            {
              tileid = 127,
              duration = 100
            },
            {
              tileid = 128,
              duration = 100
            },
            {
              tileid = 129,
              duration = 100
            },
            {
              tileid = 130,
              duration = 100
            },
            {
              tileid = 131,
              duration = 100
            },
            {
              tileid = 132,
              duration = 100
            }
          }
        },
        {
          id = 133,
          animation = {
            {
              tileid = 133,
              duration = 100
            },
            {
              tileid = 134,
              duration = 200
            },
            {
              tileid = 135,
              duration = 500
            },
            {
              tileid = 136,
              duration = 200
            }
          }
        },
        {
          id = 157,
          animation = {
            {
              tileid = 157,
              duration = 100
            },
            {
              tileid = 158,
              duration = 100
            },
            {
              tileid = 159,
              duration = 100
            },
            {
              tileid = 160,
              duration = 100
            },
            {
              tileid = 161,
              duration = 100
            },
            {
              tileid = 162,
              duration = 100
            }
          }
        },
        {
          id = 271,
          animation = {
            {
              tileid = 271,
              duration = 100
            },
            {
              tileid = 272,
              duration = 100
            },
            {
              tileid = 273,
              duration = 100
            },
            {
              tileid = 274,
              duration = 100
            },
            {
              tileid = 275,
              duration = 100
            },
            {
              tileid = 276,
              duration = 100
            }
          }
        },
        {
          id = 288,
          animation = {
            {
              tileid = 288,
              duration = 100
            },
            {
              tileid = 289,
              duration = 100
            },
            {
              tileid = 290,
              duration = 100
            },
            {
              tileid = 291,
              duration = 100
            }
          }
        },
        {
          id = 295,
          animation = {
            {
              tileid = 295,
              duration = 100
            },
            {
              tileid = 296,
              duration = 100
            },
            {
              tileid = 297,
              duration = 100
            },
            {
              tileid = 298,
              duration = 100
            },
            {
              tileid = 299,
              duration = 100
            },
            {
              tileid = 300,
              duration = 100
            }
          }
        },
        {
          id = 319,
          animation = {
            {
              tileid = 319,
              duration = 100
            },
            {
              tileid = 320,
              duration = 100
            },
            {
              tileid = 321,
              duration = 100
            },
            {
              tileid = 322,
              duration = 100
            },
            {
              tileid = 323,
              duration = 100
            },
            {
              tileid = 324,
              duration = 100
            }
          }
        },
        {
          id = 343,
          animation = {
            {
              tileid = 343,
              duration = 100
            },
            {
              tileid = 344,
              duration = 100
            },
            {
              tileid = 345,
              duration = 100
            },
            {
              tileid = 346,
              duration = 100
            },
            {
              tileid = 347,
              duration = 100
            },
            {
              tileid = 348,
              duration = 100
            }
          }
        },
        {
          id = 367,
          animation = {
            {
              tileid = 367,
              duration = 100
            },
            {
              tileid = 368,
              duration = 100
            },
            {
              tileid = 369,
              duration = 100
            },
            {
              tileid = 370,
              duration = 100
            },
            {
              tileid = 371,
              duration = 100
            },
            {
              tileid = 372,
              duration = 100
            }
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
        459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 459, 460, 461, 462, 463, 464,
        459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 459, 460, 461, 462, 463, 464,
        486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 486, 487, 488, 489, 490, 491,
        513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 513, 514, 515, 516, 517, 518,
        540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 540, 541, 542, 543, 544, 545,
        567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 567, 568, 569, 570, 571, 572,
        594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 594, 595, 596, 597, 598, 599,
        621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 621, 622, 623, 624, 625, 626,
        648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 648, 649, 650, 651, 652, 653,
        675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 675, 676, 677, 678, 679, 680,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 604, 606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        702, 703, 550, 551, 0, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 550, 551, 710, 711, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 702, 703, 704, 705, 706, 707, 550, 551, 710, 711, 0, 0, 261, 0, 0, 0,
        729, 730, 577, 578, 0, 734, 735, 736, 737, 738, 604, 605, 606, 732, 733, 734, 735, 736, 737, 738, 729, 730, 731, 732, 733, 734, 735, 604, 605, 605, 605, 605, 605, 605, 605, 605, 606, 736, 737, 738, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 729, 730, 731, 732, 733, 734, 577, 578, 737, 738, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 729, 730, 731, 732, 733, 734, 735, 579, 579, 738, 729, 730, 731, 579, 579, 734, 577, 578, 737, 738, 0, 0, 261, 0, 0, 0,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 631, 633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 248, 248, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 631, 685, 660, 0, 0, 631, 633, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 248, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 631, 632, 632, 632,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 631, 685, 659, 660, 0, 0, 658, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 248, 0, 0, 0, 0, 0, 248, 249, 249, 249, 249, 249, 249, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 659, 659, 659,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 24, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 631, 685, 659, 659, 687, 632, 632, 685, 660, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 248, 0, 0, 0, 248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 659, 659, 659,
        631, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 633, 0, 0, 0, 0, 0, 631, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 685, 659, 659, 659, 659, 659, 659, 659, 687, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 632, 659, 659, 659,
        658, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 660, 0, 0, 0, 0, 0, 658, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659,
        658, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 660, 0, 0, 0, 0, 0, 658, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659, 659,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 17, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 20, 17, 17, 17, 20, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 1129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1129, 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 199, 0, 199, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 199, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 199, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1131, 0, 0, 0, 0, 0, 0, 0, 0, 1160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
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
        1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107,
        1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107,
        1107, 0, 0, 0, 0, 0, 1107, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1110, 0, 0, 0, 0, 0, 0, 0, 1110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107,
        1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107,
        1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107,
        1107, 0, 0, 0, 0, 1107, 1107, 0, 0, 1107, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 1107, 1107, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107,
        1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 1107, 0, 0, 1107, 1107, 0, 0, 0, 0, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 1107, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 1107, 0, 0, 1107, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 1107, 0, 0, 1107, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1110, 0, 0, 0, 0, 0, 0, 1107, 1108, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 1107, 1107, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 0, 0, 0, 0, 0, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 1107, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1108, 1108, 1108, 1108, 1108, 1108, 1108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
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
