-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}

-- UI
M.base_30 = {
  white = "#abb2bf",
  black = "#1e222a", -- usually your theme bg
  darker_black = "#181b21", -- 6% darker than black
  black2 = "#232731", -- 6% lighter than black
  one_bg = "#282c34", -- 10% lighter than black
  one_bg2 = "#303540", -- 6% lighter than one_bg
  one_bg3 = "#383e4b", -- 6% lighter than one_bg2
  grey = "#4b5263", -- 40% lighter than black
  grey_fg = "#5c6370", -- 10% lighter than grey
  grey_fg2 = "#676e7d", -- 5% lighter than grey
  light_grey = "#848b98",
  red = "#e06c75",
  baby_pink = "#e58f9e",
  pink = "#f3a0ac",
  line = "#2c313c", -- 15% lighter than black
  green = "#98c379",
  vibrant_green = "#a3d381",
  nord_blue = "#81a1c1",
  blue = "#61afef",
  seablue = "#4db8ff",
  yellow = "#e5c07b", -- 8% lighter than yellow
  sun = "#ebd09c",
  purple = "#c678dd",
  dark_purple = "#a95abf",
  teal = "#56b6c2",
  orange = "#d19a66",
  cyan = "#46a3b0",
  statusline_bg = "#181b21",
  lightbg = "#282c34",
  pmenu_bg = "#61afef",
  folder_bg = "#61afef",
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#1e222a",
  base01 = "#282c34",
  base02 = "#303540",
  base03 = "#5c6370",
  base04 = "#848b98",
  base05 = "#abb2bf",
  base06 = "#b8bec9",
  base07 = "#c8cee0",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#e5c07b",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#61afef",
  base0E = "#c678dd",
  base0F = "#be5046",
}

-- OPTIONAL
-- overriding or adding highlights for this specific theme only
M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#5c6370",
      italic = true,
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#e06c75" },
  },
}

-- set the theme type whether is dark or light
M.type = "dark"

-- IMPORTANT: Replace "my_theme" with the exact[118;1:3u name of your file (without .lua)
-- e.g., if saved as ~/.config/nvim/lua/themes/my_theme.lua, pass "my_theme"
M = require("base46").override_theme(M, "my_theme")

return M
