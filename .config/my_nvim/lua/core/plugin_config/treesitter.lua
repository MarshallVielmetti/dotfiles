require'nvim-treesitter.configs'.setup {
  
  ensure_installed = {"bash", "c", "cmake", "cpp", "css", "csv", "cuda", "diff", "dockerfile", "fsh", "gitignore", "html", "htmldjango", "http", "java", "javascript", "json", "json5", "julia", "latex", "lua", "make", "python", "sql", "ssh_config", "tmux", "toml", "tsx", "typescript", "vim", "yaml" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
}
