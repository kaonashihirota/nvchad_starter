vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)


vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")


vim.cmd[[highlight NotifyINFOTitle ctermbg=0 guifg=#8FBCBB]]
vim.cmd[[highlight NotifyINFOIcon ctermbg=0 guifg=#8FBCBB]]
vim.cmd[[highlight NoiceVirtualText ctermbg=0 guifg=#464c58]]
vim.cmd[[highlight NoiceCmdlinePopup ctermbg=0 guibg=#2a303c]]
vim.cmd[[highlight NoiceCmdlinePopupBorderSearch ctermbg=0 guifg=#464c58]]
vim.cmd[[highlight NoiceCmdlinePopupBorder ctermbg=0 guifg=#464c58]]

vim.api.nvim_set_hl(0, 'RenderMarkdownH2Bg', { link = "RenderMarkdownH1Bg" })
vim.api.nvim_set_hl(0, 'RenderMarkdownH3Bg', { link = "RenderMarkdownH1Bg" })
vim.api.nvim_set_hl(0, 'RenderMarkdownH4Bg', { link = "RenderMarkdownH1Bg" })
vim.api.nvim_set_hl(0, 'RenderMarkdownH5Bg', { link = "RenderMarkdownH1Bg" })
vim.api.nvim_set_hl(0, 'RenderMarkdownH6Bg', { link = "RenderMarkdownH1Bg" })
vim.api.nvim_set_hl(0, 'RenderMarkdownBullet', { link = "RenderMarkdownH1Bg" })
vim.api.nvim_set_hl(0, 'RenderMarkdownQuote', { link = "RenderMarkdownH1Bg" })
vim.api.nvim_set_hl(0, 'AvanteThirdTitle', { link = "RenderMarkdownH1Bg" })

vim.cmd[[highlight AvanteTitle ctermbg=0 guibg=#646a76 guifg=#2E3440 gui=bold]]
vim.cmd[[highlight AvanteReversedTitle ctermbg=0 guifg=#646a76]]

vim.cmd[[highlight AvanteSubtitle ctermbg=0 guibg=#646a76 guifg=#2E3440 gui=bold]]
vim.cmd[[highlight AvanteReversedSubtitle ctermbg=0 guifg=#646a76]]

vim.api.nvim_set_hl(0, 'AvanteInlineHint', { link = "Comment" })
vim.api.nvim_set_hl(0, 'AvantePopupHint', { link = "Comment" })

vim.opt.laststatus = 3

function copy_filename()
  local filename = vim.fn.expand("%:t")
  vim.fn.setreg("+", filename)
  print('file path: ' .. filename .. ' copied to clipboard')
end

vim.api.nvim_set_keymap("n", "<leader>cf", ":lua copy_filename_cwd()<CR>", { noremap = true, silent = true })
