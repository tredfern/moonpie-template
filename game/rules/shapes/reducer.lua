local createSlice = require "moonpie.redux.create_slice"
local actionTypes = require "game.rules.shapes.actions.types"


return createSlice {
  initialState = {},

  [actionTypes.UPDATE_POSITION] = function(state, action)
    state[action.payload.entityId].position = action.payload.position

    return state
  end,

  [actionTypes.UPDATE_SPEED] = function(state, action)
    state[action.payload.entityId].speed = action.payload.speed

    return state
  end,

  [actionTypes.ADD] = function(state, action)
    local id = #state + 1
    state[id] = {
      entityId = id,
      shape = action.payload.shape,
      color = action.payload.color,
      position = action.payload.position,
      size = action.payload.size,
      speed = action.payload.speed
    }

    return state
  end
}