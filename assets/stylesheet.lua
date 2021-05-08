--
-- Styles let you define reusable property groups for your components
-- placing more visual settings here also keeps logic from your code
-- separated out
--

require "assets.theme"
local styles = require "moonpie.ui.styles"
local Colors = require "moonpie.graphics.colors"

styles.title = {
  backgroundColor = Colors.main
}

styles.main_menu = {
  backgroundColor = Colors.main,
  cornerRadiusX = 4,
  cornerRadiusY = 4,
  width = "45%",
  height = "30%",
  padding = 10,
}

styles.mainMenuButton = {
  width = "100%",
  fontName = "default",
  fontSize = 24,
  cornerRadiusX = 10,
  cornerRadiusY = 10,
}