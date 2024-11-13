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
        "norg",
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
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false,  -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {
            config = {
              folds = false,
              icons = {
                code_block = false,
              },
            },
          }, -- Adds pretty icons to your documents
          -- ['core.ui.calendar'] = {},
          -- ['core.integrations.nvim-cmp'] = {},
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
              name = "[Neorg]",
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                idlestic = "~/neorg_notes/idlestic/",
                drafts = "~/neorg_notes/drafts",
                lab = "~/neorg_notes/lab",
                idlex = "~/neorg_notes/idlex.cc",
                plan = "~/plan",
              },
            },
          },
          ["core.export"] = {},
          ["core.export.markdown"] = { config = { extensions = "all" } },
          -- ["core.gtd"] = {
          --   config = { -- Note that this table is optional and doesn't need to be provided
          --     workspace = 'gtd'
          --   },
          -- },
          ["core.ui"] = {},
          ["core.highlights"] = {},
          -- ["core.gtd.base"] = {
          --   config = {
          --     workspace = "gtd",                   -- assign the workspace,
          --     exclude = { "file_to_exclude.norg" } -- Optional: all excluded files from the workspace are not part of the gtd workflow
          --   }
          -- },
          ["core.ui.calendar"] = {},
          -- ["core.tempus"] = {},
          -- ['core.integrations.zen_mode'] = {},
          -- ['core.integrations.truezen'] = {},
          -- ["core.integrations.treesitter"] = {
          -- },
        }
      })
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  }
}
