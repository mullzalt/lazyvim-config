-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- move line in visual mode
keymap.set("v", "J", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down", silent = true })
keymap.set("v", "K", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up", silent = true })
keymap.set(
  "v",
  "<S-Down>",
  ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv",
  { desc = "Move Down", silent = true }
)
keymap.set(
  "v",
  "<S-Up>",
  ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv",
  { desc = "Move Up", silent = true }
)

-- join line
keymap.set("n", "J", "mzJ`z", { desc = "Join line", silent = true })
keymap.set("n", "<S-Down>", "mzJ`z", { desc = "Join line", silent = true })

-- better scroll
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll half page down", silent = true })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll half page up", silent = true })

keymap.set("n", "n", "nzzzv", { desc = "Find next matching patern", silent = true })
keymap.set("n", "N", "Nzzzv", { desc = "Find previous matching patern", silent = true })

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])
keymap.set({ "n", "v" }, "x", '"_x')

-- next greatest remap ever : asbjornHaland
keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank selected to clipboard" })
keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank current line to clipboard" })

keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete to unregister" })
keymap.set({ "n", "v" }, "<leader>x", '"_x', { desc = "Delete under cursor to unregister" })

keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Go to Lower Window" })
keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Go to Right Window" })

keymap.set("n", "<leader><Left>", "<C-w>h", { desc = "Go to Left Window" })
keymap.set("n", "<leader><Down>", "<C-w>j", { desc = "Go to Lower Window" })
keymap.set("n", "<leader><Up>", "<C-w>k", { desc = "Go to Upper Window" })
keymap.set("n", "<leader><Right>", "<C-w>l", { desc = "Go to Right Window" })

keymap.set("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })

keymap.set("n", "<leader>b[", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "<leader>b]", "<cmd>bnext<cr>", { desc = "Next Buffer" })

keymap.set("n", "<C-S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "<C-Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- better indenting
keymap.set("x", "<S-Tab>", "<gv")
keymap.set("x", "<Tab>", ">gv")
