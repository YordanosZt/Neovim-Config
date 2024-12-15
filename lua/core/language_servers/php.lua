local lspconfig = require('lspconfig')

-- PHP Language Server Configuration
lspconfig.intelephense.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Enable autocompletion
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000; -- Increase file size limit for large projects
      },
    },
  },
}

