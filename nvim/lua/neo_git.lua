local neogit = require('neogit')


neogit.setup {}

vim.keymap.set("n", "<leader>gs", function()
    print("amir is here")
    neogit.open({ })
end)

vim.keymap.set("n", "<leader>ga", "<cmd>!git fetch --all<CR>");





