syntax on
set guicursor=
set relativenumber
set nohlsearch
set hidden 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set cmdheight=1
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set colorcolumn=80
let mapleader = " "
set nuw=5

" Default : "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

highlight ColorColumn ctermbg=0 guibg=lightgrey
hi CursorLineNr guifg=#050505

set clipboard=unnamedplus
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
let g:clipboard = {
            \   'name': 'myClipboard',
            \   'copy': {
            \      '+': ['tmux', 'load-buffer', '-'],
            \      '*': ['tmux', 'load-buffer', '-'],
            \    },
            \   'paste': {
            \      '+': ['tmux', 'save-buffer', '-'],
            \      '*': ['tmux', 'save-buffer', '-'],
            \   },
            \   'cache_enabled': 1,
            \ }

cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev W1 w
cnoreabbrev w1 w
cnoreabbrev Q q
cnoreabbrev Qall qall

com! W w





xnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>m :MaximizerToggle<CR>
nnoremap <leader>x :!chmod +x %<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
