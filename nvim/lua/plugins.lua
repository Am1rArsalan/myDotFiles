return require('packer').startup(function(use)


--typescript 
use 'leafgarland/typescript-vim'

--auto-complete
use {'neoclide/coc.nvim', 'branch'= 'release'}


--git 
use 'rbong/vim-flog'
use 'tpope/vim-fugitive'


use 'sheerun/vim-polyglot'
use 'vuciv/vim-bujo'
use 'tpope/vim-dispatch'

--airline and vim be god
use 'vim-airline/vim-airline'

--scss
--use 'cakebaker/scss-syntax.vim' 

----
--use 'tweekmonster/gofmt.vim'
use 'HerringtonDarkholme/yats.vim'
----

--nerd tree
use 'preservim/nerdtree'
use 'Xuyuanp/nerdtree-git-plugin'
use 'scrooloose/nerdcommenter'
use 'terryma/vim-multiple-cursors'

--undotree
use 'mbbill/undotree'

--copilot
use 'github/copilot.vim' 


--rust 
use 'rust-lang/rust.vim'
use 'sebastianmarkow/deoplete-rust'

--graphql 
--use 'jparise/vim-graphql' --GraphQL syntax


--tsx 
use 'turbio/bracey.vim'
--use 'ianks/vim-tsx'
use 'maxmellon/vim-jsx-pretty' --JS and JSX syntax
use 'mattn/emmet-vim'
--
use {'styled-components/vim-styled-components',  'branch'= 'main' }

--git blame
use 'APZelos/blamer.nvim'


--format
use 'sbdchd/neoformat'


--markdown 
use 'ellisonleao/glow.nvim'

--tree sitter  
use {'nvim-treesitter/nvim-treesitter', 'do'= 'TSUpdate'}  
use 'nvim-treesitter/nvim-treesitter-context'

--use 'simrat39/symbols-outline.nvim'



--rust 
use 'rust-lang/rust.vim'

--glang 
--use 'fatih/vim-go', { 'do'= 'GoUpdateBinaries' }


--debugging
use 'mfussenegger/nvim-dap'
use 'theHamsta/nvim-dap-virtual-text'
use 'leoluz/nvim-dap-go'
use 'szw/vim-maximizer'
use 'rcarriga/nvim-dap-ui'


--theme
use 'gruvbox-community/gruvbox'
use { 'folke/tokyonight.nvim',  'branch'= 'main' }
--use 'altercation/vim-colors-solarized'
--use 'ericbn/vim-solarized'
use 'lifepillar/vim-solarized8'

--fzf 
use { 'junegunn/fzf',  'do'= { -> fzf#install() } }
use 'junegunn/fzf.vim'
use 'stsewd/fzf-checkout.vim'


--dev icons
use 'kyazdani42/nvim-web-devicons'


end); 

