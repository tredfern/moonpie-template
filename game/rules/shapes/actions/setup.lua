local Thunk = require "moonpie.redux.thunk"
local Colors = require "moonpie.graphics.colors"
local addShape = require "game.rules.shapes.actions.add"
local actionTypes = require "game.rules.shapes.actions.types"

return function()
  return Thunk(
    actionTypes.SETUP,
    function(dispatch)
      dispatch(addShape("circle", Colors.red, { 125, 70 }, 50))
      dispatch(addShape("circle", Colors.green, { 325, 220 }, 25))
      dispatch(addShape("rectangle", Colors.blue, { 225, 120 }, 150))
      dispatch(addShape("rectangle", Colors.purple, { 425, 420 }, 5))
    end
  )
end