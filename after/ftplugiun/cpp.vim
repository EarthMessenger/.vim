iab <buffer>#i #include
nn <F9> :make %<<CR>

set cin
set cino+=j1,(0

let b:ale_linters = ["clangd"]
set omnifunc=ale#completion#OmniFunc
