local configs = require'nvim-treesitter.configs'
configs.setup {
	autotag = {
		enable = true,
		filetypes = {"html", "javascriptreact"},
	},
	ensure_installed = {"lua", "javascript", "css", "c", "go", "json"},
	highlight = {
		enable = true,
		disable = {},
	},
	indent = {
		enable = true,
		disable = {},
	}
}
