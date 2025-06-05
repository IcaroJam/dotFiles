vim.g.mapleader = " "

-- Load Plugins
if vim.g.vscode then
	require("vs_plugins")
else
	require("plugins")
end

-- General Options
vim.opt.number = true
vim.opt.linebreak = true
vim.opt.cursorline = true -- Highlight current line
vim.opt.scrolloff = 5 -- Min num of lines to display above and bellow cursor

vim.opt.title = true
vim.opt.list = true
vim.opt.lcs = { tab = "| ", trail = "•" }

-- Search Options
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Encoding Options
vim.opt.fileformat = "unix"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Tabs and Indentation
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

-- Mappings
require("mappings")

-- Tabs and Buffers
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Completion Options
vim.opt.wildmenu = true
vim.opt.completeopt = { noinsert = true, menuone = true, noselect = true }

-- Themes
require("themes")
