module('spritesheet', package.seeall)

local sheets = {}

function new(img, cw, ch)
   table.insert(sheets, { image = img,
			  cell_width = cw,
			  cell_height = ch,
		          width = img:getWidth(),
		          height = img:getHeight()})
   return #sheets
end

function get(id)
   return sheets[id]
end