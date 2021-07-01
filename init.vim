syntax on
set guicursor+=a:blinkon1
"set guicursor=
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

" this is for clipboard 
set clipboard+=unnamedplus
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






" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
"set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}


Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}


"" flutter stuff
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'


Plug 'iamcco/sran.nvim', { 'do': { -> sran#util#install() } }
Plug 'iamcco/git-p.nvim'

Plug 'APZelos/blamer.nvim'



Plug 'turbio/bracey.vim'   
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ThePrimeagen/harpoon'
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

Plug 'tomasr/molokai'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


Plug 'NLKNguyen/papercolor-theme'
Plug 'szw/vim-maximizer'
Plug 'puremourning/vimspector'
Plug 'dunstontc/vim-vscode-theme'
Plug 'cakebaker/scss-syntax.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tweekmonster/gofmt.vim'
Plug 'tpope/vim-fugitive'
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
Plug 'gruvbox-community/gruvbox'
" Plug 'morhetz/gruvbox'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

"  I AM SO SORRY FOR DOING COLOR SCHEMES IN MY VIMRC, BUT I HAVE
"  TOOOOOOOOOOOOO

Plug 'colepeters/spacemacs-theme.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'

Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'


Plug 'drewtempelmeyer/palenight.vim'

call plug#end()


let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
let g:gruvbox_invert_selection='0'

" --- vim go (polyglot) settings.
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

let g:NERDTreeWinPos = "right"

nnoremap <leader>m :MaximizerToggle<CR>

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
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent><Leader>pv :NERDTreeFind<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>
nnoremap <Leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d


let NERDTreeShowHidden=1



" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" Vim with me
nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>
nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

inoremap <C-c> <esc>

"command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

inoremap <silent><expr> <C-space> coc#refresh()

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //4<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

" YES
com! W w

augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank(timeuout = 200)
augroup END

"augroup THE_PRIMEAGEN
    "autocmd!
    "autocmd BufWritePre * :call TrimWhitespace()
    "autocmd VimEnter * :VimApm
"augroup END


augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END



inoremap rnfc  import React from 'react';
            \<Enter>import { View ,Text , StyleSheet} from 'react-native' ;
            \<Enter>
           \<Enter>
            \<Enter>
            \export default function() {<Enter>
            \<Space><Space><Space><Space>return (<></>)
           \<Enter>}
            \<Enter>const styles = StyleSheet.create({}) <Esc>==F(i)

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



"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall




set t_Co=256

let g:material_terminal_italics = 1
"let g:material_theme_style = 'ocean-community'
"let g:material_theme_style = 'palenight-community'
"let g:material_theme_style = 'palenight'
let g:material_theme_style = 'default-community'
"let g:material_theme_style = 'ocean'
"let g:material_theme_style = 'default'
"let g:material_theme_style = 'lighter'
"let g:material_theme_style = 'lighter-community'
"let g:material_theme_style = 'darker'
"let g:material_theme_style = 'darker-community'


"let g:lightline = { 'colorscheme': 'material_vim' }





if !has('nvim')
  let &t_ZH="\e[3m"
  let &t_ZR="\e[23m"
endif

"set background=dark
"colorscheme ayu



let g:PaperColor_Theme_Options = {
            \   'theme': {
            \     'default': {
            \       'transparent_background': 0
            \     }
            \   }
            \ }


"set background=light
"colorscheme PaperColor 

"set background=light 
"colorscheme solarized8_light_low


"set background=dark
"colorscheme material


""

"let g:gruvbox_cursor_column=<color_name>
"let g:gruvbox_selection_bg=<color_name>


"set background=dark 
"colorscheme gruvbox
"let g:gruvbox_material_transparent_background = 1
"let g:gruvbox_transparent_bg=1

"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark" 

set background=dark
colorscheme ayu

hi Normal guibg=NONE ctermbg=NONE
hi Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE


hi! TermCursor guifg=NONE guibg=#ebdbb2 gui=NONE cterm=NONE
hi! TermCursorNC guifg=#ebdbb2 guibg=#3c3836 gui=NONE cterm=NONE


" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif



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



nmap <leader>tu :call GotoBuffer(0)<CR>
nmap <leader>te :call GotoBuffer(1)<CR>
nmap <leader>to :call GotoBuffer(2)<CR>
nmap <leader>ta :call GotoBuffer(3)<CR>
nmap <leader>nn :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>




" this is for go dev 
"filetype plugin indent on


"set autowrite

" Go syntax highlighting
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_operators = 1

" Auto formatting and importing
"let g:go_fmt_autosave = 1
"let g:go_fmt_command = "goimports"

" Status line types/signatures
"let g:go_auto_type_info = 1

" Run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#test#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction

" Map keys for most used commands.
" Ex: `\b` for building, `\r` for running and `\b` for running test.
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





" enable virtual text to display blame and neovim support this
" default is: 1
"let g:gitp_blame_virtual_text = 1

" use custom highlight for blame virtual text
" change GitPBlameLineHi to your highlight group
highlight link GitPBlameLine GitPBlameLineHi

" format blame virtual text
" hash: commit hash
" account: commit account name
" date: YYYY-MM-DD
" time: HH:mm:ss
" ago: xxx ago
" zone: +xxxx
" commit: commit message
" lineNum: line number
let g:gitp_blame_format = '    %{account} * %{ago}'

" NOTE: use %{hash:8} or %{hash:0:8} to use the first 8 characters

" statusline integrated: b:gitp_blame, b:gitp_diff_state
"
" blame info:
" b:gitp_blame = {
"    hash: string
"    account: string
"    date: string
"    time: string
"    ago: string
"    zone: string
"    lineNum: string
"    lineString: string
"    commit: string
"    rawString: string
" }
"
" diff lines stat:
" b:gitp_diff_state = { delete: number, add: number, modify: number }
"
" will trigger GitPDiffAndBlameUpdate event after these variables updated

" use custom highlight for diff sign
" change the GitPAddHi GitPModifyHi GitPDeleteHi to your highlight group
"highlight link GitPAdd                GitPAddHi
"highlight link GitPModify             GitPModifyHi
"highlight link GitPDeleteTop          GitPDeleteHi
"highlight link GitPDeleteBottom       GitPDeleteHi
"highlight link GitPDeleteTopAndBottom GitPDeleteHi

" use custom diff sign
"let g:gitp_add_sign = '■'
"let g:gitp_modify_sign = '▣'
"let g:gitp_delete_top_sign = '▤'
"let g:gitp_delete_bottom_sign = '▤'
"let g:gitp_delete_top_and_bottom_sign = '▤'

" let your sign column background same as line number column
" highlight! link SignColumn LineNr

" use <leader>d to display change
"nmap <leader>d <Plug>(git-p-diff-preview)

" show blame line manually if `let g:gitp_blame_virtual_text = 0`
nmap <leader>s <Plug>(git-p-show-blame)

" NOTE: if have diff preview window, it will focus to the diff preview window
" if cu

"rent window is diff preview window, it will close diff preview window
" or use `q` to quit diff preview window

" use custom highlight for float diff preview window
" change Pmenu to your highlight group
highlight link GitPDiffFloat Pmenu


" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif


