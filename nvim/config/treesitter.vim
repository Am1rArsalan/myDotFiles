lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "typescript", "javascript", "rust", "go", "lua",  "tsx"},


  highlight = {
       enable = true,
       disable = { "c" },
  },
}

EOF
