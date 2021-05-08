local actionTypes = require "game.rules.shapes.actions.types"

return function(shape, color, position, size)
  return {
    type = actionTypes.ADD,
    payload = {
      shape = shape,
      color = color,
      position = position,
      size = size,
      speed = { math.random(-50, 50), math.random(-50, 50) }
    }
  }
end