return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "python",
      },
      highlight = {
        enable = true,
        -- Disabling standard regex highlighting ensures Tree-sitter completely takes over
        additional_vim_regex_highlighting = false,
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "marksman",
        "markdownlint",
        "pyright",
      },
    },
  },
  {
    "aserowy/tmux.nvim",
    event = "VeryLazy",
    config = function()
      require("tmux").setup {
        navigation = {
          enable_default_keybindings = true,
        },
      }
    end,
  },
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      -- The simple viewer is the reliable Zathura integration on macOS.
      -- SyncTeX needs a separately configured D-Bus session, so leave it off
      -- until that is intentionally set up.
      vim.g.vimtex_view_method = "zathura_simple"
      vim.g.vimtex_view_zathura_use_synctex = 0
      -- Keep Zathura on a separate PDF that VimTeX refreshes only after a
      -- successful compile, so it never reads the PDF being written by TeX.
      vim.g.vimtex_view_use_temp_files = 1
      vim.g.vimtex_compiler_method = "latexmk"
      vim.g.vimtex_compiler_latexmk = {
        out_dir = "build",
        options = {
          "-pdf",
          "-interaction=nonstopmode",
          "-synctex=1",
          "-file-line-error",
          -- Check for saved source changes every 0.1 seconds instead of the
          -- latexmk default two-second interval.
          [[-e '$sleep_time = 0.1']],
        },
      }
      vim.g.vimtex_quickfix_mode = 0
    end,
  },
}
