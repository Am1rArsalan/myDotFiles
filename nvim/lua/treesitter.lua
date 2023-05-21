local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end


require"nvim-treesitter.install".compilers = {"gcc"}

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "c",
    "lua",
    "rust",
    "go",
    "tsx",
    "toml",
    "yaml",
    "css",
    "html",
    "typescript",
    "json",
    "javascript",
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

