
"nnoremap <leader>vv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent><Leader>vv :NERDTreeFind<CR>
let NERDTreeShowHidden=1
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
let g:NERDTreeWinPos = "left"
