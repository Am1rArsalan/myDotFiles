
nnoremap <leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>
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
inoremap <C-c> <esc>
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
