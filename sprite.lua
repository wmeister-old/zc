module('sprite', package.seeall)
require('spritesheet')
require('resource')

local sprites = {}

function initialize()
   local sheet_id = spritesheet.new(resource.bmp("sprite_sheet-1"), 16, 16)
   new("zelda", sheet_id, 1, 1)
end

function new(name, sheet_id, row, col)
   local sheet = spritesheet.get(sheet_id)

   sprites[name] = { sheet_id = sheet_id,
		     quad  = love.graphics.newQuad((row-1) * sheet["cell_width"],
						   (col-1) * sheet["cell_height"],
						   sheet["cell_width"],
						   sheet["cell_height"],
						   sheet["width"], 
						   sheet["height"])}
end

function draw(name, x, y)
   local sprite = sprites[name]

   love.graphics.drawq(spritesheet.get(sprite["sheet_id"])["image"], sprite["quad"], x, y)
end