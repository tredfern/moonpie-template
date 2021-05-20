-- Copyright (c) 2021 Trevor Redfern
-- 
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local Selectors = {}

function Selectors.getAll(state)
  return state.shapes
end

return Selectors