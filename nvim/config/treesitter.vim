"lua <<EOF
"require'nvim-treesitter.configs'.setup {
  "ensure_installed = "maintained",
  "sync_install = false,
  "ignore_install = { "c#","haskell","jsonc" },
  "highlight = {
    "-- `false` will disable the whole extension
    "enable = true,
    "disable = { "c#"  },
    "additional_vim_regex_highlighting = false,
  "},
"}
"EOF
