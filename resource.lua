module('resource', package.seeall)

function path(res)
   return "res/"..res
end

function img(name)
   return love.graphics.newImage(path("img/"..name))
end

function bmp(name)
   return img(name..".bmp")
end