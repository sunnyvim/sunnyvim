local present, packer = pcall(require, 'packer')

if not present then
  return
end

packer.startup(function()
  use('wbthomason/packer.nvim')

  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('plugins/configs/treesitter')
    end,
  })

  use('williamboman/nvim-lsp-installer')
  use({
    'neovim/nvim-lspconfig',
    after = 'nvim-lsp-installer',
    config = function()
      require('plugins/configs/lsp-installer')
      require('plugins/configs/lspconfig')
    end,
  })

  -- use({
  --   'EdenEast/nightfox.nvim',
  --   config = function()
  --     vim.cmd('silent! colorscheme nordfox')
  --   end,
  -- })
  --
  -- use('kyazdani42/nvim-web-devicons')
  --
  use({
    'kyazdani42/nvim-tree.lua',
    config = function()
      require('plugins/configs/nvim-tree')
    end,
  })
  -- use({
  --   'nvim-lualine/lualine.nvim',
  --   config = function()
  --     require('plugins/configs/lualine')
  --   end,
  -- })
  -- use({
  --   'akinsho/bufferline.nvim',
  --   tag = 'v2.*',
  --   config = function()
  --     require('plugins/configs/bufferline')
  --   end,
  -- })
end)
