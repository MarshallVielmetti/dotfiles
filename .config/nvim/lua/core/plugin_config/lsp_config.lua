require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "typos_lsp", "bashls", "clangd", "cmake", "cssls", "dockerls", "docker_compose_language_service", "html", "jsonls", "lua_ls", "tsserver", "biome", "julials", "ltex", "marksman", "pylsp", "lemminx", "yamlls"}
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end


require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {
              on_attach = on_attach
            }
        end
}

