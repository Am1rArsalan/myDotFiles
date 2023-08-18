local status, go = pcall(require, "go")
if (not status) then
    print("go is not installed")
    return
end


vim.keymap.set("n", "<leader>fg", function()
   require('go.format').gofmt()
end)
