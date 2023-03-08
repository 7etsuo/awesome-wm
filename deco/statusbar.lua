-- Standard awesome library
local gears = require("gears")
local awful = require("awful")

local _M = {}

-- Custom Local Library: Common Functional Decoration
local deco = {
  wallpaper = require("deco.wallpaper")
  taglist   = require("deco.taglist")
}

local taglist_buttons = deco.taglist()

awful.screen.connect_for_each_screen(function(s)
    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist {
      screen  = s,
      filter  = awful.widget.tasklist.filter.currenttags,
      buttons = tasklist_buttons
    }
end)

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
