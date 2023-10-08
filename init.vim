" Load Plugins and their Configs
	source ~/.config/nvim/plugins.vim

" Appearance
	set background=dark
	set termguicolors " Set true color display

	" Single variable theme selection (woo vimscript babyyy)
		let THEME="gr" " Choose 'ev' for everforest or 'gr' for gruvbox

		if  THEME == "ev"
			let g:everforest_background = 'hard'
			let g:lightline = {'colorscheme' : 'everforest'}
			colorscheme everforest
		elseif THEME == "gr"
			let g:gruvbox_material_background = 'medium'
			let g:gruvbox_material_foreground = 'mix'
			let g:lightline = {'colorscheme' : 'gruvbox_material'}
			colorscheme gruvbox-material
		endif

	set number
	syntax on
	set linebreak
	set cursorline " Highlight current line
	set scrolloff=5 " Min num of lines to display above and bellow cursor
	set colorcolumn=80

	set title
	set list lcs=tab:\│\ ,trail:•

	filetype plugin indent on

" Search
	set ignorecase
	set smartcase " Disable ignore case when searching with upper
	set incsearch " Enable incremental search

" Encoding
	set fileformat=unix
	set encoding=utf-8
	set fileencoding=utf-8

" Tabs and Indentation
	set autoindent
	set smartindent " Indent lines automatically to match previous line and such
	set tabstop=4 " Number of spaces per tab
	set shiftwidth=4 " Changes behaviour of '<<' '>>' and '=='
	set softtabstop=4 " Changes behaviour of TAB and BS

" Mapping
	let mapleader=" "
	source ~/.config/nvim/mappings.vim " Load key-maps from a dedicated file

" Tabs and Buffers
	set splitbelow splitright

" Clipboard and Mouse
	if !has('macunix') " The unnamed thing doesn't seem to work in macos
		set clipboard+=unnamed " Enable system clipboard (requires xclip for x11 linux)
	endif
	set mouse=nvi

" Completion
	set wildmenu " Command mode tab completion
	set completeopt=noinsert,menuone,noselect

" 42 School mail for cursus projects
	let g:mail42 = 'ntamayo-@student.42malaga.com'

" " Buffer navigation
" nnoremap <Tab> :bn<CR>
" nnoremap <S-Tab> :bp<CR>
" "Vertical tab (ALT+v)
" nnoremap √ :vnew<CR>
" "Newscreen tab (ALT+b)
" nnoremap ß :enew<CR>
" "Horizontal tab (ALT+h)
" nnoremap ™ :new<CR>
" "Close tab (ALT+c)
" nnoremap © :bdelete<CR>
