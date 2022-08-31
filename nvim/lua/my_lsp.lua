-- lspconfig
local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  -- format on save
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = vim.api.nvim_create_augroup("Format", { clear = true }),
      buffer = bufnr,
      callback = function() vim.lsp.buf.formatting_seq_sync() end
    })
  end
end

local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.init_lsp_saga {
  server_filetype_map = {
    typescript = 'typescript'
  }
}

local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.keymap.set('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
vim.keymap.set('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
vim.keymap.set("n", "<leader>vca", "<cmd>Lspsaga code_action<CR>", { silent = true })
vim.keymap.set("v", "<leader>vca", "<cmd><C-U>Lspsaga range_code_action<CR>", { silent = true })


-- TypeScript
nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" }
}

-- tailwind css
nvim_lsp.tailwindcss.setup {}


-- cmp 
local status, cmp = pcall(require, "cmp")
if (not status) then return end
local lspkind = require 'lspkind'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'buffer' },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  }
})

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
