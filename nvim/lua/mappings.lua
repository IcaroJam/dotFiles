vim.g.mapleader = " "

-- Control Movement and Editing
vim.keymap.set("i", "<C-Left>", "<Esc>bi")
vim.keymap.set("n", "<C-Left>", "b")
vim.keymap.set("i", "<C-Right>", "<Esc>ea")
vim.keymap.set("n", "<C-Right>", "e")
vim.keymap.set("i", "<C-BS>", "<C-W>")
vim.keymap.set("i", "<C-Del>", "<C-o>de")

-- Move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Window movement
vim.keymap.set("n", "<leader>w", "<C-w>w")

-- Tab movement
vim.keymap.set("n", "<Tab>", "gt")
vim.keymap.set("n", "<S-Tab>", "gT")

-- Quickly get rid of search highlighting
vim.keymap.set("n", "<leader>n", ":noh<CR>")

-- Keep searching occurences in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete highlighted stuff into void instead of overwriting the register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy and paste into and from system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")

-- Delete into the void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Replace word under cursor
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- NvimTree
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
