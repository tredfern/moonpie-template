return {
  actions = {
    add = require "game.rules.shapes.actions.add",
    setup = require "game.rules.shapes.actions.setup",
    update = require "game.rules.shapes.actions.update",
    updatePosition = require "game.rules.shapes.actions.update_position",
    updateSpeed = require "game.rules.shapes.actions.update_speed"
  },
  selectors = {
    getAll = require "game.rules.shapes.selectors.get_all"
  }
}