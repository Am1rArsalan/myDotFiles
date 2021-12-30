let mapleader = " "
source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/base.vim
source $HOME/.config/nvim/config/coc.vim
source $HOME/.config/nvim/config/color.vim
source $HOME/.config/nvim/config/golang.vim
source $HOME/.config/nvim/config/git.vim
source $HOME/.config/nvim/config/fzf.vim
source $HOME/.config/nvim/config/movement.vim
source $HOME/.config/nvim/config/nerdTree.vim
source $HOME/.config/nvim/config/react.vim
source $HOME/.config/nvim/config/spector.vim
source $HOME/.config/nvim/config/treesitter.vim



" what is this
set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']




if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1


vnoremap X "_d

nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
