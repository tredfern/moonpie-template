-- Copyright (c) 2021 Trevor Redfern
-- 
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local Property = require "moonpie.entities.property"

return {
    color = function(color)
        return Property("color", color)
    end,
    position = function(x, y)
        return Property("position", { x = x, y = y })
    end,
    shape = function(shape)
        return Property("shape", shape)
    end,
    size = function(size)
        return Property("size", size)
    end,
    velocity = function(vx, vy)
        return Property("velocity", { x = vx, y = vy })
    end
}