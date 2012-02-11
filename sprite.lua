module('sprite', package.seeall)
require('resource')

local sheets = {}
local sprites = {}

function initialize()
   sheets[1] = resource.bmp("sprite_sheet-1")
   new("zelda", 1, 0, 0, 16, 16)
end

function new(name, sheet, x, y, width, height)
   sprites[name] = { sheet = sheet,
		     quad  = love.graphics.newQuad(x, y, width, height, sheets[sheet]:getWidth(), sheets[sheet]:getHeight())}
end

function draw(name, x, y)
   local sprite = sprites[name]

   love.graphics.drawq(sheets[sprite["sheet"]], sprite["quad"], x, y)
end