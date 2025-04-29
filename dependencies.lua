--[[
    Place all statements to require libraries in here
]]

-- require libraries first
log = require('libs/log')
loader = require('libs/love-loader')
--Input = require('libs/input')
baton = require('libs/baton')
anim8 = require('libs/anim8/anim8')
sti = require('libs/sti')
bump = require('libs/bump')
inspect = require('libs/inspect')
lovebird = require('libs/lovebird')
class = require('libs/middleclass')
require('libs/state_stack')
require('libs/StateMachine')
Stateful = require('libs/stateful')

-- require game specific files next
require('constants')
require('input_bindings')
require('character_states')
require('character')
require('camera')
require('level_end')
require('level')
require('collision')
require('entity')
require('block')
require('collectible')
require('level_play_state')
require('effect')
require('hud')
require('gameworld')

-- require data last
require('data/audio')
require('data/character_defs')
require('data/block_defs')
require('data/effect_defs')
require('data/collectible_defs')