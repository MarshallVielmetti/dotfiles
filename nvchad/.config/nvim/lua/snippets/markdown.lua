local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local math = require "snippet_helpers.math"

local markdown_only = {
  condition = math.not_in_math,
  show_condition = math.not_in_math,
}

local snippets = {
  s(
    { trig = "dm", name = "display math", dscr = "Markdown display math block" },
    fmta(
      [[
        $$
        <>
        $$
      ]],
      { i(1) }
    ),
    markdown_only
  ),
  s(
    { trig = "mk", name = "inline math", dscr = "Markdown inline math" },
    fmta([[$<>$<>]], { i(1), i(0) }),
    markdown_only
  ),
}

vim.list_extend(snippets, math.snippets())

return snippets
