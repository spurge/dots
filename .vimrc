call pathogen#infect()

"set t_Co=256
syntax enable
syntax on
set background=dark
let g:solarized_termtrans=1
colorscheme solarized

set et!
set cursorline cursorcolumn
set ts=4 sts=0 sw=4 noexpandtab
set number ruler
set autoindent
set list listchars=tab:\ \ ,trail:·
set list
set encoding=utf-8
set mouse=a

let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

nmap ,n <Esc>:tabn<CR>
nmap ,p <Esc>:tabp<CR>
nmap ,t <Esc>:tabnew<CR>
nmap <C-D> <Esc>:NERDTreeToggle<CR>

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif
