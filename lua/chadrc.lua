-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

local statusline_bg = '#333945'

M.base46 = {
	theme = "nord",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
  hl_override = {
    St_cwd_icon = {
      fg = "#7797b7",
      bg = "#3f4551",
    },
    St_cwd_sep = { fg = "#3f4551", bg = "#3f4551" },
    St_pos_sep = { fg = "#3f4551", bg = "#3f4551" },
    St_pos_icon = { fg = "#646a76", bg = "#3f4551" },
    nord_blue = { fg = "#646a76", bg = "#3f4551" },
  }
}

return M
