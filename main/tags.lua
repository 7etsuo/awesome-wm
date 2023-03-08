local awful = require("awful")

local _M = {}

function _M.get ()
  tags = {}

  local parings = {
    names = {"❶ Main", "❷ Irc", "❸ Code",
             "❹ Osed", "❺ Ida", "❻ Windows",
             "❼ Obsidian", "❽ Terminals", "❾ Web"
    },

    layouts = {
      RC.layouts[1], RC.layouts[11], RC.layouts[4],
      RC.layouts[5], RC.layouts[6], RC.layouts[6],
      RC.layouts[11], RC.layouts[5], RC.layouts[2]
    }

  }
  awful.screen.connect_for_each_screen(function(s)
      tags[s] = awful.tag(parings.names , s, parings.layouts)
  end)

  return tags
end

return setmetatable(
  {},
  { __call = function(_, ...) return _M.get(...) end }
)

