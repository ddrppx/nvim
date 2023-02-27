return require('packer').startup(function(use)
    -- Packer can manage itself
    use { 'wbthomason/packer.nvim' }
    -- Themes
    use 'shaunsingh/nord.nvim' 
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use {
        'tamton-aquib/staline.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons', opt=true
        },
        event = "BufRead",
        config = "require('staline-config')"
    }
    use {
        'akinsho/bufferline.nvim',
        tag = "v3.*",
        requires = 'nvim-tree/nvim-web-devicons',
        event = "BufWinEnter",
        config = "require('bufferline-config')"
    }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      config = "require('nvim-tree-config')"
    }
    -- Treesitter
    use { 
        'nvim-treesitter/nvim-treesitter', 
        run = ":TSUpdate",
        event = "BufWinEnter",
        config = "require('treesitter-config')"
    }
    use { 
        'windwp/nvim-autopairs',
        config = "require('autopairs-config')",
        after = "nvim-cmp"
    }
    use { 
        'windwp/nvim-ts-autotag',
        event = "InsertEnter",
        after = "nvim-treesitter"
    }
    use { 
        'p00f/nvim-ts-rainbow',
        after = "nvim-treesitter"
    }
    use { 
        'folke/which-key.nvim',
        event = "BufWinEnter",
        config = "require('whichkey-config')"
    }
    use {
	    'nvim-telescope/telescope.nvim',
	    tag = '0.1.1',
	    requires = {
	    	{ 'nvim-lua/plenary.nvim' } 
	    },
        config = "require('telescope-config')",
        cmd = "Telescope"
    }
    use { 
        "williamboman/mason.nvim",
        config = "require('mason-config')"
    }
    use {
        "williamboman/mason-lspconfig.nvim"
    }
    use { 
        'neovim/nvim-lspconfig',
        config = "require('lsp')"
    }
    use {
        'hrsh7th/cmp-nvim-lsp'
    }
    use { 
        'hrsh7th/cmp-buffer'
    }
    use {
        'hrsh7th/nvim-cmp'
    }
    use {
        'hrsh7th/cmp-path'
    }
    use {
        'hrsh7th/cmp-cmdline'
    }
    use {
        'hrsh7th/vim-vsnip'
    }
    use {
        'onsails/lspkind-nvim'
    }
    use {
        'norcalli/nvim-colorizer.lua',
        config = "require('colorizer-config')",
        event = "BufRead"
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = "require('blankline-config')",
        event = "BufRead"
    }
    use {
        "akinsho/toggleterm.nvim",
        tag = '*', 
        config = "require('toggleterm-config')"
    }
    use {
        'terrortylor/nvim-comment',
        config = "require('comment-config')"
    }
end)
