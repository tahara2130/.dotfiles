local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
	use "windwp/nvim-autopairs"

	-- use "neovim/nvim-lspconfig"
	-- use "hrsh7th/nvim-cmp"
	
	use "glepnir/dashboard-nvim"
	use "nvim-lualine/lualine.nvim"
	use "tpope/vim-commentary"

	use { "catppuccin/nvim", as = "catppuccin" }
	use "ryanoasis/vim-devicons"
	use "kyazdani42/nvim-web-devicons"

	if packer_bootstrap then
		require('packer').sync()
	end
end)

