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
Colors.oxford_blue = Colors.convert_hex("#0a2239")
Colors.outer_space_crayola = Colors.convert_hex("#132e32")
Colors.cerulean_crayola = Colors.convert_hex("#21a5d0")
Colors.antique_bronze = Colors.convert_hex("#665e29")
Colors.beaver = Colors.convert_hex("#ac9281")
Colors.grullo = Colors.convert_hex("#b69f90")
Colors.baby_powder = Colors.convert_hex("#fbfbf2")
Colors.goldenrod = Colors.convert_hex("#e6af2e")
Colors.titanium_yellow = Colors.convert_hex("#f0e100")
Colors.lava = Colors.convert_hex("#c42021")
Colors.pakistan_green = Colors.convert_hex("#2a7221")
Colors.dark_spring_green = Colors.convert_hex("#2c6e49")

Colors.light_shade = "baby_powder"
Colors.light_accent = "beaver"
Colors.main = "cerulean_crayola"
Colors.dark_accent = "outer_space_crayola"
Colors.dark_shade = "oxford_blue"

Colors.button_default = "main"
Colors.button_default_hover = Colors.lighten(Colors.main, 0.2)
Colors.button_text = Colors.light_shade
Colors.primary = Colors.main
Colors.info = Colors.beaver
Colors.success = Colors.dark_spring_green
Colors.warning = Colors.titanium_yellow
Colors.danger = Colors.lava

Colors.background = "dark_shade"
Colors.text = "light_shade"
Colors.accent = "dark_accent"
Colors.invert_background = "light_shade"
Colors.invert_text = "dark_shade"
Colors.grid_lines = Colors.baby_powder
