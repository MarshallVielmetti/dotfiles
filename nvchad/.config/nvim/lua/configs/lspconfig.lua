require("nvchad.configs.lspconfig").defaults()

local nvim_lsp = require "lspconfig"
local on_attach = require("nvchad.configs.lspconfig").on_attach
local capabilities = require("nvchad.configs.lspconfig").capabilities

-- 1. Apply global defaults
vim.lsp.config("*", {
  on_attach = on_attach,
  capabilities = capabilities,
})

-- 2. Define custom dynamic configuration for Pyright
vim.lsp.config("pyright", {
  on_init = function(client)
    local root = client.workspace_folders and client.workspace_folders[1] and client.workspace_folders[1].name
      or vim.fn.getcwd()

    -- Common local virtual environment directory names
    local venv_names = { ".venv", "venv", "env" }
    local found_python = nil

    for _, name in ipairs(venv_names) do
      local path = root .. "/" .. name .. "/bin/python"
      if vim.fn.executable(path) == 1 then
        found_python = path
        break
      end
    end

    -- If a local venv python binary is found, inject it explicitly into this client instance
    if found_python then
      client.config.settings.python = client.config.settings.python or {}
      client.config.settings.python.pythonPath = found_python

      -- Optional: print a silent notification to confirm attachment
      vim.notify("Pyright linked to local venv: " .. found_python, vim.log.levels.INFO)
    end

    return true
  end,
  settings = {
    pyright = {
      disableOrganizeImports = true, -- Handled by Ruff
    },
    python = {
      analysis = {
        autoSearchPaths = true,
        typeCheckingMode = "basic",
        useLibraryCodeForTypes = true,
      },
    },
  },
})

local servers = { "html", "cssls", "marksman", "pyright", "ruff" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
