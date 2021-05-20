local Components = require "moonpie.ui.components"
local App = require "game.app"

local MainMenu = Components("main_menu", function()
  return {
    id = "mainMenu",
    style = "align-center align-middle",
    Components.button { caption = "Start", click = App.newGame, style = "mainMenuButton button-primary" },
    Components.button { caption = "Quit", click = App.quitGame, style = "mainMenuButton button-danger" }
  }
end)

return MainMenu