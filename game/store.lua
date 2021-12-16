local store = require "moonpie.state.store"
local combine_reducers = require "moonpie.state.combine_reducers"

local function getReducers()
  return combine_reducers {
    entities = require "moonpie.entities.reducer"
    -- Add Reducers Here
  }
end

store.reset = function(state)
  store.createStore(
    getReducers(),
    state or {}
  )
end

store.dumpState = function()
  local printTable = require "moonpie.utility.print_table"
  local stateString = printTable(store.getState())
  love.filesystem.write("game_state.dump", stateString)
end

store.reset()

return store