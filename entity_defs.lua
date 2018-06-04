playerDefs = {
  hero = {
    -- use the hero.png spritesheet for the graphics
    image = "characters.png",
    x = 16, -- x position on screen
    y = 8 * 16, -- y position on screen
    maxSpeed = 100, -- maxSpeed of the hero
    acc = 350,
    facing = 1, -- 1 for facing right, -1 for facing left
    jump_force = 272,
    yVelocity = 230,
    maxHp = 3,
    hp = 1,
    entityType = "hero",
    frame_width = 16,
    frame_height = 16,
    animations = {
      run =  {frames = {'1-6',20}, duration = 0.1},
      idle = {frames = {'1-3',19}, duration = 0.2},
      jump = {frames = {'1-1',21}, duration = 0.1},
      swim = {frames = {'1-6',22}, duration = 0.1},
      death = {frames = {'5-5',19}, duration = 0.1},
      punch = {frames = {'1-2',23,'4-5',23}, duration = 0.1, onLoop='pauseAtEnd'},
      fall = {frames = {'2-2',20}, duration = 0.1}
    },
    states = {"idle", "run", "jump", "death","punch","fall"},
    default_state = "idle"
  }
}

gProjectileDefs = {
  punch = {
    type = "punch",
    image = characterImage,
    animation = gProjectileGraphics.punch,
    x = 0,
    y = 0,
    facing = 1,
    maxSpeed = 120,
    distance = 100
  },
  kick = {
    type = "kick",
    image = characterImage,
    animation = gProjectileGraphics.kick,
    x = 0,
    y = 0,
    facing = 1,
    maxSpeed = 2.5,
    distance = 100
  }
}

gEffectDefs = {
  coinSparkle = {
    image = itemsImage,
    animation = gEffectGraphics.coinSparkle,
    maxSpeed = 0,
    yVelocity = 0,
    facing = 1,
    gravity = false,
    duration = 0.4
  }
}

gCollectibleDefs = {
  coin = {
    type = "coin",
    image = itemsImage,
    animation = gCollectibleGraphics.coin,
    points = 100
  },
  heart = {
    type = "heart",
    image = hudImage,
    animation = gCollectibleGraphics.heart,
    points = 500
  }
}

gBlockDefs = {
  greenBrick = {
    image = tilesImage,
    animation = gBlockGraphics.greenBrick,
    type = "bonkable",
    gravityFactor = 1
  },
  greenBreak = {
    image = itemsImage,
    animation = gBlockGraphics.greenBreak,
    type = "breakable",
    breakFrames = gBreakFrames.greenBreak
  },
  box = {
    image = itemsImage,
    animation = gBlockGraphics.box,
    type = "breakable",
    breakFrames = gBreakFrames.box,
    moveable = true
  },
  redMove = {
    image = itemsImage,
    animation = gBlockGraphics.redMove,
    type = "solid",
    gravity = true,
    moveable = true
  },
  spikes = {
    type = "death",
    image = itemsImage,
    animation = gBlockGraphics.spikes,
  },
  invisible = {
    type = "invisible",
    image = itemsImage,
    animation = gBlockGraphics.invisible
  }
}

gEnemyDefs = {
  bird = {
    image = "enemies.png",
    x = 32,
    y = 8 * 16,
    maxSpeed = 50,
    facing = -1,
    jump_force = 2.75,
    yVelocity = 2.75,
    maxHp = 1,
    entityType = "enemy",
    frame_width = 16,
    frame_height = 16,
    animations = {
      fly = {frames = {'2-4',7,'3-3',7}, duration = 0.1}
    },
    states = {"fly"},
    default_state = "fly"
  },

  rolly = {
    image = "enemies.png",
    x = 64,
    y = 8 * 16,
    maxSpeed = 80,
    facing = -1,
    jump_force = 0.5,
    yVelocity = 0.5,
    maxHp = 2,
    ledgeBounce = true,
    entityType = "enemy",
    frame_width = 16,
    frame_height = 16,
    animations = {
      roll = {frames = {'1-6',3}, duration = 0.15}
    },
    states = {"roll"},
    default_state = "roll"
  },

  hopper = {
    image = "characters.png",
    x = 0,
    y = 0,
    maxSpeed = 100,
    facing = -1,
    jump_force = 125,
    yVelocity = 125,
    maxHp = 1,
    entityType = "enemy",
    frame_width = 16,
    frame_height = 16,
    animations = {
      start_hop = {frames = {'9-12',17}, duration = 0.1},
      hop = {frames = {'11-12', 17}, duration = 0.1, onLoop = 'pauseAtStart'}
    },
    states = {"start_hop", "hop"},
    default_state = "start_hop"
  },

  popup = {
    image = "characters.png",
    x = 0,
    y = 0,
    maxSpeed = 0,
    facing = 1,
    jump_force = 0,
    yVelocity = 0,
    maxHp = 3,
    entityType = "enemy",
    frame_width = 16,
    frame_height = 16,
    animations = {
      rest = {frames = {'8-8',21}, duration = 0.1},
      active = {frames = {'12-9',21,'10-12',21}, duration = 0.1}
    },
    states = {"rest", "active"},
    default_state = "rest"
  }
}
