call plug#begin('~/.vim/plugged')

" Themes
	Plug 'sainnhe/gruvbox-material'
	Plug 'sainnhe/everforest'

" Colourfuller syntax highlighting
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Indent tabs for the future lua nvim-only config: lukas-reineke/indent-blankline.nvim

" Navline
	Plug 'itchyny/lightline.vim'

" Sexy commenting
	Plug 'preservim/nerdcommenter'

" Doxygenation
	Plug 'vim-scripts/DoxygenToolkit.vim'

" Autopairing
	" Vim flavour
	Plug 'jiangmiao/auto-pairs'
	" Nvim flavour (indenting broken, switched back to the vim counterpart.
	" This needs further configuration apparently. Again, when the lua config
	" is done it'll come in handy.)
	" Plug 'windwp/nvim-autopairs'

" Surrounding
	Plug 'machakann/vim-sandwich'

" The nerdiest of plants
	Plug 'scrooloose/nerdtree'
	" For the future: nvim-neo-tree/neo-tree.nvim

" Autocompletion!
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 42 Header
	Plug '42Paris/42header'

" Icons icons icons!
	Plug 'ryanoasis/vim-devicons'
	" For the future! (Dreaded configuration required, as per ush) nvim-tree/nvim-web-devicons

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Treesitter config and auto enable
lua << EOF
	require'nvim-treesitter.configs'.setup {
	  ensure_installed = { "c", "cpp" },

	  sync_install = false,

	  auto_install = false,

	  highlight = {
		enable = true,
	  },

	  indent = {
		enable = true,
	  },
	}
EOF

" Nvim Autopairing
" lua << EOF
"     require'nvim-autopairs'.setup {}
" EOF

" Idk man some nerdcommenter shit I copied from somewhere
	let g:NERDCreateDefaultMappings=1 " Create default mappings
	let g:NERDSpaceDelims=1 " Add spaces after comment delimiters by default
	let g:NERDCompactSexyComs=1 " Use compact syntax for prettified multi-line comments
	let g:NERDDefaultAlign='left' " Align line-wise comment delimiters flush left instead of following code indentation
	let g:NERDAltDelims_java=1 " Set a language to use its alternate delimiters by default
	let g:NERDCustomDelimiters={ 'c': { 'left': '/**','right': '*/' } } " Add your own custom formats or override the defaults
	let g:NERDCommentEmptyLines=1 " Allow commenting and inverting empty lines (useful when commenting a region)
	let g:NERDTrimTrailingWhitespace=1 " Enable trimming of trailing whitespace when uncommenting
	let g:NERDToggleCheckAllLines=1 " Enable NERDCommenterToggle to check all selected lines is commented or not

" Icons in the Nerdtree
	let g:webdevicons_enable_nerdtree=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CoC config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some servers have issues with backup files, see #649.
	set nobackup
	set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
	set updatetime=300

" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')
