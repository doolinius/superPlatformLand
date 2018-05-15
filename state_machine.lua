--
-- StateMachine - a state machine
--
-- Usage:
--
-- -- States are only created as need, to save memory, reduce clean-up bugs and increase speed
-- -- due to garbage collection taking longer with more data in memory.
-- --
-- -- States are added with a string identifier and an intialisation function.
-- -- It is expect the init function, when called, will return a table with
-- -- Render, Update, Enter and Exit methods.
--
-- gStateMachine = StateMachine:Create
-- {
-- 		['MainMenu'] = function()
-- 			return MainMenu:Create()
-- 		end,
-- 		['InnerGame'] = function()
-- 			return InnerGame:Create()
-- 		end,
-- 		['GameOver'] = function()
-- 			return GameOver:Create()
-- 		end,
-- }
-- gStateMachine:Change("MainGame")
--
-- Arguments passed into the Change function after the state name
-- will be forwarded to the Enter function of the state being changed too.
--
-- State identifiers should have the same name as the state table, unless there's a good
-- reason not to. i.e. MainMenu creates a state using the MainMenu table. This keeps things
-- straight forward.
--
-- =Doing Transistions=
--
StateMachine = {}
StateMachine.__index = StateMachine
function StateMachine:Create(states)
	local this =
	{
		empty =
		{
			draw = function() end,
			update = function() end,
			enter = function() end,
			exit = function() end
		},
		states = states or {}, -- [name] -> [function that returns state]
		current = nil,
	}

	this.current = this.empty
	setmetatable(this, self)
	return this
end

-- changing states requires a state name, and an optional list of parameters
-- just in case you need to supply new information to the state you're entering
--
function StateMachine:change(stateName, enterParams)
	assert(self.states[stateName]) -- state must exist!
	self.current:exit()  -- call the exit() function for the current state
	self.current = self.states[stateName]-- set the new current state
	self.current:enter(enterParams) -- call the new current state's enter() function
end

function StateMachine:update(dt)
	self.current:update(dt)
end

function StateMachine:draw()
	self.current:draw()
end

-- The hero's idle state
-- this is his default state
-- IdleState is entered by not holding any action keys/buttons while
-- grounded
-- IdleState is exited when an action key/button is pressed
IdleState = {name="idle"}
IdleState.__index = IdleState
function IdleState:Create(character, map)
	local this = {
		character = character, -- all states must have a reference to the character
		map = map							 -- and the map
	}
	setmetatable(this, self)
	return(this)
end

function IdleState:update(dt)
	--log.trace("Hero y:" .. self.character.y)
	self.character.animation:update(dt)
	-- if the player presses the jump key/button...
	if (love.keyboard.isDown('space')) then
		-- leave the Idle state and enter the Jump state
		self.character.controller:change("jump")
	elseif love.keyboard.isDown('f') then
		self.character.controller:change("punch")
	else
		-- otherwise, check for left/right movement
		if (love.keyboard.isDown('a')) then
			self.facing = -1
			self.character.controller:change("run")
		elseif (love.keyboard.isDown('d')) then
			self.facing = 1
			self.character.controller:change("run")
		end
	end

	-- update the Y value according to gravity
	--self.character.y_speed = self.character.jump_force
	self.character.y = self.character.y + gravity
	-- check for collisions
	local actualX, actualY, cols, len = world:move(self.character, self.character.x, self.character.y, colFilter)
	--log.trace("Attempted X:" .. self.character.x .. " Y:" .. self.character.y)
	--log.trace("ACTUAL    X:" .. actualX .. " Y:" .. actualY)
	self.character.x = actualX
	self.character.y = actualY

end

function IdleState:draw()
	--self.character.animation:draw(dt)
end

function IdleState:enter()
	--print(inspect(self.character))
	self.character.speed = 0
	self.character.y_speed = 0
	self.character.animation = self.character.animations.idle
end

function IdleState:exit()
end

-- The hero's Run state, for moving left and right
RunState = {name="run"}
RunState.__index = RunState
function RunState:Create(character, map)
	local this = {
		character = character,
		map = map
	}
	setmetatable(this, self)
	return(this)
end

