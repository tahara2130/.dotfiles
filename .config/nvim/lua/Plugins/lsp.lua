local lsp_installer = require("nvim-lsp-installer")

local lspconfig = require("lspconfig")



-- 1. Set up nvim-lsp-installer first!

lsp_installer.setup {}

-- 2. (optional) Override the default configuration to be applied to all servers.
lspconfig.util.default_config = vim.tbl_extend(
    "force",
    lspconfig.util.default_config,
    {
		on_attach = on_attach
    })
-- 3. Loop through all of the installed servers and set it up via lspconfig
for _, server in ipairs(lsp_installer.get_installed_servers()) do
    lspconfig[server.name].setup {}
end
