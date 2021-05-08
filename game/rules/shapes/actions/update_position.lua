local actionTypes = require "game.rules.shapes.actions.types"

return function(entityId, position)
  return {
    type = actionTypes.UPDATE_POSITION,
    payload = {
      entityId = entityId,
      position = position
    }
  }
end