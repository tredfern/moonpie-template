-- Copyright (c) 2021 Trevor Redfern
-- 
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local Thunk = require "moonpie.redux.thunk"
local Colors = require "moonpie.graphics.colors"

local Actions = {}
Actions.types = require "game.rules.shapes.types"

function Actions.add(shape, color, position, size)
  return {
    type = Actions.types.ADD,
    payload = {
      shape = shape,
      color = color,
      position = position,
      size = size,
      speed = { math.random(-50, 50), math.random(-50, 50) }
    }
  }
end

function Actions.setup()
  return Thunk(
    Actions.types.SETUP,
    function(dispatch)
      dispatch(Actions.add("circle", Colors.red, { 125, 70 }, 50))
      dispatch(Actions.add("circle", Colors.green, { 325, 220 }, 25))
      dispatch(Actions.add("rectangle", Colors.blue, { 225, 120 }, 150))
      dispatch(Actions.add("rectangle", Colors.purple, { 425, 420 }, 5))
    end
  )
end

function Actions.updatePosition(entityId, position)
  return {
    type = Actions.types.UPDATE_POSITION,
    payload = {
      entityId = entityId,
      position = position
    }
  }
end

function Actions.updateSpeed(entityId, speed)
  return {
    type = Actions.types.UPDATE_SPEED,
    payload = {
      entityId = entityId,
      speed = speed
    }
  }
end

function Actions.update(width, height)
  local Selectors = require "game.rules.shapes.selectors"
  return Thunk(
    Actions.types.UPDATE,
    function(dispatch, getState)
      local shapes = Selectors.getAll(getState())
      local dt = love.timer.getDelta()

      for _, v in ipairs(shapes) do
        local nx = v.position[1] + (dt * v.speed[1])
        local ny = v.position[2] + (dt * v.speed[2])
        dispatch(Actions.updatePosition(v.entityId, { nx, ny }))

        if nx > width or nx < 0 then
          dispatch(Actions.updateSpeed(v.entityId, { -v.speed[1], v.speed[2]}))
        end

        if ny > height or ny < 0 then
          dispatch(Actions.updateSpeed(v.entityId, { v.speed[1], -v.speed[2]}))
        end
      end
    end
  )
end
return Actions