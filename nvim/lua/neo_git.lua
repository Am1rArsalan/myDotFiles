
--
vim.keymap.set("n", "<leader>gs", function()
    -- lazyGit.open()
end)

vim.keymap.set("n", "<leader>ga", "<cmd>!git fetch --all<CR>");
vim.keymap.set("n", "<leader>gts", "<cmd>Neotree float git_status<CR>");
