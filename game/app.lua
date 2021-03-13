require "assets.stylesheet"
local moonpie = require "moonpie"
local store = require "game.store"
local components = require "moonpie.ui.components"
local app = {}

--
-- Called by main to specify the app should load
--
function app.load()
  store.reset()
  app.hello_world()
end

--
-- Simplest way to render content to the UI layer
-- scene: Any components you'd like to display
--
function app.render(scene)
  moonpie.render(
    "ui",
    components.body(scene)
  )
end

function app.quit()
  love.event.quit()
end

--
-- Example game state to render, in this case... hello world
--
function app.hello_world()
  local hello_world = require "game.ui.hello_world"
  app.render(hello_world {
    quit_routine = app.quit
  })
end

return app