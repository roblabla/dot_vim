require('monokai').setup { palette = require('monokai').ristretto }

require('nvim-tree').setup {}
require('lualine').setup {}
require('bufferline').setup {}
require('nvim-treesitter.configs').setup {
  ensure_installed = { "c", "lua", "rust", "nix", "python", "toml", "yaml", "json" },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
