local status, prettier = pcall(require, "prettier")
if (not status) then return end

prettier.setup {
    bin = 'prettier',
    filetypes = {
        "css",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "json",
        "scss",
        "less",
        "lua",
        "go",
    },
    config_precedence = "prefer-file", -- or "cli-override" or "file-override"
}




vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  callback = function()
    vim.cmd("EslintFixAll")
    vim.cmd("Prettier")
  end,
  group = autogroup_eslint_lsp,
})
