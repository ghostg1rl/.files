local awful = require("awful")

-- Dynamic tags configuration module
local _M = {}

function _M.get()
    tags = {}

    awful.screen.connect_for_each_screen(function(s)
        -- Each screen has its own tag table.
        tags = awful.tag({ "main", "net", "read", "art", "msgs", "sys" }, s, rc.layouts[1])
    end)

    return tags
end

return setmetatable(
    {},
    { __call = function(_, ...) return _M.get(...) end }
)
