so $VIMRUNTIME/vimrc_example.vim

set et
set sts=2
set sw=2
set ai
set si
set cin
set acd
set tm=200
set nu
set rnu
set ls=2
set list
set lcs=tab:\|\ 

set fdm=marker
nn <Space> za

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
	set guifont=Iosevka\ 11
	set guiligatures=<-=>\:_~/!*\|+
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
