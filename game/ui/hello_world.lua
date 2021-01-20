
-- This is a sample of creating a basic component made up of other components
-- You can break down your components as specifically as makes sense

local components = require "moonpie.ui.components"


-- props are values that can be passed to your component to change behavior
local hello_world = components("hello_world", function(props)
  return {
    style = "hello_world",
    components.h1 { text = "A Title", style = "fancy_title" },
    components.hr(),
    components.button {
      caption = "Hello World, now quit",
      click = function() props.quit_routine() end,
      style = "button-success"
    }
  }
end)

return hello_world