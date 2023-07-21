so $VIMRUNTIME/vimrc_example.vim

set ai
set si
set cin
set acd
set tm=200
set nu
set rnu
set ls=2

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
	set guifont=Sarasa\ Mono\ SC\ 13
	set guioptions-=e
	set guioptions-=g
	set guioptions-=m
	set guioptions-=r
	set guioptions-=L
	set guioptions-=t
	set guioptions-=T
endif

let g:netrw_liststyle=3
nn <F2> :Vex<CR>
