-- Fonts
-- Standard types "default", "default-bold", "headline", "headline-bold", "fixed", fixed-bold", "not-set"
local Font = require "moonpie.graphics.font"
local Colors = require "moonpie.graphics.colors"

-- Headline and default fonts basic styles
Font:register("assets/fonts/Roboto-Regular.ttf", "default")
Font:register("assets/fonts/Roboto-Regular.ttf", "default-bold")
Font:register("assets/fonts/Righteous-Regular.ttf", "headline")
Font:register("assets/fonts/Righteous-Regular.ttf", "headline-bold")

-- Colors
Colors.imperial_red = Colors.convert_hex("#E63946")
Colors.honeydew = Colors.convert_hex("#F1FAEE")
Colors.powder_blue = Colors.convert_hex("#A8DADC")
Colors.celadon_blue = Colors.convert_hex("#457B9D")
Colors.prussian_blue = Colors.convert_hex("#1D3557")

Colors.light_shade = Colors.honeydew
Colors.light_accent = Colors.powder_blue
Colors.main = Colors.celadon_blue
Colors.dark_accent = Colors.celadon_blue
Colors.dark_shade = Colors.prussian_blue

Colors.button_default = Colors.main
Colors.button_default_hover = Colors.lighten(Colors.main, 0.2)
Colors.button_text = Colors.dark_shade
Colors.primary = Colors.light_accent

Colors.background = "dark_shade"
Colors.text = Colors.light_shade
Colors.accent = "dark_accent"
Colors.invert_background = "light_shade"
Colors.invert_text = "dark_shade"