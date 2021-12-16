local Components = require "moonpie.ui.components"
local Colors = require "moonpie.graphics.colors"
local graphics = love.graphics
local Shapes = require "game.rules.shapes"
local connect = require "moonpie.state.connect"

local GameScreen = Components("game_screen", function(props)
  return {
    id = "gameViewport",
    width = "100%",
    height = "90%", -- Some improvements are still possible on height layout calculations.... SORRY!
    allShapes = props.allShapes,
    drawComponent = function(self)
      if self.allShapes then
        for _, v in ipairs(self.allShapes) do
          graphics.setColor(Colors(v.color))
          if v.shape == "rectangle" then
            graphics.rectangle("fill", v.position.x, v.position.y, v.size, v.size)
          else
            graphics.circle("fill", v.position.x, v.position.y, v.size)
          end
        end
      end
    end
  }
end)

return connect(
  GameScreen,
  function(state)
    return {
      allShapes = Shapes.selectors.getAll(state)
    }
  end
)