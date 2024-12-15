return require('packer').startup(function(use)
  -- ====================== PLUGINS ======================
  -- Packer plugin manager
  use 'wbthomason/packer.nvim'
  
  -- Telescope (Fuzzy finder)
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-telescope/telescope.nvim', tag = '0.1.8',}

  -- Treesitter (Syntax Highlighting)
use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

  -- Nvim Tree
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  -- Lua Line
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- Themes
  use{'projekt0n/github-nvim-theme'}

  -- Prettier (formatter)
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  -- use 'prettier/vim-prettier'

  -- ====================== Auto Completions and Suggestions ======================
  -- lspconfig
  use 'neovim/nvim-lspconfig'

  use 'hrsh7th/nvim-cmp'        -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'    -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-buffer'      -- Buffer completions
  use 'hrsh7th/cmp-path'        -- Path completions
  use 'hrsh7th/cmp-cmdline'     -- Command-line completions
  use 'L3MON4D3/LuaSnip'        -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp

  -- html
  use 'rafamadriz/friendly-snippets' -- Snippet collection

end)
