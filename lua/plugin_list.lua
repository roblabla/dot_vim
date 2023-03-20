local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup({function(use)
  use 'wbthomason/packer.nvim'

  -- Visual
  use 'tanvirtin/monokai.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

  -- Behavioral
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require('nvim-tree').setup {} end,
    cmd = { "NvimTreeOpen", "NvimTreeToggle" }
  }

  -- Tree Sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { "c", "lua", "rust", "nix", "python", "toml", "yaml", "json" },
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = true,
        },
      }
    end
  }

  -- Auto-complete.
  use {
    'neovim/nvim-lspconfig',
    config = function()
      local opts = { noremap=true, silent=true }
      vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, opts)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
      vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist, opts)

      require('lspconfig')['rust_analyzer'].setup{
          on_attach = on_attach,
          flags = lsp_flags,
          -- Server-specific settings...
          settings = {
            ["rust-analyzer"] = {
              
            }
          }
      }
    end
  }
  use {
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
  }

  use {
    'williamboman/nvim-lsp-installer',
    config = function() require("nvim-lsp-installer").setup {} end,
  }

  -- VimWiki
  use {
    'vimwiki/vimwiki',
    -- Use dev branch so I keep my tab key plz
    branch = "dev",
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
  }

  -- QOL: Sudo write
  use {
      "lambdalisue/suda.vim",
      cmd = { "SudaWrite", "SudaRead" },
  }

  use {
      'TimUntersberger/neogit',
      requires = 'nvim-lua/plenary.nvim',
      config = function()
          require('neogit').setup {}
      end
  }

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

end,
config = {
  profile = {
    enable = true,
    threshold = 1,
  }
}})
