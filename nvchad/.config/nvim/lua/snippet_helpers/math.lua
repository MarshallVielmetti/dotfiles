local M = {}

local function in_markdown_math()
  local cursor = vim.api.nvim_win_get_cursor(0)
  local row = cursor[1] - 1
  local column = math.max(cursor[2] - 1, 0)

  local ok, parser = pcall(vim.treesitter.get_parser, 0, "markdown")
  if not ok or not parser then
    return false
  end

  parser:parse(true)

  local found_math = false
  parser:for_each_tree(function(tree, language_tree)
    if found_math or language_tree:lang() ~= "markdown_inline" then
      return
    end

    local node = tree:root():named_descendant_for_range(row, column, row, column)
    while node do
      if node:type() == "latex_block" then
        found_math = true
        return
      end
      node = node:parent()
    end
  end)

  return found_math
end

function M.in_math()
  if vim.bo.filetype == "tex" then
    local ok, result = pcall(vim.fn["vimtex#syntax#in_mathzone"])
    return ok and result == 1
  end

  if vim.bo.filetype == "markdown" then
    return in_markdown_math()
  end

  return false
end

function M.not_in_math()
  return not M.in_math()
end

function M.snippets()
  local ls = require "luasnip"
  local s = ls.snippet
  local t = ls.text_node
  local i = ls.insert_node
  local fmta = require("luasnip.extras.fmt").fmta
  local math_only = {
    condition = M.in_math,
    show_condition = M.in_math,
  }

  local snippets = {
    s({ trig = "RR", name = "real numbers", dscr = "Blackboard-bold real numbers" }, t [[\mathbb{R}]], math_only),
    s({ trig = "EE", name = "expectation", dscr = "Blackboard-bold expectation" }, t [[\mathbb{E}]], math_only),
    s({ trig = "PP", name = "probability", dscr = "Blackboard-bold probability" }, t [[\mathbb{P}]], math_only),
    s({ trig = "in", name = "set membership", dscr = "LaTeX set-membership relation" }, t [[\in]], math_only),
    s(
      { trig = "\\bmat", name = "bmatrix", dscr = "LaTeX bracketed matrix", wordTrig = false },
      fmta(
        [[
          \begin{bmatrix}
            <>
          \end{bmatrix}<>
        ]],
        { i(1), i(0) }
      ),
      math_only
    ),
    s({ trig = "bf", name = "mathbf", dscr = "Bold math symbol" }, fmta([[\mathbf{<>}<>]], { i(1), i(0) }), math_only),
    s(
      { trig = "frac", name = "fraction", dscr = "LaTeX fraction" },
      fmta([[\frac{<>}{<>}<>]], { i(1), i(2), i(0) }),
      math_only
    ),
  }

  for code = string.byte "A", string.byte "Z" do
    local letter = string.char(code)
    table.insert(
      snippets,
      s({
        trig = "\\" .. letter .. "cal",
        name = "mathcal " .. letter,
        dscr = "Calligraphic " .. letter,
        wordTrig = false,
      }, t("\\mathcal{" .. letter .. "}"), math_only)
    )
  end

  return snippets
end

return M
