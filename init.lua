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

vim.cmd[[highlight AvanteTitle ctermbg=0 guibg=#81A1C1]]
vim.cmd[[highlight AvanteReversedTitle ctermbg=0 guifg=#81A1C1]]

vim.api.nvim_set_hl(0, 'AvanteInlineHint', { link = "Comment" })
vim.api.nvim_set_hl(0, 'AvantePopupHint', { link = "Comment" })
