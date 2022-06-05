
call plug#begin('~/.vim/plugged')



Plug 'vim-scripts/win9xblueback.vim'



Plug 'Mofiqul/vscode.nvim'

"grammer
Plug 'rhysd/vim-grammarous'

"typescript 
Plug 'leafgarland/typescript-vim'

"auto-complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}


"git 
Plug 'rbong/vim-flog'
Plug 'tpope/vim-fugitive'


Plug 'sheerun/vim-polyglot'
Plug 'vuciv/vim-bujo'
Plug 'tpope/vim-dispatch'

"airline and vim be god
Plug 'theprimeagen/vim-be-good'
Plug 'vim-airline/vim-airline'

"scss
Plug 'cakebaker/scss-syntax.vim' 

""
Plug 'tweekmonster/gofmt.vim'
Plug 'HerringtonDarkholme/yats.vim'
""

"nerd tree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'

"undotree
Plug 'mbbill/undotree'

"copilot
Plug 'github/copilot.vim' 


"rust 
Plug 'rust-lang/rust.vim'
Plug 'sebastianmarkow/deoplete-rust'

"graphql 
"Plug 'jparise/vim-graphql' "GraphQL syntax


"tsx 
Plug 'turbio/bracey.vim'
"Plug 'ianks/vim-tsx'
Plug 'maxmellon/vim-jsx-pretty' "JS and JSX syntax
Plug 'mattn/emmet-vim'
"
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"git blame
Plug 'APZelos/blamer.nvim'


"format
Plug 'sbdchd/neoformat'


"markdown 
Plug 'ellisonleao/glow.nvim'

"tree sitter  
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
"Plug 'simrat39/symbols-outline.nvim'



"rust 
Plug 'rust-lang/rust.vim'

"glang 
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


"debugging
Plug 'mfussenegger/nvim-dap'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'leoluz/nvim-dap-go'
Plug 'szw/vim-maximizer'
Plug 'rcarriga/nvim-dap-ui'
"Plug 'puremourning/vimspector'


"theme
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'projekt0n/github-nvim-theme'
Plug 'gruvbox-community/gruvbox'
Plug 'hzchirs/vim-material'

"fzf 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'


"dev icons
Plug 'kyazdani42/nvim-web-devicons'

Plug 'rafi/awesome-vim-colorschemes'

call plug#end() 




