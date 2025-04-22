CharacterState = class("CharacterState")

function CharacterState:initialize(character, level)
	self.character = character
	self.level = level
	self.controller = character.controller
end

function CharacterState:enter(params) end

function CharacterState:exit() end

function CharacterState:handleInput() end

function CharacterState:update(dt) end

function CharacterState:draw() end

--IdleState = { name = "idle" }
--IdleState.__index = IdleState
IdleState = class("IdleState", CharacterState)

function IdleState:initialize(character, level)
	self.name = "idle"
	CharacterState.initialize(self, character, level)
end

function IdleState:enter(params)
	self.character.velocity.x = 0
	if self.character.status.dress == true then
		self.character.frames = self.character.framesets.dress
	elseif self.character.status.dress == false then
		self.character.frames = self.character.framesets.normal
	end
	self.character.animation = self.character.frames.idle
end

function IdleState:handleInput(dt)
	if input:pressed("down") and self.controller:hasState("crouch") then
		self.controller:change("crouch")
		return
	end
	if input:pressed("special") then
		self.character:special()
	end
	if input:down("left") then
		self.controller:change("run", { dir = -1 })
	elseif input:down("right") then
		self.controller:change("run", { dir = 1 })
	end

	if input:down("jump") then
		self.controller:change("jump")
	end
end

--[[
PrincessIdle = class("PrincessIdle", IdleState)

function PrincessIdle:initialize(character, level)
	self.name = "princess_idle"
	IdleState.initialize(self, character, level)
end

function PrincessIdle:enter(params)
	if self.character.status.dress == true then
		self.character.animation = self.character.frames.idle_dress
	else
		self.character.animation = self.character.frames.idle
	end
end

PrincessRun = class("PrincessRun", RunState)

function PrincessRun:initialize(character, level)
	self.name = "princess_run"
	RunState.initialize(self, character, level)
end

function PrincessRun:enter(params)
	if self.character.status.dress == true then
		self.character.animation = self.character.frames.run_dress
	else
		self.character.animation = self.character.frames.run
	end
end

PrincessJump = class("PrincessJump", JumpState)

function PrincessJump:initialize(character, level)
	self.name = "princess_jump"
	JumpState.initialize(self, character, level)
end

function PrincessJump:enter(params)
	if self.character.status.dress == true then
		self.character.animation = self.character.frames.jump_dress
	else
		self.character.animation = self.character.frames.jump
	end
end

PrincessFall = class("PrincessFall", FallState)

function PrincessFall:initialize(character, level)
	self.name = "princess_fall"
	FallState.initialize(self, character, level)
end

function PrincessFall:enter(params)
	if self.character.status.dress == true then
		self.character.animation = self.character.frames.fall_dress
	else
		self.character.animation = self.character.frames.fall
	end
end
]]
--RunState = { name = "run" }
--RunState.__index = RunState
RunState = class("RunState", CharacterState)

function RunState:initialize(character, level)
	self.name = "run"
	CharacterState.initialize(self, character, level)
end

function RunState:enter(params)
	self.character.animation = self.character.frames.run
	self.character.facing = params.dir
	self.character.velocity.x = self.character.velocity.top_x * self.character.facing
end

function RunState:handleInput()
	if input:down("left") then
		self.character.position.facing = -1
		self.character.velocity.x = -self.character.velocity.top_x
	elseif input:down("right") then
		self.character.position.facing = 1
		self.character.velocity.x = self.character.velocity.top_x
	else
		self.character.controller:change("idle")
	end
	if input:pressed("jump") then
		self.character.controller:change("jump")
	end
	if input:pressed("special") then
		self.character:special()
	end
end

function RunState:update(dt)
	if not self.character.grounded then
	  self.character.controller:change('fall')
	end
end

--JumpState = { name = "jump" }
--JumpState.__index = JumpState
JumpState = class("JumpState", CharacterState)

function JumpState:initialize(character, level)
	self.name = "jump"
	CharacterState.initialize(self, character, level)
end

function JumpState:enter(params)
	params = params or {}
	local mult = params.multiplier or 1
	self.character.velocity.y = -self.character.velocity.jump_force * mult
	self.character.animation = self.character.frames.jump
	--self.grounded = false
end

function JumpState:update(dt)
	if self.character.velocity.y == 0 then 
		self.character:change("fall")
	end
end

function JumpState:handleInput()
	if self.character.velocity.y >= 0 then
		self.controller:change("fall")
	else
		if input:down("left") then
			self.character.position.facing = -1
			self.character.velocity.x = -self.character.velocity.top_x
		elseif input:down("right") then
			self.character.velocity.x = self.character.velocity.top_x
			self.character.position.facing = 1
		else
			self.character.velocity.x = 0
		end
	end
end

FallState = class("FallState", CharacterState)

function FallState:initialize(character, level)
	self.name = "fall"
	CharacterState.initialize(self, character, level)
end

function FallState:enter(params)
	self.character.animation = self.character.frames.fall
end

