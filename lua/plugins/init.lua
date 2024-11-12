return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "Gw", "Gr", "Gsplit", "Gedit" },
    -- lazy = false,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css","javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
        -- "norg",
        -- "norg_meta",
        "java",
        'python',
        'go',
        'jq',
        'gdscript',
        'cpp',
        'http',
        'json',
        'terraform',
        'hcl',
      },
  	},
  },
}
