-- lua/snippets/tex.lua
local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local math = require "snippet_helpers.math"

local outside_math = {
  condition = math.not_in_math,
  show_condition = math.not_in_math,
}

local snippets = {
  s(
    { trig = "mk", name = "inline math", dscr = "LaTeX inline math" },
    fmta([[$<>$<>]], { i(1), i(0) }),
    outside_math
  ),
  s(
    { trig = "dm", name = "unnumbered equation", dscr = "LaTeX unnumbered equation macro" },
    fmta([[\neqn{<>}<>]], { i(1), i(0) }),
    outside_math
  ),
  s(
    { trig = "eqn", name = "numbered equation", dscr = "LaTeX numbered equation macro" },
    fmta([[\eqn{<>}<>]], { i(1), i(0) }),
    outside_math
  ),
  s(
    { trig = "eqna", dscr = "LaTeX aligned equation environment" },
    fmta(
      [[
        \begin{equation}
        \begin{aligned}
          <1>
        \end{aligned}
        \label{eq:<2>}
        \end{equation}
      ]],
      {
        i(1),
        i(2),
      }
    )
  ),
}

vim.list_extend(snippets, math.snippets())

return snippets
