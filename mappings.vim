" Shifted movement and editing
	imap <S-Left> <Esc>bi
	nmap <S-Left> b
	imap <S-Right> <Esc>ea
	nmap <S-Right> e
	imap <S-BS> <Esc>vbdi
	nmap <S-BS> vbd

" Window movement
	nmap <leader>w <C-w>w

" Doxygen
	nmap <leader>d :Dox<CR>

" NERDTree
	nmap <leader>t :NERDTreeToggle<CR>

" CoC
	" Complete on enter
		inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

	" Cycle through completion list with tab
		inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
		inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"

	" Go to definition (Ctl-o to go back)
		nmap <silent> gd <Plug>(coc-definition)
