local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
       -- shell 
        "bash",
        "python",
        -- build
        "make",
        "cmake",
       -- low level
        "c",
        "cpp",
        "fortran",
        "cuda",
       -- git
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
       -- other
        "markdown",
        "json",
      },
    },
  },
  {
   "williamboman/mason.nvim",
   opts = {
      ensure_installed = {
        "lua-language-server",
        "fortls",
        "clangd",
      },
    },
  }
}

return plugins
