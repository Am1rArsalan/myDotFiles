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
    },
    symbol_in_winbar = {
        in_custom = false  
    }
}

local keymap = vim.keymap.set


local opts = { noremap = true, silent = true  }
keymap('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
keymap('n', 'gp', '<Cmd>Lspsaga peek_definition<CR>', opts)
keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
keymap("n", "<leader>vca", "<cmd>Lspsaga code_action<CR>", { silent = true , })
keymap("v", "<leader>vca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })


