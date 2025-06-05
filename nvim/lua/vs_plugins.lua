require "paq" {
	"savq/paq-nvim", -- Let Paq manage itself

	"sainnhe/everforest",

	"preservim/nerdcommenter",

	"windwp/nvim-autopairs",

	"kylechui/nvim-surround",

	{ "neoclide/coc.nvim", branch = "release" },

}

-- NerdCommenter
	vim.g.NERDCreateDefaultMappings = 1 -- Create default mappings
	vim.g.NERDSpaceDelims = 1 -- Add spaces after comment delimiters by default
	vim.g.NERDCompactSexyComs = 1 -- Use compact syntax for prettified multi-line comments
	vim.g.NERDDefaultAlign = 'left' -- Align line-wise comment delimiters flush left instead of following code indentation
	vim.g.NERDCommentEmptyLines = 1 -- Allow commenting and inverting empty lines (useful when commenting a region)
	vim.g.NERDTrimTrailingWhitespace = 1 -- Enable trimming of trailing whitespace when uncommenting
	vim.g.NERDToggleCheckAllLines = 1 -- Enable NERDCommenterToggle to check all selected lines is commented or not
	vim.g.NERDAllowAnyVisualDelims = 0

-- Autopairs
require("nvim-autopairs").setup {
	check_ts = true,
	enable_afterquote = false,
	enable_braket_in_quote = false,
	enable_check_bracket_line = false,
}

-- Surround
require("nvim-surround").setup()

--CoC
	vim.opt.backup = false
	vim.opt.writebackup = false
	vim.opt.updatetime = 300
	-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
	vim.api.nvim_create_augroup("CocGroup", {})
	vim.api.nvim_create_autocmd("CursorHold", {
		group = "CocGroup",
		command = "silent call CocActionAsync('highlight')",
		desc = "Highlight symbol under cursor on CursorHold"
	})
	-- Complete on enter
	vim.keymap.set("i", "<CR>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], {expr = true})
	-- Cycle through completion list with tab
	vim.keymap.set("i", "<Tab>", [[coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"]], {expr = true})
	vim.keymap.set("i", "<S-Tab>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"]], {expr = true})
	-- Go to definition (Ctl-o to go back)
	vim.keymap.set("n", "gd", "<Plug>(coc-definition)", {silent = true})
	vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", {silent = true})
	vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", {silent = true})
	vim.keymap.set("n", "gr", "<Plug>(coc-references)", {silent = true})
