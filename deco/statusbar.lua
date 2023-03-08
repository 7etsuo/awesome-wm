-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

local _M = {}

-- Custom Local Library: Common Functional Decoration
local deco = {
  wallpaper = require("deco.wallpaper")
}

-- Wibar
awful.screen.connect_for_each_screen(function(s)
    -- Wallpaper
    set_wallpaper(s)

    -- Create a promptbox for each screen

    -- Create an imagebox widget

    -- Create a taglist widget

    -- Create a tasklist widget

    -- Create the wibox

    -- Add widgets to the wibox
end)
