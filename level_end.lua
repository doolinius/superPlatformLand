gSmileyImage = love.graphics.newImage('assets/graphics/characters/smilies.png')
local imgW, imgH = gSmileyImage:getDimensions()
gSmileyQuads = {}
for i=0, math.floor(imgH/16)-1 do 
    table.insert(gSmileyQuads, {})
    for j=0, math.floor(imgW/16)-1 do 
        local q = love.graphics.newQuad(j*16, i*16, 16, 16, imgW, imgH)
        table.insert(gSmileyQuads[i+1], q)
    end
end
gSmilies = {
    smile = gSmileyQuads[1][1],
    eyes_closed = gSmileyQuads[1][2],
    big_smile = gSmileyQuads[1][3],
    laugh = gSmileyQuads[1][4],
    smile_right = gSmileyQuads[1][5],
    smile_left = gSmileyQuads[1][6],
    wince = gSmileyQuads[1][7],
    neutral = gSmileyQuads[1][8],
    blank = gSmileyQuads[1][9],
    angry = gSmileyQuads[2][3],
    pissed = gSmileyQuads[2][4],
    ghost = gSmileyQuads[2][5],
    horror = gSmileyQuads[2][6],
    dumb = gSmileyQuads[2][7],
    sun = gSmileyQuads[2][8]
}

LevelEnd = class('LevelEnd')

function LevelEnd:initialize(x, y)
    self.x = x 
    self.y = y
    self.main_smilies = {
        gSmilies.smile,
        gSmilies.laugh,
        gSmilies.big_smile,
        gSmilies.neutral,
        gSmilies.eyes_closed,
        gSmilies.wince
    }
    self.random_smilies = {
        gSmilies.blank,
        gSmilies.angry,
        gSmilies.pissed, 
        gSmilies.ghost,
        gSmilies.horror,
        gSmilies.dumb,
        gSmilies.sun
    }
    self.delay = 0.25
    self.timer = self.delay
    self.index = 1
    self.random_index = love.math.random(#self.random_smilies)
end

function LevelEnd:update(dt)
    self.timer = self.timer - dt 
    if self.timer <= 0 then 
        self.index = self.index + 1
        if self.index > (#self.main_smilies + 1) then 
            self.index = 1
        elseif self.index == #self.main_smilies then 
            self.random_index = love.math.random(#self.random_smilies)
        end
        self.timer = self.delay
    end
end

function LevelEnd:draw()
    local q 
    if self.index > #self.main_smilies then 
        q = self.random_smilies[self.random_index]
    else 
        q = self.main_smilies[self.index]
    end
    love.graphics.setColor(0, 0, 0)
    love.graphics.rectangle('fill', self.x, self.y, 24, 24, 2, 2)
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle('fill', self.x+2, self.y+2, 20, 20, 2, 2)
    love.graphics.setColor(0, 0, 0, 0.7)
    love.graphics.rectangle('fill', self.x+3, self.y+3, 18, 18, 2, 2)
    love.graphics.setColor(1,1,1)
    love.graphics.draw(gSmileyImage, q, self.x+4, self.y+4)
end