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
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "c",
        "markdown",
        "markdown_inline",
        "norg",
        "norg_meta",
        "java",
        "python",
        "go",
        "jq",
        "gdscript",
        "cpp",
        "http",
        "json",
        "terraform",
        "hcl",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "php",
        "gomod",
        "bash",
        "scheme",
        "yaml",
        "dockerfile",
        "fish",
        "tmux",
        "c_sharp",
        "csv",
        "latex",
      },
      indent = {
        enable = true,
      },
      highlight = {
        enable = true,
        use_languagetree = true,
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
    ft = { "norg" },
    cmd = { "Neorg" },
    version = "*", -- Pin Neorg to the latest stable release
    config = function()
      require("neorg").setup {
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
                legacy = "~/neorg_notes/legacy",
                lab = "~/neorg_notes/lab",
                stack = "~/neorg_notes/stack",
                chore = "~/neorg_notes/chore",
                -- dev = "~/dev",
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
          ["core.integrations.telescope"] = {},
          -- ["core.tempus"] = {},
          -- ['core.integrations.zen_mode'] = {},
          -- ['core.integrations.truezen'] = {},
          ["core.integrations.treesitter"] = {},
          ["core.summary"] = {},
        },
      }
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
    dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" } },
  },
  {
    "folke/zen-mode.nvim",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    cmd = { "ZenMode" },
  },
  {
    "windwp/nvim-ts-autotag",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup {
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
        -- Also override individual filetype configs, these take priority.
        -- Empty by default, useful if one of the "opts" global settings
        -- doesn't work well in a specific filetype
        per_filetype = {
          ["html"] = {
            enable_close = false,
          },
        },
      }
    end,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- lazy = false,
    cmd = { "Oil" },
  },
  {
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
  },
  {
    "benfowler/telescope-luasnip.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        prompt_prefix = " σ  ",
        -- buffer_previewer_maker = filter_long_line_files,
        mappings = {
          n = {
            ["q"] = require("telescope.actions").close,
            -- ["gt"] = require("telescope-live-grep-args.shortcuts").grep_word_under_cursor(),
          },
        },
      },
      extensions_list = { "themes", "terms", "live_grep_args", "file_browser", "luasnip", "neorg" },
      extensions = {
        file_browser = {
          dir_icon = "",
          -- dir_icon_hl = 'gui=bold term=bold cterm=bold',
        },
      },
    },
    keys = {
      {
        "gt",
        function()
          require("telescope-live-grep-args.shortcuts").grep_word_under_cursor()
        end,
        desc = "Find for word under cursor",
      },
    },
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {}
    end,
    event = "LspAttach",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    ---
    opts = {},
    event = "VeryLazy",
    config = function()
      require("render-markdown").setup {
        -- Mimic org-indent-mode behavior by indenting everything under a heading based on the
        -- level of the heading. Indenting starts from level 2 headings onward.
        indent = {
          -- Turn on / off org-indent-mode
          enabled = true,
          -- Amount of additional padding added for each heading level
          per_level = 2,
          -- Heading levels <= this value will not be indented
          -- Use 0 to begin indenting from the very first level
          skip_level = 1,
          -- Do not indent heading titles, only the body
          skip_heading = false,
        },
      }
    end,
  },
  {
    "3rd/image.nvim",
    build = false, -- so that it doesn't build the rock https://github.com/3rd/image.nvim/issues/91#issuecomment-2453430239
    opts = {},
    event = 'VeryLazy',
    config = function()
      require("image").setup({
        processor = "magick_cli", -- or "magick_cli"
      })
    end,
  }
}
