local remap = require("keymap")
local nnoremap = remap.nnoremap


-- doesn't work
nnoremap("<leader><CR>", "<cmd>so ~/.config/nvim/init.lua<CR>");


-- movements  
nnoremap("<leader>h", "<cmd>wincmd h<CR>");
nnoremap("<leader>j", "<cmd>wincmd j<CR>");
nnoremap("<leader>k", "<cmd>wincmd k<CR>");
nnoremap("<leader>l", "<cmd>wincmd l<CR>");

nnoremap("<leader>+", "<cmd>vertical resize +5<CR>");
nnoremap("<leader>-", "<cmd>vertical resize -5<CR>");
nnoremap("<leader>rp", "<cmd>vertical resize 100<CR>");

nnoremap("<C-f>","<cmd>silent !tmux neww tmux-sessionizer<CR>")
nnoremap ("<leader>u","<cmd>UndotreeShow<CR>")



vim.cmd('cnoreabbrev W! w!')
vim.cmd('cnoreabbrev Q! q!')
vim.cmd('cnoreabbrev Qall! qall!')
vim.cmd('cnoreabbrev Wq wq')
vim.cmd('cnoreabbrev Wa wa')
vim.cmd('cnoreabbrev wQ wq')
vim.cmd('cnoreabbrev WQ wq')
vim.cmd('cnoreabbrev W w')
vim.cmd('cnoreabbrev W1 w')
vim.cmd('cnoreabbrev w1 w')
vim.cmd('cnoreabbrev Q q')
vim.cmd('cnoreabbrev Qall qall')


--com! W w
--xnoremap <leader>p "_dP
--nnoremap <leader>y "+y
--vnoremap <leader>y "+y
--nnoremap <leader>Y gg"+yG
--nnoremap <leader>d "_d
--vnoremap <leader>d "_d
--nnoremap <leader>m :MaximizerToggle<CR>
--nnoremap <leader>x :!chmod +x %<CR>
--nnoremap <leader>ghw :h <C-R>=expand("<cword>")<CR><CR>
--nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>





