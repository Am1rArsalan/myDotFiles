-- git 
require('gitsigns').setup {}
local status, git = pcall(require, "git")
if (not status) then return end

git.setup({
  default_mappings = false, -- NOTE: `quit_blame` and `blame_commit` are still merged to the keymaps even if `default_mappings = false`
  keymaps = {
    -- Open blame window
    blame = "<Leader>gb",
    -- Open file/folder in git repository
    browse = "<Leader>go",
  }
})

-- neo git
local neogit = require('neogit')
local nnoremap = require('keymap').nnoremap

neogit.setup {}

nnoremap("<leader>gs", function()
    neogit.open({ })
end);

nnoremap("<leader>ga", "<cmd>!git fetch --all<CR>");
