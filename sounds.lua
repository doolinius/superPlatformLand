-- global sounds table
-- feel free to add to this if you like
-- there is a large collection of sounds in one file called "lotsOfSounds.wav"
-- you can use Audacity to copy and paste individual sounds into their own
-- files.  I suggest the OGG/Vorbis file format

sounds = {
  jump = love.audio.newSource("sounds/jump.ogg","static"),
  coin = love.audio.newSource("sounds/coin.ogg","static"),
  death = love.audio.newSource("sounds/death.ogg","static"),
  oneup = love.audio.newSource("sounds/1up.ogg","static"),
  level1 = love.audio.newSource("sounds/level1bg.ogg","stream"),
  intro_screen = love.audio.newSource("sounds/intro.ogg","stream"),
  start = love.audio.newSource("sounds/gameStart.ogg","static"),
  heart = love.audio.newSource("sounds/pickup.wav", "static"),
  tinyHop = love.audio.newSource("sounds/tinyHop.ogg", "static"),
  punch = love.audio.newSource("sounds/punch.ogg","static"),
  breakBlock = love.audio.newSource("sounds/slam.mp3", "static")
}
