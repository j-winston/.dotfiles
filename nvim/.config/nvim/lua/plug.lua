  -- [[ Useins Go Here ]]
return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

      -- [[ Theme ]]
    use { 'mhinz/vim-startify'}
    use { 'DanilaMihailov/beacon.nvim'}
    use { 'navarasu/onedark.nvim' } 

    -- [[ Dev ]]
    use { 'nvim-lua/plenary.nvim' }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'Yggdroot/indentLine' }
    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim' }
    use { 'mfussenegger/nvim-dap' } 
    use { 'mfussenegger/nvim-lint' } 

    -- [[ Cmp Plugins ]]
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'hrsh7th/cmp-vsnip' }
    use { 'hrsh7th/vim-vsnip' }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use { "folke/which-key.nvim" }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- [[ Snippets ]]
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'onsails/lspkind.nvim'}
end)




