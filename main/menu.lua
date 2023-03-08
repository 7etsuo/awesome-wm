local awful         = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup").widget
local beautiful     = require("beautiful")

local M = {}
local _M = {}

local terminal = RC.vars.terminal
local editor = emacs or os.getenv("EDITOR") or "nano"
local editor_cmd = terminal .. " -e " .. editor

M.awesome = {
  { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
  { "manual", RC.vars.terminal .. " -e man awesome" },
  { "edit config", editor_cmd .. " " .. awesome.conffile },
  { "restart", awesome.restart },
  { "quit", function() awesome.quit() end },
}

M.favorite = {
  { "firefox", "firefox", awful.util.getdir("config") .. "/firefox.png" },
  { "&thunderbird", "thunderbird" },
  { "&firefox", "firefox" },
  { "emacs", "emacs" },
  { "screenshooter", "xfce4-screenshooter" }
}

function _M.get()

  local menu_items = {
    { "awesome", M.awesome, beautiful.awesome_icon },
    { "open terminal", RC.vars.terminal },
    { "favorite", M.favorite }
  }
  return menu_items
end

return setmetatable(
  {},
  { __call = function(_, ...) return _M.get(...) end }
)