function RunState:update(dt)
	-- always update the animation frame
	self.character.animation:update(dt)

  -- if the player presses the jump key/button...
	if (love.keyboard.isDown('space')) then
		self.character.controller:change("jump") -- ... enter the Jump State
	else
		-- otherwise, move them left or right
		if (love.keyboard.isDown('a')) then
			self.character.speed = math.max(-self.character.top_speed, self.character.speed - 6 * dt)
			self.character.x = self.character.x + self.character.speed
			self.character.facing = -1
		elseif (love.keyboard.isDown('d')) then
			self.character.speed = math.min(self.character.top_speed, self.character.speed + 6 * dt)
			self.character.x = self.character.x + self.character.speed
			self.character.facing = 1
		else
			self.character.speed = math.max(0, self.character.speed - 5 * dt)
			self.character.x = self.character.x + self.character.speed * self.character.facing
			if self.character.speed == 0 then
				self.character.animation = self.character.animations.idle
				self.character.controller:change("idle")
			end
		end

		-- update the Y value according to gravity
		--self.character.y_speed = self.character.jump_force
		self.character.y = self.character.y + gravity

		local actualX, actualY, cols, len = world:move(self.character, self.character.x, self.character.y, colFilter)

	  -- if there was a collision
	  if (len > 0) then
	    --print("collisions!!")
	    -- put the hero where the collision world says he should be
	    self.character.x = actualX
	    self.character.y = actualY
	    -- after collision detection
	    for i=1, len do
	      local c = cols[i]
	      if c.type == "cross" then
	        --local instance = map:getInstanceByPixel(c.other.x, c.other.y, 3)
	        --map:removeInstance(instance)
	        if c.other.type == "coin" then
	          takeCoin(c.other)
	        end

				elseif c.type == "touch" and c.other.type == "instadeath" then
					self.character.controller:change("death")
	      end
	    end
		end

	end
end

function RunState:draw()
	--self.character.animation:draw()
end

function RunState:enter()
	--self.character.speed = 0
	self.character.animation = self.character.animations.run
end

function RunState:exit()

end


-- The hero's jump state
FallState = {name="fall"}
FallState.__index = FallState
function FallState:Create(character, map)
	local this = {
		character = character,
		map = map,
		parachuteImage = love.graphics.newImage("graphics/hero.png")
	}
	this.parachuteImage:setFilter("nearest", "nearest")
	this.paraQuad = love.graphics.newQuad(5*16, 0, 16, 16, this.parachuteImage:getDimensions())
	setmetatable(this, self)
	return(this)
end

function FallState:update(dt)
	self.character.px = self.character.x
	self.character.py = self.character.y

	self.character.animation:update(dt)
	self.character.y_speed = self.character.y_speed - gravity * dt
	self.character.y = self.character.y - self.character.y_speed

	if (love.keyboard.isDown('a')) then
		self.character.speed = math.max(-self.character.top_speed, self.character.speed - 6 * dt)
		self.character.x = self.character.x + self.character.speed
		self.character.facing = -1
	elseif (love.keyboard.isDown('d')) then
		self.character.speed = math.min(self.character.top_speed, self.character.speed + 6 * dt)
		self.character.x = self.character.x + self.character.speed
		self.character.facing = 1
	end

	local actualX, actualY, cols, len = world:move(self.character, self.character.x, self.character.y, colFilter)
	self.character.x = actualX
	self.character.y = actualY
	if len > 0 then
		log.trace("# Collisions: " .. len)
	end
	for i=1,len do
		local c = cols[i]
		-- if the hero collides with a platform
		-- change the state to either idle or run
		if c.type == "cross" then
			--local instance = map:getInstanceByPixel(c.other.x, c.other.y, 3)
			--map:removeInstance(instance)
			if c.other.type == "coin" then
				takeCoin(c.other)
			elseif c.other.type == "heart" then
				takeHeart(c.other)
			end
		elseif c.type == "touch"  and c.other.type == "instadeath" then
			self.character.controller:change("death")
		elseif c.type == "slide" and c.normal.y == -1 then
			if (love.keyboard.isDown('a') or love.keyboard.isDown('d')) then
				self.character.controller:change("run")
			else
				self.character.controller:change("idle")
			end
		-- if the hero collides with a tile above, set y_speed to 0 to allow
		-- immediate falling
		elseif c.type == "slide" and c.normal.y == 1 then
			self.character.y_speed = 0
		end
	end
end

function FallState:draw()
	--self.character.animation:draw()
	--love.graphics.draw(self.parachuteImage, self.paraQuad, self.character.x, self.character.y-14)
end

function FallState:enter()
	self.character.y_speed = 0
	self.character.animation = self.character.animations.fall
end

function FallState:exit()
end

-- The hero's jump state
JumpState = {name="jump"}
JumpState.__index = JumpState
function JumpState:Create(character, map)
	local this = {
		character = character,
		map = map,
		parachuteImage = love.graphics.newImage("graphics/hero.png")
	}
	this.parachuteImage:setFilter("nearest", "nearest")
	this.paraQuad = love.graphics.newQuad(5*16, 0, 16, 16, this.parachuteImage:getDimensions())
	setmetatable(this, self)
	return(this)
end

