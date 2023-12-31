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

set fdm=marker
nn <Space> za

im fj <ESC>
im jf <ESC>

nn <backspace> :noh<CR>
nn <C-s> :up<CR>

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
  set background=light
else
  set termguicolors
  set background=dark
endif

colorscheme gruvbox8

let g:lightline = {
      \ 'colorscheme': 'gruvbox8',
      \ }

nn <F2> :Vex<CR>

augroup CompleteConfig
  autocmd!
  autocmd CompleteDone * pclose
augroup END
