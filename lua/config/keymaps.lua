-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n", "<leader><Left>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<leader><Down>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<leader><Up>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<leader><Right>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })

map("n", "<leader>b[", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<leader>b]", "<cmd>bnext<cr>", { desc = "Next Buffer" })
