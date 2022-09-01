vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.scriptencoding= 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")
vim.opt.colorcolumn = "80"
vim.g.mapleader = " "

vim.cmd('set clipboard=unnamedplus') 
vim.cmd('set mouse=a') 

--vim.cmd("g:clipboard = {
--\   'name': 'myClipboard',
--\   'copy': {
--\      '+': ['tmux', 'load-buffer', '-'],
--\      '*': ['tmux', 'load-buffer', '-'],
--\    },
--\   'paste': {
--\      '+': ['tmux', 'save-buffer', '-'],
--\      '*': ['tmux', 'save-buffer', '-'],
--\   },
--\   'cache_enabled': 1,
--\ }
--")
