module('sprite', package.seeall)
require('resource')

local sheets = {}
local sprites = {}

function initialize()
   sheets[1] = { image = resource.bmp("sprite_sheet-1"),
	         cell_width = 16,
	         cell_height = 16}

   new("zelda", 1, 1, 1)
end

function new(name, sheet_id, row, col)
   local spritesheet, cell_width, cell_height
   spritesheet = sheets[sheet_id]["image"]
   cell_width = sheets[sheet_id]["cell_width"]
   cell_height = sheets[sheet_id]["cell_height"]

   sprites[name] = { sheet_id = sheet_id,
		     quad  = love.graphics.newQuad((row-1) * cell_width,
						   (col-1) * cell_height,
						   cell_width, cell_height,
						   spritesheet:getWidth(), 
						   spritesheet:getHeight())}
end

function draw(name, x, y)
   local sprite = sprites[name]

   love.graphics.drawq(sheets[sprite["sheet_id"]]["image"], sprite["quad"], x, y)
end