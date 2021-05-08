local actionTypes = require "game.rules.shapes.actions.types"

return function(entityId, speed)
  return {
    type = actionTypes.UPDATE_SPEED,
    payload = {
      entityId = entityId,
      speed = speed
    }
  }
end