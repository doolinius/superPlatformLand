playerDefs = {
  hero = {
    -- use the hero.png spritesheet for the graphics
    image = "hero.png",
    x = 16, -- x position on screen
    y = 8 * 16, -- y position on screen
    speed = 2, -- speed of the hero
    facing = 1, -- 1 for facing right, -1 for facing left
    jump_force = 3.2,
    y_speed = 3.2,
    frame_width = 16,
    frame_height = 16,
    animations = {
      run =  {frames = {'1-6',2}, duration = 0.1},
      idle = {frames = {'1-3',1}, duration = 0.2},
      jump = {frames = {'1-1',3}, duration = 0.1},
      swim = {frames = {'1-6',4}, duration = 0.1},
      death = {frames = {'5-5',1}, duration = 0.1}
    },
    states = {"idle", "run", "jump", "death"},
    default_state = "idle"
  }
}

gEnemyDefs = {
  bird = {
    image = "enemies.png",
    x = 32,
    y = 8 * 16,
    speed = 0.5,
    facing = -1,
    jump_force = 2.75,
    y_speed = 2.75,
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
    speed = 1.2,
    facing = -1,
    jump_force = 0.5,
    y_speed = 0.5,
    frame_width = 16,
    frame_height = 16,
    animations = {
      roll = {frames = {'1-6',3}, duration = 0.15}
    },
    states = {"roll"},
    default_state = "roll"
  },

  hopper = {
    image = "enemies.png",
    x = 0,
    y = 0,
    speed = 1.5,
    facing = -1,
    jump_force = 1.75,
    y_speed = 1.75,
    frame_width = 16,
    frame_height = 16,
    animations = {
      start_hop = {frames = {'1-4',1}, duration = 0.1},
      hop = {frames = {'4-5', 1}, duration = 0.1, onLoop = 'pauseAtStart'}
    },
    states = {"start_hop", "hop"},
    default_state = "start_hop"
  },

  popup = {
    image = "enemies.png",
    x = 0,
    y = 0,
    speed = 0,
    facing = 1,
    jump_force = 0,
    y_speed = 0,
    frame_width = 16,
    frame_height = 16,
    animations = {
      rest = {frames = {'1-1',5}, duration = 0.1},
      active = {frames = {'5-2',5,'3-4',5}, duration = 0.1}
    },
    states = {"rest", "active"},
    default_state = "rest"
  }
}