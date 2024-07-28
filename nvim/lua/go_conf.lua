local status, go = pcall(require, "go")
if (not status) then
    print("go is not installed")
    return
end


local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
--vim.api.nvim_create_autocmd("BufWritePre", {
  --pattern = "*.go",
  --callback = function()
   --require('go.format').gofmt()
  --end,
  --group = format_sync_grp,
--})
--



print("go_conf.lua")

vim.keymap.set("n", "<leader>fg", function()
   require('go.format').gofmt()
end)
