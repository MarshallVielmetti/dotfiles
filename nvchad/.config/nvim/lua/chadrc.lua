-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "laptop",
  -- theme = "laptop",
  transparency = true,

  hl_add = {
    ["@markup.heading.1.markdown"] = { fg = "baby_pink", bold = true },
    ["@markup.heading.2.markdown"] = { fg = "yellow", bold = true },
    ["@markup.heading.3.markdown"] = { fg = "vibrant_green", bold = true },
    ["@markup.heading.4.markdown"] = { fg = "cyan", bold = true },
    ["@markup.heading.5.markdown"] = { fg = "blue", bold = true },
    ["@markup.heading.6.markdown"] = { fg = "pink", bold = true },
    ["@markup.strong.markdown"] = { fg = "yellow", bold = true },
    ["@markup.italic.markdown"] = { fg = "pink", italic = true },
    ["@markup.strikethrough.markdown"] = { fg = "grey_fg2", strikethrough = true },
    ["@markup.quote.markdown"] = { fg = "light_grey", italic = true },
    ["@markup.raw.markdown"] = { fg = "green" },
    ["@markup.raw.block.markdown"] = { fg = "green" },
    ["@markup.link.markdown"] = { fg = "teal" },
    ["@markup.link.label.markdown"] = { fg = "teal" },
    ["@markup.link.url.markdown"] = { fg = "blue", underline = true },
    ["@markup.list.markdown"] = { fg = "baby_pink" },
    ["@markup.list.checked.markdown"] = { fg = "green", bold = true },
    ["@markup.list.unchecked.markdown"] = { fg = "light_grey" },
  },
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
