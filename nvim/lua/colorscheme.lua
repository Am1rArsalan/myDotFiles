function ColorMYVim(color)
    vim.cmd('set background=dark')
    color = color or "tokyonight-night"
    --color = color or "rose-pine"
    --color = color or "solarized-osaka-night"
    vim.cmd.colorscheme(color)

    --vim.cmd('set background=light')
    --color = color or "PaperColor"
    --vim.cmd.colorscheme(color)



    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end


ColorMYVim()
