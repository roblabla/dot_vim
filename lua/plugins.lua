return {
  -- Visual
  {
    'tanvirtin/monokai.nvim',
    config = function()
      require('monokai').setup { palette = require('monokai').ristretto }
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', 'tanvirtin/monokai.nvim' },
    config = true
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = true
  },

  {
    'lewis6991/gitsigns.nvim',
    event = 'VeryLazy',
    config = true
  },

  -- Behavioral
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope'
  },
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = true,
    cmd = { "NvimTreeOpen", "NvimTreeToggle" }
  },

  -- Tree Sitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "c", "lua", "rust", "nix", "python", "toml", "yaml", "json", "dhall" },
        highlight = {
          enable = true,
        },
      }
    end
  },

  -- Auto-complete.
  {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig')['rust_analyzer'].setup{
        on_attach = on_attach,
        flags = lsp_flags,
        settings = {
          ["rust-analyzer"] = {}
        }
      }
    end
  },
  {
    'simrat39/rust-tools.nvim',
    config = function()
      local rt = require("rust-tools")
      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set("n", "<Leader>h", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
      })
    end
  },

  {
    'williamboman/nvim-lsp-installer',
    config = true,
  },

  -- VimWiki
  {
    'vimwiki/vimwiki',
    -- Use dev branch so I keep my tab key plz
    branch = "dev",
    ft = "vimwiki",
    keys = { "<Leader>ww" },
    config = function()
      -- Disable links mappings because they collide with my tab mapping.
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "vimwiki",
        callback = function()
          vim.keymap.del("n", "<Tab>", { buffer = 0 })
          vim.keymap.del("n", "<S-Tab>", { buffer = 0 })
        end
      })
      vim.g.vimwiki_list = {{path='~/vimwiki/', syntax='markdown', ext='md' }}
    end,
  },

  -- QOL: Sudo write
  {
    "lambdalisue/suda.vim",
    cmd = { "SudaWrite", "SudaRead" },
  },

  {
    'TimUntersberger/neogit',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = true,
    cmd = 'Neogit'
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = true,
    cmd = 'Trouble'
  },

  {
    "dstein64/vim-startuptime",
    cmd = 'StartupTime'
  }
}
