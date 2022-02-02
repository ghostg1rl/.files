local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

local M = {}  -- menu

M.awful_menu = {
  { "hotkeys", function() hotkeys_popup.show_help(nil, awful.screen.focused()) end },
  { "manual", rc.vars.editor .. " -e man awesome" },
  { "edit config", rc.vars.editor .. " " .. awesome.conffile },
  { "restart", awesome.restart },
  { "quit", function() awesome.quit() end }
}

-- TODO: add necessary applications when finished for the most part.
M.apps = {
}


local _M = {}
function _M.get()
  local main_menu = awful.menu({ items = { { "applications", M.apps },
                                           { "awesome" ,     M.awful_menu },
                                           { "terminal",     rc.vars.terminal },
                                           { "browser" ,     rc.vars.browser }
                                         }
                               })
  return main_menu
end

return setmetatable(
  {},
  { __call = function(_, ...) return _M.get(...) end }
)
