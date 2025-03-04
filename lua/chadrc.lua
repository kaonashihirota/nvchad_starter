-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "nord",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
  hl_override = {
    St_cwd_icon = {
      fg = "#646a76",
      bg = "#3f4551",
    },
    St_cwd_sep = { fg = "#3f4551", bg = "#3f4551" },
    St_pos_sep = { fg = "#3f4551", bg = "#3f4551" },
    St_pos_icon = { fg = "#646a76", bg = "#3f4551" },
    St_pos_text = { fg = "#6484a4", bg = "#3f4551" },
    St_NormalMode = { bg = "#646a76" },
    St_NormalModeSep = { fg = "#646a76", bg = "#646a76" },
    St_VisualMode = {
      bg = "#646a76",
    },
    St_VisualModeSep = { fg = "#646a76", bg = "#646a76" },
    St_InsertMode = { bg = "#646a76" },
    St_InsertModeSep = { fg = "#646a76", bg = "#646a76" },
    St_CommandMode = { bg = "#646a76" },
    St_CommandModeSep = { fg = "#646a76", bg = "#646a76" },
    St_TerminalMode = {
      bg = "#646a76",
    },
    St_TerminalModeSep = { fg = "#646a76", bg = "#646a76" },

    St_SelectMode = { bg = "#646a76" },
    St_SelectModeSep = { fg = "#646a76", bg = "#646a76" },

    St_NTerminalMode = { bg = "#646a76" },
    St_NTerminalModeSep = { fg = "#646a76", bg = "#646a76" },

    St_ReplaceMode = { bg = "#646a76" },
    St_ReplaceModeSep = { fg = "#646a76", bg = "#646a76" },

    St_EmptySpace = { fg = "#646a76" },
    St_Lsp = { fg = "#6484a4" },
    PmenuSel = {
      bg = "#434C5E",
      fg = "#88C0D0",
    },
    St_LspMsg = {
      fg = "#8FBCBB",
    },
    LspSignatureActiveParameter = {
      bg = "#434C5E",
      fg = "#88C0D0",
    },
    NvimTreeGitDirty = {
      fg = "#a983a2",
    },
    NvimTreeGitNew = {
      fg = "#88C0D0",
    },
    NvimTreeWindowPicker = {
      fg = "#88C0D0",
    },
    WhichKeyDesc = {
      fg = "#A3BE8C",
    },
    WhichKeyGroup = {
      fg = "#7797b7",
    },
    TelescopePromptTitle = {
      bg = "NONE",
      fg = "#7797b7",
    },
    TelescopePreviewTitle = {
      bg = "NONE",
      fg = "#7797b7",
    },
    TelescopePromptPrefix = {
      fg = "#6484a4",
    },
    TbBufOnClose = {
      fg = "#646a76",
    },
    TbBufOffClose = {
      fg = "#3f4551",
    },
    TbCloseAllBufsBtn = {
      bg = "#646a76",
    },
  },
}

M.ui = {
  tabufline = {
    lazyload = false,
  },
  statusline = {
    separator_style = "round"
  },
}

return M
