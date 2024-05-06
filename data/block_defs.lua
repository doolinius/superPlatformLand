gBlockImage = love.graphics.newImage('assets/graphics/tilesets/blocks_tiles/blocks.png')
local imgW, imgH = gBlockImage:getDimensions()
local quads = {}
for i=0, math.floor(imgH/16)-1 do 
    table.insert(quads, {})
    for j=0, math.floor(imgW/16)-1 do 
        local q = love.graphics.newQuad(j*16, i*16, 16, 16, imgW, imgH)
        table.insert(quads[i+1], q)
    end
end
local thinQuads = {}
for i=0, math.floor(imgH/8)-1 do 
    table.insert(thinQuads, {})
    for j=0, math.floor(imgW/16)-1 do 
        local q = love.graphics.newQuad(j*16, i*16, 16, 16, imgW, imgH)
        table.insert(thinQuads[i+1], q)
    end
end
gBlockQuads = {
    grey_crumble = quads[1][1],
    grey_crumble_crack = quads[1][2],
    grey_crumble_frag = quads[1][3],
    cardboard_box = quads[1][4],
    cardboard_box_frag = quads[1][5],
    spikes = quads[1][10],
    red_box = quads[1][11],

    tan_crumble = quads[2][1],
    tan_crumble_crack = quads[2][2],
    tan_crumble_frag = quads[2][3],
    blue_deco = quads[2][10],
    green_bevel = quads[2][11],

    orange_brick_breakable = quads[3][1],
    orange_brick = quads[3][2],
    ice = quads[3][4],
    dk_green_brick_breakable = quads[3][6],
    dk_green_brick = quads[3][7],
    grey_brick_breakable = quads[3][9],
    grey_brick = quads[3][10],

    green_brick_breakable = quads[4][1],
    green_brick = quads[4][2],
    ice_spikes = quads[4][4],
    ice_crack = quads[4][5],
    red_brick_breakable = quads[4][6],
    red_brick = quads[4][7],
    brown_brick_breakable = quads[4][9],
    brown_brick = quads[4][10],

    green_metal = quads[5][8],
    greenish_metal = quads[5][9],
    smile_metal = quads[5][10],

    grey_bevel = quads[6][8],
    purple_bevel = quads[6][9],
    purple_deco = quads[6][10],

    orange_brick_thin = thinQuads[5][3],
    ice_thin = thinQuads[5][5],
    dk_green_brick_thin = thinQuads[5][5],
    gray_brick_thin = thinQuads[5][11],
    green_brick_thin = thinQuads[6][3],
    red_brick_thin = thinQuads[6][8],
    brown_brick_thin = thinQuads[6][11]
}

gBlockDefs = {}
for bname, q in pairs(gBlockQuads) do 
    local def = {image=gBlockImage, quad=q, width=16, height=16}
    gBlockDefs[bname] = def
end

gBlockDefs.spikes.hitbox = {width=16, height=8, ox=0, oy=8}
gBlockDefs.ice_spikes.hitbox = {width=16, height=8, ox=0, oy=8}

gBlockDefs.orange_brick_thin.hitbox = {width=16, height=8,ox=y, oy=0}
gBlockDefs.ice_thin.hitbox = {width=16, height=8,ox=y, oy=0}
gBlockDefs.dk_green_brick_thin.hitbox = {width=16, height=8,ox=y, oy=0}
gBlockDefs.gray_brick_thin.hitbox = {width=16, height=8,ox=y, oy=0}
gBlockDefs.green_brick_thin.hitbox = {width=16, height=8,ox=y, oy=0}
gBlockDefs.red_brick_thin.hitbox = {width=16, height=8,ox=y, oy=0}
gBlockDefs.brown_brick_thin.hitbox = {width=16, height=8,ox=y, oy=0}

gBlockDefs.spikes.height = 8
gBlockDefs.ice_spikes.height = 8

gBlockDefs.orange_brick_thin.height = 8
gBlockDefs.ice_thin.height = 8
gBlockDefs.dk_green_brick_thin.height = 8
gBlockDefs.gray_brick_thin.height = 8
gBlockDefs.green_brick_thin.height = 8
gBlockDefs.red_brick_thin.height = 8
gBlockDefs.brown_brick_thin.height = 8