function FallState:handleInput()
	if input:down("left") then
		self.character.position.facing = -1
		self.character.velocity.x = -self.character.velocity.top_x
	elseif input:down("right") then
		self.character.velocity.x = self.character.velocity.top_x
		self.character.position.facing = 1
	else
		self.character.velocity.x = 0
	end
	if input:down("jump") and self.character.status.dress and not self.character.status.float then
		self.character.status.float = true
		self.character.controller:change("float")
	end
	if self.character.velocity.y == 0 then
		self.character:landFromFall()
		self.character.status.float = false
		--self.character.grounded = true
	end
end

FloatState = class("FloatState", CharacterState)

function FloatState:initialize(character, level)
	self.name = "float"
	CharacterState.initialize(self, character, level)
	self.floatDuration = 2.5
	self.floatTimer = 0
end

function FloatState:enter(params)
	self.character.animation = self.character.frames.float
	self.character.velocity.y = 0.01
	self.character.gravityEffect = 0
	self.floatTimer = 0
end

function FloatState:exit()
	self.character.gravityEffect = 1.0
end

function FloatState:handleInput(dt)
	if self.floatTimer >= self.floatDuration then
		self.character.controller:change("fall")
		return
	end
	if input:down("left") then
		self.character.position.facing = -1
		self.character.velocity.x = -self.character.velocity.top_x
	elseif input:down("right") then
		self.character.velocity.x = self.character.velocity.top_x
		self.character.position.facing = 1
	else
		self.character.velocity.x = 0
	end
	if not input:down("jump") then
		self.character.controller:change("fall")
	else
		self.floatTimer = self.floatTimer + dt
	end
end

function FloatState:update(dt)
	--local SPEED = 1.5
	--local AMPLITUDE = 0.51
	--self.character.position.y = self.character.position.y + math.sin(self.floatTimer * math.pi * SPEED) * AMPLITUDE
end

GetSerious = class("GetSerious", CharacterState)

function GetSerious:initialize(character, level)
	CharacterState.initialize(self, character, level)
	self.timer = 0.5
end

function GetSerious:enter(params)
	self.character.animation = self.character.frames.get_serious
	self.character.velocity.x = 0
	self.character.velocity.top_x = 99
	self.timer = 0.5
	local e = Effect:new(gEffectDefs.dress_toss, self.character.position.x, self.character.position.y + 16, self.level)
	log.trace("Facing: " .. self.character.position.facing)
	e.velocity = { x = self.character.position.facing * -70, y = -100 }
	self.level:addEffect(e)
end

function GetSerious:update(dt)
	if self.timer <= 0 then
		self.character.status.dress = false
		self.character.controller:change("idle")
	else
		self.timer = self.timer - dt
	end
end

--CrouchState = { name = "crouch" }
--CrouchState.__index = CrouchState
CrouchState = class("CrouchState", CharacterState)

function CrouchState:initialize(character, level)
	CharacterState.initialize(self, character, level)
	self.chargeTime = 1.75
end

function CrouchState:enter(params)
	self.character.animation = self.character.frames.crouch
	--self.previousHitbox = self.character.hitbox
	--self.character.hitbox = {width=8, height=9, ox=4, oy=7}
	self.character.position.y = self.character.position.y + 3
	self.chargeTime = 1.75
end

function CrouchState:exit()
	--self.character.hitbox = self.previousHitbox
	self.character.animation:gotoFrame(1)
	self.character.animation:resume()
	self.character.status.charged = false
end

function CrouchState:handleInput()
	if not input:down("down") then
		if input:down("left") then
			self.controller:change("run", { dir = -1 })
		elseif input:down("right") then
			self.controller:change("run", { dir = 1 })
		else
			self.controller:change("idle")
		end
	else
		if self.character.status.charged and input:pressed("jump") then
			self.character.controller:change("jump", { multiplier = 1.5 })
		end
	end
end

function CrouchState:update(dt)
	self.chargeTime = self.chargeTime - dt
	if self.chargeTime <= 0 then
		self.character.status.charged = true
	end
end

BotSlam = class("BotSlam", CharacterState)

function BotSlam:initialize(character, level)
	CharacterState.initialize(self, character, level)
	self.pauseTime = 0.25
	self.timer = 0
end

function BotSlam:enter(params)
	self.character.controller:change("bot_slam")
	self.timer = 0
	self.character.gravityEffect = 0
	self.character.velocity.y = 0.01
end

function BotSlam:exit()
	self.character.gravityEffect = 1.0
end

function BotSlam:update(dt)
	if self.timer >= self.pauseTime then
		self.character.velocity.y = 150
	else
		self.timer = self.timer + dt
	end
	if self.character.velocity.y == 0 then
		self.character.controller:change("idle")
	end
end

-- a table of all states that the character can be in
-- this is a lookup table for creating the Character and StateMachine
gCharacterStates = {
	idle = IdleState,
	run = RunState,
	jump = JumpState,
	fall = FallState,
	crouch = CrouchState,
	float = FloatState,
	bot_slam = BotSlam,
	get_serious = GetSerious,
	princess_idle = PrincessIdle,
	princess_run = PrincessRun,
	princess_jump = PrincessJump,
	princess_fall = PrincessFall,
}

