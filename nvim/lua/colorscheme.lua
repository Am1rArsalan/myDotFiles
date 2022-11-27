 --colorscheme 
local status, n = pcall(require, "tokyonight")
if (not status) then return end
--vim.cmd('colorscheme tokyonight-night')
vim.cmd('colorscheme gruvbox')
vim.cmd('set background=dark')
vim.cmd('highlight ColorColumn ctermbg=0 guibg=#000')
vim.cmd('hi SignColumn guibg=none')
vim.cmd('hi CursorLineNR guibg=None')
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight LineNr guifg=#5eacd3')
vim.cmd('highlight netrwDir guifg=#5eacd3')
vim.cmd('highlight qfFileName guifg=#aed75f')
vim.cmd('hi TelescopeBorder guifg=#5eacd') 




-- NeoSolarized 
--local status, n = pcall(require, "neosolarized")
--if (not status) then return end

--n.setup({
----comment_italics = true,
--})

--local cb = require('colorbuddy.init')
--local Color = cb.Color
--local colors = cb.colors
--local Group = cb.Group
--local groups = cb.groups
--local styles = cb.styles

--Color.new('black', '#000000')
--Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
--Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
--Group.new('Visual', colors.none, colors.base03, styles.reverse)

--local cError = groups.Error.fg
--local cInfo = groups.Information.fg
--local cWarn = groups.Warning.fg
--local cHint = groups.Hint.fg

--Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
--Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
--Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
--Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
--Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
