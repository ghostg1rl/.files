local _M = {}

function _M.get ()
  local var_name = {}

  var_name.terminal = "kitty"
  var_name.browser = "firefox"
  var_name.rofi = "rofi -show drun -show-icons"

  var_name.editor = os.getenv("EDITOR") or "nvim"
  var_name.editor_cmd = var_name.terminal .. " -e " .. var_name.editor

  var_name.modkey = "Mod4"
  -- user defined wallpaper
  --var_name.wallpaper = home .. "/Pictures/your-wallpaper-here.jpg",

  return var_name
end

return setmetatable(
  {},
  { __call = function(_, ...) return _M.get(...) end }
)
