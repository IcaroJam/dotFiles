" Shifted movement and editing
	imap <S-Left> <Esc>bi
	nmap <S-Left> b
	imap <S-Right> <Esc>ea
	nmap <S-Right> e
	imap <S-BS> <Esc>vbdi
	nmap <S-BS> vbd

" Move lines up and down
	vmap J :m '>+1<CR>gv=gv
	vmap K :m '<-2<CR>gv=gv

" Window movement
	nmap <leader>w <C-w>w

" Quickly get rid of search highlighting
	nmap <leader>n :noh<CR>

" Keep searching occurences in the middle of the screen
	nmap n nzzzv
	nmap N Nzzzv

" Delete highlighted stuff into void instead of overwriting the register
	xmap <leader>p "_dP

" Copy and paste into and from system clipboard
	nmap <leader>y "+y
	vmap <leader>y "+y
	nmap <leader>p "+p

" Delete into the void register
	nmap <leader>d "_d
	vmap <leader>d "_d

" Replace word under cursor
	nmap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" Doxygen
	nmap <leader>dx :Dox<CR>

" NERDTree
	nmap <leader>t :NERDTreeToggle<CR>

" Replace and global replace functions
	function! Rep()
		let replacee = input("Replace: ")
		let replacement = input("With: ")
		execute "%s/" . replacee . "/" . replacement . "/g"
	endfunction
	nmap <leader>r :call Rep()<CR>

" CoC
	" Complete on enter
		inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

	" Cycle through completion list with tab
		inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
		inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

	" Go to definition (Ctl-o to go back)
		nmap <silent> gd <Plug>(coc-definition)
