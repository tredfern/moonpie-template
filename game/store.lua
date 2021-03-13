-- Copyright (c) 2021 Trevor Redfern
--
-- This software is released under the MIT License.
-- https://opensource.org/licenses/MIT

local store = require "moonpie.redux.store"
local combine_reducers = require "moonpie.redux.combine_reducers"

local function getReducers()
  return combine_reducers {
    settings = require "game.settings.reducer"
  }
end

store.reset = function(state)
  store.createStore(
    getReducers(),
    state
  )
end

store.dumpState = function()
  local printTable = require "moonpie.utility.print_table"
  local stateString = printTable(store.getState())
  love.filesystem.write("game_state.dump", stateString)
end

store.reset()

return store