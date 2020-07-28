set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80
set visualbell
set noerrorbells
highlight ColorColumn ctermbg=0 guibg=lightgrey
"set makeprg=pylint\ --reports=n\ --output-format=parseable\ %:p
set errorformat=%f:%l:\ %m


filetype plugin on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

set relativenumber
packloadall


set encoding=UTF-8
"set guifont=3270-Medium\ Nerd\ Font\ Complete\ Mono.otf

call plug#begin('~/.vim/plugged')



Plug 'kien/ctrlp.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'sirver/ultisnips'
Plug 'sbdchd/neoformat'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'preservim/nerdtree'
"Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import', {'do': 'npm install'}
"plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
""""plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'editorconfig/editorconfig-vim'
Plug 'hail2u/vim-css3-syntax' " updates vim's built-in css to support CSS3
Plug 'cakebaker/scss-syntax.vim'
Plug 'ap/vim-css-color'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'rstacruz/sparkup'
Plug 'epilande/vim-es2015-snippets'
Plug 'sirver/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'chiel92/vim-autoformat'
Plug 'lifepillar/vim-solarized8'
Plug 'posva/vim-vue'
Plug 'davidhalter/jedi-vim'
Plug 'morhetz/gruvbox'
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'dikiaap/minimalist'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'jnurmine/Zenburn'
Plug 'altercation/solarized'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}


Plug 'icymind/neosolarized'

Plug 'sheerun/vim-polyglot'
Plug 'elzr/vim-json'
Plug 'heavenshell/vim-jsdoc', {
  \ 'for': ['javascript', 'javascript.jsx','typescript'],
  \ 'do': 'make install'
\}

Plug 'mlaursen/vim-react-snippets'
" Ultisnips
Plug 'tomasiser/vim-code-dark'

Plug 'rakr/vim-one'


Plug 'mhartington/oceanic-next'

Plug 'tyrannicaltoucan/vim-deep-space'


call plug#end()



au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

let NERDTreeShowHidden=1

let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'

syntax enable
"let g:airline_theme='gruvbox'
"colorscheme gruvbox
"set background=dark
"

let g:airline_theme='one'
colorscheme one
set background=dark





command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
            \  'javascript.jsx' : {
            \      'extends' : 'jsx',
            \  },
            \}


imap gll console.log()<Esc>==F(a
vmap gl cgll<Esc>
""commenter
" add spaces after comment delimiters by default
let g:nerdspacedelims = 1
" use compact syntax for prettified multi-line comments
let g:nerdcompactsexycoms = 1
" align line-wise comment delimiters flush left instead of following code indentation
let g:nerddefaultalign = 'left'
" set a language to use its alternate delimiters by default
let g:nerdaltdelims_java = 1
" add your own custom formats or override the defaults
let g:nerdcustomdelimiters = { 'c': { 'left': '/**','right': '*/' } }
" allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
""commenter
" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:ctrlp_use_caching = 0

"" for React
nnoremap <Leader>if <Plug>(JsFileImport)
nnoremap <Leader>iF <Plug>(JsFileImportList)
nnoremap <Leader>ig <Plug>(JsGotoDefinition)
nnoremap <Leader>iG <Plug>(JsGotoDefinition)
nnoremap <Leader>ip <Plug>(PromptJsFileImport)
nnoremap <Leader>is <Plug>(SortJsFileImport)
nnoremap <Leader>ic <Plug>(JsFixImport)
""set tagfunc=jsfileimport#tagfunc

let g:js_file_import_sort_after_insert = 1
"" for React

nnoremap <Leader>p :wincmd <CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>vr :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>a


nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>pt :NERDTreeToggle<ENTER>
nnoremap <silent><Leader>pv :NERDTreeFind<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
imap <Nul> <Space>
map  <Nul> <Nop>
vmap <Nul> <Nop>
cmap <Nul> <Nop>
nmap <Nul> <Nop>
nmap <leader>rr <Plug>(coc-rename)



"fun! GoYCM()
   "nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
   "nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
  "nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
"endfun

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

fun! GoCoc()
    inoremap <buffer> <silent><expr> <TAB>
                \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<TAB>" :
                \ coc#refresh()

    inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
    inoremap <buffer> <silent><expr> <C-space> coc#refresh()

    " GoTo code navigation.
    nmap <buffer> <leader>gd <Plug>(coc-definition)
    nmap <buffer> <leader>gy <Plug>(coc-type-definition)
    nmap <buffer> <leader>gi <Plug>(coc-implementation)
    nmap <buffer> <leader>gr <Plug>(coc-references)
    nnoremap <buffer> <leader>cr :CocRestart
endfun

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()
autocmd FileType typescript :call GoCOC()
autocmd FileType cpp,cxx,h,hpp,c :call GoCoc()
