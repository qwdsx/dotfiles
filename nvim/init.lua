require('settings')
require('keybinds')
require('plugins')
require('plugin_config.plugin_init')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').cssls.setup({
	capabilities = capabilities,
})
