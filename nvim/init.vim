source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/base.vim
source $HOME/.config/nvim/config/movement.vim
source $HOME/.config/nvim/config/treesitter.vim
source $HOME/.config/nvim/config/coc.vim
source $HOME/.config/nvim/config/color.vim
source $HOME/.config/nvim/config/golang.vim
source $HOME/.config/nvim/config/git.vim
source $HOME/.config/nvim/config/fzf.vim
source $HOME/.config/nvim/config/nerdTree.vim
source $HOME/.config/nvim/config/react.vim
source $HOME/.config/nvim/config/spector.vim


" what is this
set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
let loaded_matchparen = 1

vnoremap X "_d
"what is this ? 
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal



" color 
"
"set background=light
"colorscheme PaperColor
