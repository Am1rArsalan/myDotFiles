
call plug#begin('~/.vim/plugged')
Plug 'deoplete-plugins/deoplete-clang'

Plug 'pantharshit00/vim-prisma' 
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'docunext/closetag.vim'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}
Plug 'turbio/bracey.vim'
Plug 'hzchirs/vim-material'
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty' 
Plug 'jparise/vim-graphql'       
Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'
Plug 'cakebaker/scss-syntax.vim' 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'
Plug '/home/mpaulson/personal/vim-apm'
Plug 'theprimeagen/vim-be-good'
Plug 'vim-airline/vim-airline'
Plug 'vim-conf-live/vimconflive2021-colorscheme'
Plug 'flazz/vim-colorschemes'
Plug 'gruvbox-community/gruvbox'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'flazz/vim-colorschemes'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'

Plug 'APZelos/blamer.nvim'
Plug 'sbdchd/neoformat'
" tree sitter ; 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'nvim-treesitter/playground'

Plug 'simrat39/symbols-outline.nvim'


Plug 'github/copilot.vim' 
Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'rust-lang/rust.vim'


call plug#end() 

