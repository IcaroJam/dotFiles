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

" Delete highlighted stuff into void instead of overwriting the register
	xmap <leader>p "_dP

" Copy paste and delete into and from system clipboard
	nmap <leader>y "+y
	vmap <leader>y "+y
	nmap <leader>p "+p
	vmap <leader>p "+p
	nmap <leader>d "_d
	vmap <leader>d "_d

" Doxygen
	nmap <leader>d :Dox<CR>

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
