nnoremap <leader>gc :GBranches<CR>
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>
nmap <leader>gh :diffget //4<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
let g:blamer_enabled = 1
highlight link GitPBlameLine GitPBlameLineHi
let g:gitp_blame_format = '      %{account} * %{ago}'
nmap <leader>s <Plug>(git-p-show-blame)
highlight link GitPDiffFloat Pmenu



" what ? 
let g:closetag_html_style=1


