-- This line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}

-- [[ UI COLORS ]] --
M.base_30 = {
  -- Core background and UI surface colors (dark mode)
  black = "#0f1a2a", -- Primary Editor Background (from deep mountain shadows)
  darker_black = "#0b141f", -- 6% darker than black (NvimTree background)
  black2 = "#162331", -- 6% lighter than black (used for line number bg)
  one_bg = "#1e2f41", -- 10% lighter than black (floating windows background)
  one_bg2 = "#273a50", -- 6% lighter than one_bg (diff change, tabline bg)
  one_bg3 = "#31465e", -- 6% lighter than one_bg2
  line = "#192737", -- Cursorline, subtle shadow gradient

  -- Text colors
  white = "#d5dfe7", -- Default Text (lightest cloud-white from sunset)
  grey = "#5f728c", -- 40% lighter than black (Comments and subtle UI text)
  grey_fg = "#60738d", -- 10% lighter than grey
  grey_fg2 = "#677b94", -- 5% lighter than grey
  light_grey = "#7c8ca3",

  -- Semantic and Syntax Accent Colors (extracted from image)
  red = "#e1847e", -- From core sunset orange-red (Variables, special tags)
  baby_pink = "#ef9f93", -- Soft salmon pink from sky (Special variables)
  pink = "#f3a4bd", -- A cooler mauve-pink from the sky
  green = "#4ccca0", -- Cool water-cyan/green from ice edge (Strings, diff insert)
  vibrant_green = "#67eebf",
  nord_blue = "#4c7a9f", -- Nordic blue-grey from illuminated snow (Keywords, classes)
  blue = "#C4E0FF", -- Core cool-blue shadow (Functions, methods)
  seablue = "#0077b2", -- Brighter seablue from distant sea hint (Markdown links)
  yellow = "#f3d6aa", -- Pale yellow from sunset horizon (Numbers, types)
  sun = "#f9e7c8", -- 8% lighter peach-yellow from sun haze
  purple = "#7a6e87", -- Dusky mauve-purple from sunset sky (Operators, headings)
  dark_purple = "#61596b", -- Deeper purple
  teal = "#a4cad8", -- Ice-blue-grey from glaciated mountains (Booleans, constant)
  orange = "#e1847e", -- Salmon orange from sunset clouds (Strings)
  cyan = "#8ac7db", -- Brighter cyan (Tags)

  -- UI Specific Colors
  statusline_bg = "#0f1a2a", -- Matches primary editor background
  lightbg = "#1e2f41", -- Background for floats (pmenu_bg is a variant)
  pmenu_bg = "#d7c8d7", -- Pop-up menu background, soft sunset mauve-peach cloud
  folder_bg = "#a4cad8", -- Matches teal, from ice-blue shadows
}

-- [[ BASE16 SYNTAX COLORS ]] --
-- check https://github.com/chriskempson/base[118;1:3u16/blob/master/styling.md for more info
M.base_16 = {
  base00 = "#0f1a2a", -- Default Background (black)
  base01 = "#162331", -- Lighter Background (black2)
  base02 = "#1e2f41", -- Selection Background (one_bg)
  base03 = "#5f728c", -- Comments, Invisibles, Line Highlighting (grey)
  base04 = "#60738d", -- Dark Foreground (Used for status bars) (grey_fg)
  base05 = "#d5dfe7", -- Default Foreground, Caret, Delimiters, Operators (white)
  base06 = "#677b94", -- Light Foreground (Used for status bars) (grey_fg2)
  base07 = "#273a50", -- Light Background (Used for tabs) (one_bg2)
  base08 = "#e1847e", -- Variables, XML Tags, Markup Link Text (red)
  base09 = "#e1847e", -- Integers, Booleans, Constants, XML Attributes (orange)
  base0A = "#f3d6aa", -- Classes, Types, Markup Bold (yellow)
  base0B = "#f3d6aa", -- Strings, Inherited Class, Markup Code, Diff Insert (green)
  base0C = "#8ac7db", -- Support, Regular Expressions, Escape Characters, Markup Quotes (cyan)
  base0D = "#C4E0FF", -- Functions, Methods, Attribute IDs, Headings (blue)
  base0E = "#7a6e87", -- Keywords, Storage, Selector, Markup Italic (purple)
  base0F = "#9e7d95", -- Deprecated, Opening/Closing Embedded Language Tags (a muted purple)
}

-- [[ OPTIONAL POLISH OVERRIDES ]] --
-- overriding or adding highlights for this specific theme only
M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#5f728c", -- Grey-blue, from shadows, slightly muted
      bg = "NONE",
      italic = true,
    },
  },

  treesitter = {
    -- Tree-sitter variable highligting: Using core sunset salmon orange
    ["@variable"] = { fg = "#e1847e" },
    -- Property and structure highlighting: Using a lighter shade of red
    ["@property"] = { fg = "#ef9f93" },
  },
}

-- set the theme type whether is dark or light
M.type = "dark"

-- IMPORTANT: Replace "my_theme" with the exact name of your file (without .lua)
-- e.g., if saved as ~/.config/nvim/lua/themes/my_theme.lua, pass "my_theme"
-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "glacier_sunset")

return M
