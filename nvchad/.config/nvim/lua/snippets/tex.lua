-- lua/snippets/tex.lua
local ls = require "luasnip"
local s = ls.snippet
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta

return {
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
