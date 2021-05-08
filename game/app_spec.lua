
describe("game.app", function()
  local Moonpie = require "moonpie"
  local App = require "game.app"

  it("can load", function()
    App.load()
  end)

  it("can display the title screen", function()
    App.title()
    assert.not_nil(Moonpie.ui.current.findByID("titleScreen"))
  end)

  it("can display the game screen", function()
    App.newGame()
    assert.not_nil(Moonpie.ui.current.findByID("gameScreen"))
  end)
end)