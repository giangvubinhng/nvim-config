return require'packer'.startup(function()
    use 'wbthomason/packer.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'EdenEast/nightfox.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'terrortylor/nvim-comment'
    use 'akinsho/toggleterm.nvim'
    use 'romgrk/barbar.nvim'
    use 'mg979/vim-visual-multi'
    use 'norcalli/nvim-colorizer.lua'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'glepnir/dashboard-nvim'
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'simrat39/rust-tools.nvim'
    use {'williamboman/mason.nvim'}
end)
