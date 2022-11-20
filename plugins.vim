call plug#begin('~/.vim/plugged')

" Themes
	Plug 'sainnhe/gruvbox-material'
	Plug 'sainnhe/everforest'

" Colourfuller syntax highlighting
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Navline
	Plug 'itchyny/lightline.vim'

" Sexy commenting
	Plug 'preservim/nerdcommenter'

" Autopairing
	"Plug 'jiangmiao/auto-pairs' " Vim flavour
	Plug 'windwp/nvim-autopairs' " Nvim flavour

" Surrounding
	Plug 'machakann/vim-sandwich'

" The nerdiest of plants
	Plug 'scrooloose/nerdtree'

" Autocompletion!
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 42 Header
	Plug '42Paris/42header'

" Icons icons icons!
	Plug 'ryanoasis/vim-devicons'

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
	}
EOF

" Nvim Autopairing
lua << EOF
	require'nvim-autopairs'.setup {}
EOF

" Idk man some nerdtree shit I copied from somewhere
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

" Complete on enter
	inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Cycle through completion list with tab
	inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
	inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
