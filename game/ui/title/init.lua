local Components = require "moonpie.ui.components"
local mainMenu = require "game.ui.title.main_menu"

local Title = Components("title", function(props)
  return {
    id = "titleScreen",
    Components.h1 { text = props.gameTitle },
    Components.hr(),
    mainMenu()
  }
end)

return Title