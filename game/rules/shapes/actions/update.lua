local Thunk = require "moonpie.redux.thunk"
local actionTypes = require "game.rules.shapes.actions.types"

return function(width, height)
  local Shapes = require "game.rules.shapes"
  return Thunk(
    actionTypes.UPDATE,
    function(dispatch, getState)
      local shapes = Shapes.selectors.getAll(getState())
      local dt = love.timer.getDelta()

      for _, v in ipairs(shapes) do
        local nx = v.position[1] + (dt * v.speed[1])
        local ny = v.position[2] + (dt * v.speed[2])
        dispatch(Shapes.actions.updatePosition(v.entityId, { nx, ny }))

        if nx > width or nx < 0 then
          dispatch(Shapes.actions.updateSpeed(v.entityId, { -v.speed[1], v.speed[2]}))
        end

        if ny > height or ny < 0 then
          dispatch(Shapes.actions.updateSpeed(v.entityId, { v.speed[1], -v.speed[2]}))
        end
      end
    end
  )

end