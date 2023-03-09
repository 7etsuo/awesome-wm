pcall(require, "luarocks.loader")

local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")
local hotkeys_popup = require("awful.hotkeys_popup") -- Enable hotkeys help widget for VIM and other apps
local menubar = require("menubar")

-- Variables
RC = {}
RC.vars = require("main.user-variables")

-- Error handling
require("main.error-handling")

-- Themes
beautiful.init("/home/snowcrash/.config/awesome/theme.lua")

modkey = RC.vars.modkey

-- Local Library
local main = {
  layouts = require("main.layouts"),
  tags    = require("main.tags"),
  menu    = require("main.menu"),
  rules   = require("main.rules")
}

-- Custom Local Library: Keys and Mouse Binding
local binding = {
  globalbuttons = require("binding.globalbuttons"),
  clientbuttons = require("binding.clientbuttons"),
  globalkeys    = require("binding.globalkeys"),
  bindtotags    = require("binding.bindtotags"),
  clientkeys    = require("binding.clientkeys")
}

-- Layouts
RC.layouts = main.layouts()

-- Tags
RC.tags = main.tags()

-- Menu
RC.mainmenu = awful.menu({ items = main.menu() })

RC.launcher = awful.widget.launcher(
  { image = beautiful.awesome_icon, menu = RC.mainmenu }
)

-- Set the terminal for applications
menubar.utils.terminal = RC.vars.terminal

-- Mouse and Key bindings
RC.globalkeys = binding.globalkeys()
RC.globalkeys = binding.bindtotags(RC.globalkeys)


-- Set root
root.buttons(binding.globalbuttons())
root.keys(RC.globalkeys)

-- Keyboardmap indicator and switcher
mykeyboardlayout = awful.widget.keyboardlayout()

-- Statusbar: Wibar
require("deco.statusbar")

-- Rules
awful.rules.rules = main.rules(
  binding.clientkeys(),
  binding.clientbuttons()
)

-- Signals
require("main.signals")

-- Autostart Applications
awful.spawn.with_shell("1password")