function JumpState:update(dt)
	self.character.px = self.character.x
	self.character.py = self.character.y

	self.character.animation:update(dt)
	self.character.y_speed = self.character.y_speed - gravity * dt
	self.character.y = self.character.y - self.character.y_speed

	if (love.keyboard.isDown('a')) then
		self.character.speed = math.max(-self.character.top_speed, self.character.speed - 6 * dt)
		self.character.x = self.character.x + self.character.speed
		self.character.facing = -1
	elseif (love.keyboard.isDown('d')) then
		self.character.speed = math.min(self.character.top_speed, self.character.speed + 6 * dt)
		self.character.x = self.character.x + self.character.speed
		self.character.facing = 1
	end

	if (not love.keyboard.isDown('space') and self.character.y_speed > 0) then
		self.character.y_speed = 0
	end

	local actualX, actualY, cols, len = world:move(self.character, self.character.x, self.character.y, colFilter)
	self.character.x = actualX
	self.character.y = actualY
	if len > 0 then
		log.trace("# Collisions: " .. len)
	end
	for i=1,len do
		local c = cols[i]
		-- if the hero collides with a platform
		-- change the state to either idle or run
		if c.type == "cross" then
			--local instance = map:getInstanceByPixel(c.other.x, c.other.y, 3)
			--map:removeInstance(instance)
			if c.other.type == "coin" then
				takeCoin(c.other)
			elseif c.other.type == "heart" then
				takeHeart(c.other)
			end
		elseif c.type == "touch"  and c.other.type == "instadeath" then
			self.character.controller:change("death")
		elseif c.type == "slide" and c.normal.y == -1 then
			if (love.keyboard.isDown('a') or love.keyboard.isDown('d')) then
				self.character.controller:change("run")
			else
				self.character.controller:change("idle")
			end
		-- if the hero collides with a tile above, set y_speed to 0 to allow
		-- immediate falling
		elseif c.type == "slide" and c.normal.y == 1 then
			self.character.y_speed = 0
		end
	end
end



function JumpState:draw()
	--self.character.animation:draw()
	--love.graphics.draw(self.parachuteImage, self.paraQuad, self.character.x, self.character.y-14)
end

function JumpState:enter()
	self.character.y_speed = self.character.jump_force
	self.character.animation = self.character.animations.jump
	self.character.animation:resume()
	self.character.animation:gotoFrame(1)
	--uncomment the next two lines to play the jump sound
	--sounds.jump:setVolume(0.5   )
	--sounds.jump:play()
end

function JumpState:exit()
end

DeathState = {name="death"}
DeathState.__index = DeathState
function DeathState:Create(character, map)
	local this = {
		character = character, -- all states must have a reference to the character
		map = map							 -- and the map
	}
	setmetatable(this, self)
	return(this)
end

function DeathState:update(dt)
	self.character.animation:update(dt)
	-- if the player presses the jump key/button...
	self.character.y_speed = self.character.y_speed - gravity * 2 * dt
	self.character.y = self.character.y - self.character.y_speed

end

function DeathState:draw()
	--self.character.animation:draw(dt)
end

function DeathState:enter()
	--print(inspect(self.character))
	self.character.speed = 0
	self.character.y_speed = self.character.jump_force
	self.character.animation = self.character.animations.death
end

function DeathState:exit()
end

PunchState = {name="punch"}
PunchState.__index = PunchState
function PunchState:Create(character, map)
	local this = {
		character = character, -- all states must have a reference to the character
		map = map							 -- and the map
	}
	setmetatable(this, self)
	return(this)
end

function PunchState:update(dt)
	self.character.animation:update(dt)
	-- if the player presses the jump key/button...
	--self.character.y_speed = self.character.y_speed - gravity * 2 * dt
	--self.character.y = self.character.y - self.character.y_speed
	if self.character.animation.position == 4 then
		if love.keyboard.isDown('a') then
			self.character.facing = -1
			self.character.controller:change("run")
		elseif love.keyboard.isDown('d') then
			self.character.facing = 1
			self.character.controller:change("run")
		else
			self.character.controller:change("idle")
		end
	end
end

function PunchState:draw()
	--self.character.animation:draw(dt)
end

function PunchState:enter()
	--print(inspect(self.character))
	self.character.speed = 0
	--self.character.y_speed = self.character.jump_force
	self.character.animation = self.character.animations.punch
	sounds.punch:play()

	if self.character.hp >= 2 then
		makePunch(hero)
	end
end

function PunchState:exit()
	self.character.animation:gotoFrame(1)
end

-- The Roll state for our "rollyGuy" enemy
-- rolls back and forth, bouncing off walls or platform edges
RollState = {name="roll"}
RollState.__index = RollState
function RollState:Create(character, map)
	local this = {
		character = character,
		map = map
	}
	setmetatable(this, self)
	return(this)
end

function RollState:update(dt)
	self.character.animation:update(dt)
	self.character.x = self.character.x + self.character.speed * self.character.facing
	local actualX, actualY, cols, len = world:move(self.character, self.character.x, self.character.y, colFilter)
	for i=1,len do
		if cols[i].normal.x + self.character.facing == 0 then
			self.character.facing = self.character.facing * -1
		end
	end
