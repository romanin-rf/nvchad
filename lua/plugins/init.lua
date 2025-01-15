return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css",
        "python", "cpp", "c",
        "java",
        "make", "cmake",
        "javascript", "typescript", "jsdoc",
        "json", "json5", "yaml", "hjson", "ini", "toml", "xml",
        "php", "sql",
        "regex",
        "gitcommit", "gitattributes", "gitignore",
        "git_config", "git_rebase",
        "ssh_config",
      }
    }
  },
  { 'wakatime/vim-wakatime', lazy = false }
}
