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
set mouse=a

highlight ColorColumn ctermbg=0 guibg=lightgrey
hi CursorLineNr guifg=#050505



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





" lsp 
"lua require("lsp-config") 


let g:theprimeagen_colorscheme = "gruvbox"
fun! ColorMyPencils()
    let g:gruvbox_contrast_dark = 'hard'
    if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    endif
    let g:gruvbox_invert_selection='0'

    set background=dark
    if has('nvim')
        call luaeval('vim.cmd("colorscheme " .. _A[1])', [g:theprimeagen_colorscheme])
    else
        colorscheme gruvbox
    endif

    highlight ColorColumn ctermbg=0 guibg=grey
    hi SignColumn guibg=none
    hi CursorLineNR guibg=None
    highlight Normal guibg=none
    "" highlight LineNr guifg=#ff8659
    "" highlight LineNr guifg=#aed75f
    highlight LineNr guifg=#5eacd3
    highlight netrwDir guifg=#5eacd3
    highlight qfFileName guifg=#aed75f
    hi TelescopeBorder guifg=#5eacd
endfun
call ColorMyPencils()

" Vim with me
nnoremap <leader>cmp :call ColorMyPencils()<CR>
nnoremap <leader>vwb :let g:theprimeagen_colorscheme =



if has("gui_running")
    if has("gui_mac") || has("gui_macvim")
        set guifont=Menlo:h12
        set transparency=7
    endif
else
    let g:CSApprox_loaded = 1
    let g:indentLine_concealcursor = 0
    let g:indentLine_char = '┆'
    let g:indentLine_faster = 1


    if $COLORTERM == 'gnome-terminal'
        set term=gnome-256color
    else
        if $TERM == 'xterm'
            set term=xterm-256color
        endif
    endif
endif


if &term =~ '256color'
    set t_ut=
endif


set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

fun! LspLocationList()
    lua vim.lsp.diagnostic.set_loclist({open_loclist = false})
endfun



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


let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

let g:vim_be_good_log_file = 1

if executable('rg')
    let g:rg_derive_root='true'
endif

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
let g:fzf_branch_actions = {
      \ 'track': {
      \   'prompt': 'Track> ',
      \   'execute': 'echo system("{git} checkout --track {branch}")',
      \   'multiple': v:false,
      \   'keymap': 'ctrl-t',
      \   'required': ['branch'],
      \   'confirm': v:false,
      \ },
      \}

let g:NERDTreeWinPos = "left"

nnoremap <leader>m :MaximizerToggle<CR>
nnoremap <leader>x :!chmod +x %<CR>
nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
"nnoremap <leader>vv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent><Leader>vv :NERDTreeFind<CR>
nnoremap <silent> <C-f> :silent !tmux neww tmux-sessionizer<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
"nmap <silent> <F2> :call CocAction('diagnosticNext')<cr> 


nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d
let NERDTreeShowHidden=1

nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"
" Vim with me
nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

inoremap <C-c> <esc>
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

inoremap <silent><expr> <C-space> coc#refresh()
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nmap <leader>vca  <Plug>(coc-codeaction-selected) 
xmap <leader>vca  <Plug>(coc-codeaction-selected)
nnoremap <leader>cr :CocRestart

nmap <leader>gh :diffget //4<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun


com! W w
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank(timeuout = 200)
augroup END

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END



let g:NERDTreeGitStatusIndicatorMapCustom = {
   \ "Modified"  : "✹",
   \ "Staged"    : "✚",
   \ "Untracked" : "✭",
   \ "Renamed"   : "➜",
   \ "Unmerged"  : "═",
   \ "Deleted"   : "",
   \ "Dirty"     : "✗",
   \ "Clean"     : "✔︎",
   \ 'Ignored'   : '☒',
   \ "Unknown"   : "?"
  \ }




let g:vimspector_enable_mappings = 'HUMAN'

autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx



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


set t_Co=256


if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif



let g:PaperColor_Theme_Options = {
            \   'theme': {
            \     'default': {
            \       'transparent_background': 0
            \     }
            \   }
            \ }



nmap <leader>tu :call GotoBuffer(0)<CR>
nmap <leader>te :call GotoBuffer(1)<CR>
nmap <leader>to :call GotoBuffer(2)<CR>
nmap <leader>ta :call GotoBuffer(3)<CR>
nmap <leader>nn :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'
let g:gruvbox_contrast_dark = 'hard'






function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>dbp :GoDebugBreakpoint<CR>
autocmd FileType go nmap <leader>dco :GoDebugContinue<CR>




let g:vimspector_enable_mappings='HUMAN'




nmap <leader>dx :VimspectorReset<CR>
nmap <leader>de :VimspectorEval
nmap <leader>dw :VimspectorWatch<CR>
nmap <leader>do :VimspectorShowOutput
nmap <leader>dl <Plug>VimspectorStepInto
nmap <leader>dj <Plug>VimspectorStepOver
nmap <leader>dk <Plug>VimspectorStepOut
nmap <leader>d_ <Plug>VimspectorRestart
nnoremap <leader>d<space> :call vimspector#Continue()<CR>



nmap <leader>drc <Plug>VimspectorRunToCursor
nmap <leader>dbp <Plug>VimspectorToggleBreakpoint
nmap <leader>dcbp <Plug>VimspectorToggleConditionalBreakpoint


nnoremap <leader>L "ayiwOconsole.log(<Esc>
nnoremap <leader>IF "if(){}<Esc>



let g:blamer_enabled = 1

highlight link GitPBlameLine GitPBlameLineHi

let g:gitp_blame_format = '      %{account} * %{ago}'

nmap <leader>s <Plug>(git-p-show-blame)

highlight link GitPDiffFloat Pmenu





let g:closetag_html_style=1


xnoremap <leader>p "_dP

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d




let g:loaded_perl_provider = 0

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  sync_install = false,
  ignore_install = { "c#","haskell","jsonc" },
  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    disable = { "c#", "rust" },
    additional_vim_regex_highlighting = false,
  },
}
EOF




