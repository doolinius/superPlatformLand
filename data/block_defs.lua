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
    purple_deco = quads[6][10]
}