end

function RollState:draw()
	--self.character.animation:draw()
end

function RollState:enter()
	self.character.speed = self.character.top_speed
	self.character.animation = self.character.animations["roll"]
end

function RollState:exit()
end

FlyState = {name="fly"}
FlyState.__index = FlyState

function FlyState:Create(character, map)
	local this = {
		character = character,
		map = map
	}

	setmetatable(this, self)
	return(this)
end

function FlyState:update(dt)
	if self.timer <= 0 then
		self.character.facing = self.character.facing * -1
		self.timer = 5
	else
		self.timer = self.timer - dt
	end
	self.character.animation:update(dt)
	self.character.x = self.character.x + self.character.speed * self.character.facing
	local actualX, actualY, cols, len = world:move(self.character, self.character.x, self.character.y, colFilter)
	self.character.x = actualX
end

function FlyState:draw()
end

function FlyState:enter()
	self.timer = 5
	self.character.speed = self.character.top_speed
	self.character.animation = self.character.animations.fly
end

function FlyState:exit()
end

RestState = {name="rest"}
RestState.__index = RestState

function RestState:Create(character, map)
	local this = {
		character = character,
		map = map
	}

	setmetatable(this, self)
	return(this)
end

function RestState:update(dt)
	self.character.animation:update(dt)
	if math.abs(self.character.x - hero.x) < 32 then
		self.character.controller:change("active")
	end
end

function RestState:draw()
end

function RestState:enter()
	self.character.animation = self.character.animations.rest
end

function RestState:exit()
end

ActiveState = {name="active"}
ActiveState.__index = ActiveState

function ActiveState:Create(character, map)
	local this = {
		character = character,
		map = map
	}

	setmetatable(this, self)
	return(this)
end

function ActiveState:update(dt)
	self.character.animation:update(dt)
	if math.abs(self.character.x - hero.x) > 32 then
		self.character.controller:change("rest")
	end
end

function ActiveState:draw()
end

function ActiveState:enter()
	self.character.animation = self.character.animations.active
end

function ActiveState:exit()
end

HopState = {name="hop"}
HopState.__index = HopState

function HopState:Create(character, map)
	local this = {
		character = character,
		map = map
	}

	setmetatable(this, self)
	return(this)
end

function HopState:update(dt)
	self.character.animation:update(dt)
	if self.character.y_speed <= 0 then
		self.character.animation:gotoFrame(2)
		self.character.animation:pause()
	end

	self.character.x = self.character.x + self.character.speed * self.character.facing
	self.character.y_speed = self.character.y_speed - gravity * dt
	self.character.y = self.character.y - self.character.y_speed
	local actualX, actualY, cols, len = world:move(self.character, self.character.x, self.character.y, colFilter)
	self.character.x = actualX
	self.character.y = actualY
	for i=1,len do
		local c = cols[i]
		-- if the hero collides with a platform
		-- change the state to either idle or run
		if c.type == "slide" and c.normal.y == -1 then
			self.character.controller:change("start_hop")
		-- if the hero collides with a tile above, set y_speed to 0 to allow
		-- immediate falling
		elseif c.type == "slide" and c.normal.y == 1 then
			self.character.y_speed = 0
		end
	end
end

function HopState:draw()
end

function HopState:enter()
	self.character.animation = self.character.animations.hop
	self.character.animation:gotoFrame(1)
	self.character.y_speed = self.character.jump_force
	self.character.speed = self.character.top_speed
	if math.abs(self.character.x - hero.x) < wWidth/scale then
		sounds.tinyHop:stop()
		sounds.tinyHop:setVolume(0.75)
		sounds.tinyHop:play()
	end
end

function HopState:exit()
	self.character.speed = 0
end

StartHopState = {name="start_hop"}
StartHopState.__index = StartHopState

function StartHopState:Create(character, map)
	local this = {
		character = character,
		map = map
	}

	setmetatable(this, self)
	return(this)
end

function StartHopState:update(dt)
	self.character.animation:update(dt)
	if self.character.x > hero.x then
		self.character.facing = -1
	else
		self.character.facing = 1
	end
	if self.character.animation.position == 4 then
		self.character.controller:change('hop')
	end
end

function StartHopState:draw()
end

function StartHopState:enter()
	self.character.animation = self.character.animations.start_hop
	self.character.animation:gotoFrame(1)
end

function StartHopState:exit()
end

charStates = {
	run = RunState,
	idle = IdleState,
	jump = JumpState,
	death = DeathState,
	punch = PunchState,
	fall = FallState,
	roll = RollState,
	rest = RestState,
	active = ActiveState,
	fly = FlyState,
	start_hop = StartHopState,
	hop = HopState
}
