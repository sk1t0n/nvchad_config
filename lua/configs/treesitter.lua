vim.filetype.add {
  pattern = {
    [".*%.blade%.php"] = "blade",
  },
}

require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "vim",
    "lua",
    "luadoc",
    "html",
    "css",
    "scss",
    "json",
    "jsonc",
    "jsdoc",
    "javascript",
    "typescript",
    "tsx",
    "vue",
    "bash",
    "make",
    "markdown",
    "markdown_inline",
    "sql",
    "php",
    "php_only",
    "phpdoc",
    "twig",
    "c",
    "go",
    "goctl",
    "gomod",
    "gosum",
    "gotmpl",
    "gowork",
    "rust",
    "comment",
    "dockerfile",
    "helm",
    "terraform",
    "editorconfig",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "query",
    "regex",
    "toml",
    "yaml",
    "xml",
    "nginx",
    "http",
    "proto",
    "thrift",
    "robots",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.blade = {
  install_info = {
    url = "https://github.com/EmranMR/tree-sitter-blade",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "blade",
}
