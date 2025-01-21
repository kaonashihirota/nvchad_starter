require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
map("n", "<leader>v",
  function()
        require("nvchad.term").toggle({ pos="float" })
  end,
  { desc= "toggle floating term"}
)
map("n", "<leader>h", "<cmd>wincmd h<CR>", { desc = "h" })
map("n", "<leader>j", "<cmd>wincmd j<CR>", { desc = "j" })
map("n", "<leader>k", "<cmd>wincmd k<CR>", { desc = "k" })
map("n", "<leader>l", "<cmd>wincmd l<CR>", { desc = "l" })
map("n", "<leader>=", "<cmd>wincmd =<CR>", { desc = "=" })

map("n", "<Esc><Esc>", ":w<cr>", { desc = "save" })
map("n", "<leader>ww", ":w<cr>", { desc = "save" })
map("n", "<leader>gc", ":Git commit % -m 'chore(sync): sync'", { desc = "commit" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
