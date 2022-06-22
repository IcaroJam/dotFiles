call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'

Plug 'scrooloose/nerdtree'
" Plug 'vim-scripts/The-NERD-tree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'airblade/vim-gitgutter'

Plug 'ap/vim-buftabline'

Plug '42Paris/42header'

Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'

" Plug 'hrsh7th/cmp-nvim-lsp'
" Plug 'hrsh7th/cmp-buffer'
" Plug 'hrsh7th/cmp-path'
" Plug 'hrsh7th/cmp-cmdline'
" Plug 'hrsh7th/nvim-cmp'

" Plug 'hrsh7th/cmp-vsnip'
" Plug 'hrsh7th/vim-vsnip'

" Plug 'neovim/nvim-lspconfig'
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Plug 'glepnir/lspsaga.nvim'

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
set noerrorbells
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

nmap <Tab> >>
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

imap <S-Left> <Esc>bi
nmap <S-Left> b
imap <S-Right> <Esc><Right>ei
nmap <S-Right> e

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

set ignorecase
set updatetime=300
