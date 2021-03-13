--
-- Styles let you define reusable property groups for your components
-- placing more visual settings here also keeps logic from your code
-- separated out
--

require "assets.theme"
local styles = require "moonpie.ui.styles"

styles.fancy_title = {
  color = "red"
}

styles.hello_world = {
  background_color = "light_gray",
  margin = 10,
  padding = 20
}