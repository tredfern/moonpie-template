-- Copyright (c) 2021 Trevor Redfern
-- 
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local Selectors = {}
local Entities = require "moonpie.entities"

function Selectors.getAll(state)
  return Entities.selectors.getAllWithComponents(state, "shape")
end

return Selectors