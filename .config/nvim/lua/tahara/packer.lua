vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end}
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use 'windwp/nvim-ts-autotag'

    use "glepnir/dashboard-nvim"
    use "nvim-lualine/lualine.nvim"
    use "tpope/vim-commentary"

    use "ryanoasis/vim-devicons"
    use "kyazdani42/nvim-web-devicons"
    use({'folke/tokyonight.nvim', config = function()
        local cmd = vim.cmd
        cmd("colorscheme tokyonight-night")
    end
    })
    use({'norcalli/nvim-colorizer.lua', config = function()
        vim.opt.termguicolors = true
        require("colorizer").setup {'*'}
    end})

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

	if packer_bootstrap then
        require('packer').sync()
	end
end)
