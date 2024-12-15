local lspconfig = require('lspconfig')

lspconfig.cssls.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Enable autocompletion
}

