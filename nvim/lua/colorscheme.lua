 --colorscheme 
local status, n = pcall(require, "tokyonight")
if (not status) then return end
vim.cmd('colorscheme tokyonight-night')
vim.cmd('set background=dark')
vim.cmd('highlight ColorColumn ctermbg=0 guibg=#000')
vim.cmd('hi SignColumn guibg=none')
vim.cmd('hi CursorLineNR guibg=None')
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight LineNr guifg=#5eacd3')
vim.cmd('highlight netrwDir guifg=#5eacd3')
vim.cmd('highlight qfFileName guifg=#aed75f')
vim.cmd('hi TelescopeBorder guifg=#5eacd') 
