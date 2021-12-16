-- Copyright (c) 2021 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local Thunk = require "moonpie.state.thunk"
local Colors = require "moonpie.graphics.colors"
local Entities = require "moonpie.entities"
local Shapes = require "game.entities.shapes"

local Actions = {}
Actions.types = require "game.rules.shapes.types"

function Actions.setup()
  return Thunk(
    Actions.types.SETUP,
    function(dispatch)
      dispatch(Entities.actions.add(Shapes.circle(Colors.red, 125, 70, 50)))
      dispatch(Entities.actions.add(Shapes.circle(Colors.green, 325, 220, 25)))
      dispatch(Entities.actions.add(Shapes.rectangle(Colors.blue, 225, 120, 150)))
      dispatch(Entities.actions.add(Shapes.rectangle(Colors.purple, 425, 420, 5)))
    end
  )
end

function Actions.update(width, height)
  local Selectors = require "game.rules.shapes.selectors"
  return Thunk(
    Actions.types.UPDATE,
    function(dispatch, getState)
      local shapes = Selectors.getAll(getState())
      local dt = love.timer.getDelta()

      for _, v in ipairs(shapes) do
        local nx = v.position.x + (dt * v.velocity.x)
        local ny = v.position.y + (dt * v.velocity.y)
        dispatch(Entities.actions.updateProperty(v, "position", { x = nx, y = ny }))

        if nx > width or nx < 0 then
          dispatch(Entities.actions.updateProperty(v, "velocity", { x = -v.velocity.x }))
        end

        if ny > height or ny < 0 then
          dispatch(Entities.actions.updateProperty(v, "velocity", { y = -v.velocity.y }))
        end
      end
    end
  )
end

return Actions