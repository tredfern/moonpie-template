require "assets.stylesheet"
local moonpie = require "moonpie"
local store = require "game.store"
local Components = require "moonpie.ui.components"
local app = {}

--
-- Called by main to specify the app should load
--
function app.load()
  store.reset()
  app.title()
  moonpie.events.afterUpdate:add(app.update)
end

--
-- Simplest way to render content to the UI layer
-- scene: Any components you'd like to display
--
function app.render(scene)
  moonpie.render(
    Components.body { scene }
  )
end

function app.update()
  if app.state == "playGame" then
    local Shapes = require "game.rules.shapes"
    local gameView = moonpie.ui.current.findByID("gameViewport")
    store.dispatch(Shapes.actions.update(gameView.box.width, gameView.box.height))
  end
end

function app.quitGame()
  love.event.quit()
end

--
-- Example game state to render, in this case... hello world
--
function app.title()
  local Title = require "game.ui.screens.title"
  app.render(Title { gameTitle = "Moonpie Template" })
  app.state = "title"
end

function app.newGame()
  store.reset()

  local Shapes = require "game.rules.shapes"
  store.dispatch(Shapes.actions.setup())

  local Game = require "game.ui.screens.game"
  app.render(Game())
  app.state = "playGame"
end

return app