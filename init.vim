call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'

Plug 'scrooloose/nerdtree'

Plug 'ap/vim-buftabline'

Plug '42Paris/42header'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'ryanoasis/vim-devicons'

call plug#end()

syntax on
colorscheme gruvbox
filetype on
filetype plugin indent on
set list lcs=tab:\|\ 

let g:mail42 = 'ntamayo-@student.42malaga.com'
set number
set wrap
set t_co=256

set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8
let g:webdevicons_enable_nerdtree = 1

set smartcase
set smartindent
set cursorline
set visualbell
set mouse=a
set title
set foldmethod=indent
set nofoldenable

set tabstop=4
set shiftwidth=4
set softtabstop=4

set colorcolumn=80

let mapleader = " "

imap <S-Left> <Esc>bi
nmap <S-Left> b
imap <S-Right> <Esc><Right>ei
nmap <S-Right> e

" Buffer navigation
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
"Vertical tab (ALT+v)
nnoremap √ :vnew<CR>
"Newscreen tab (ALT+b)
nnoremap ß :enew<CR>
"Horizontal tab (ALT+h)
nnoremap ™ :new<CR>
"Close tab (ALT+c)
nnoremap © :bdelete<CR>

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" CoC config
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

set ignorecase
set updatetime=300
