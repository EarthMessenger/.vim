so $VIMRUNTIME/vimrc_example.vim

set ai
set si
set cin
set acd
set tm=200
set nu
set rnu
set ls=2
set list
set lcs=tab:▏\ 

im fj <ESC>
im jf <ESC>

nn <C-s> :up<CR>

colorscheme gruvbox8

let g:lightline = {
	\ 'colorscheme': 'gruvbox8',
\ }

augroup TermConfig
	autocmd!
	autocmd TerminalOpen * {
		setl nonu
		setl nornu
	}
augroup END

if has("gui_running")
	set guifont=IosevkaTerm\ Nerd\ Font\ Mono\ 13
	set guioptions-=e
	set guioptions-=g
	set guioptions-=m
	set guioptions-=r
	set guioptions-=L
	set guioptions-=t
	set guioptions-=T
endif

nn <F2> :Vex<CR>

augroup CompleteConfig
	autocmd!
	autocmd CompleteDone * pclose
augroup END

let g:Lf_ShortcutF = "<leader>ff"

let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
