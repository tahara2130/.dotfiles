vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- use "windwp/nvim-autopairs"

	-- use 'nvim-treesitter/nvim-treesitter'
	-- use 'windwp/nvim-ts-autotag'

	-- use "glepnir/dashboard-nvim"
	-- use "nvim-lualine/lualine.nvim"
	-- use "tpope/vim-commentary"

	-- use 'folke/tokyonight.nvim'
	-- use 'norcalli/nvim-colorizer.lua'
	-- use "ryanoasis/vim-devicons"
	-- use "kyazdani42/nvim-web-devicons"

	-- if packer_bootstrap then
	-- 	require('packer').sync()
	-- end
end)
