local beautiful = require("beautiful")
local home      = os.getenv("HOME")

-- Themes define colours, icons, font and wallpapers.
beautiful.init("/home/snowcrash/.config/awesome/theme.lua")

local _M = {
  -- Variable definitions

  terminal = "alacritty",
  modkey = "Mod4",

}


return _M
