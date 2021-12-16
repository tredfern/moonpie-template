-- Copyright (c) 2021 Trevor Redfern
-- 
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local Properties = require "game.entities.properties"
local Entity = require "moonpie.entities.entity"

return {
    circle = function(color, x, y, size)
        return Entity.new(
            Properties.shape("circle"),
            Properties.color(color),
            Properties.position(x, y),
            Properties.size(size),
            Properties.velocity(math.random(-50, 50), math.random(-50, 50))
        )
    end,
    rectangle = function(color, x, y, size)
        return Entity.new(
            Properties.shape("rectangle"),
            Properties.color(color),
            Properties.position(x, y),
            Properties.size(size),
            Properties.velocity(math.random(-50, 50), math.random(-50, 50))
        )
    end
}