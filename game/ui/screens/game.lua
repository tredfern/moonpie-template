local Components = require "moonpie.ui.components"
local GameScreen = require "game.ui.widgets.game_screen"
local App = require "game.app"


local Game = Components("game", function()
  return {
    id = "gameScreen",
    Components.h1 { text = "Game Screen" },
    Components.button {
      caption = "Title",
      click = App.title,
      style = "align-right",
      margin = { top = 10, right = 10 } },
    GameScreen()
  }
end)

return Game