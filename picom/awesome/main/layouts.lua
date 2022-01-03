local awful = require("awful")
local _M = {}

function _M.get()
	local layouts = {
		awful.layout.suit.tile,               -- 1:
		awful.layout.suit.max,                -- 2:
	    --  awful.layout.suit.tile.left,          -- :
	    --  awful.layout.suit.tile.bottom,        -- :
	    --  awful.layout.suit.tile.top,           -- :
	    --  awful.layout.suit.fair,               -- :
	    --  awful.layout.suit.fair.horizontal,    -- :
	    --  awful.layout.suit.spiral,             -- :
	    --  awful.layout.suit.spiral.dwindle,     -- :
	    --  awful.layout.suit.max.fullscreen,     -- :
	}
	awful.layout.layouts = layouts 		      -- this is essential for having only 2 layouts to switch between
	return layouts
end

return setmetatable(
	{},
	{ __call = function(_, ...) return _M.get(...) end }
)
