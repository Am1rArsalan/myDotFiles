local status, saga = pcall(require, "lspsaga")
if (not status) then return end


saga.init_lsp_saga {
    server_filetype_map = {
        typescript = 'typescript'
    },
    code_action_icon = "",
    code_action_lightbulb = {
        enable = false,
        enable_in_insert = false,
        cache_code_action = false,
        sign = false,
        update_time = 150,
        sign_priority = 20,
        virtual_text = false,
    }
}

local opts = { noremap = true, silent = true  }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set("n", "<leader>vca", "<cmd>Lspsaga code_action<CR>", { silent = true , })
vim.keymap.set("v", "<leader>vca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })
