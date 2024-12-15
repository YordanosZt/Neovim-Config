local lspconfig = require('lspconfig')

-- Configure the TypeScript/JavaScript Language Server
lspconfig.ts_ls.setup {
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Enable autocompletion
  root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git") or vim.fn.getcwd(),
  settings = {
    javascript = {
      format = {
        semicolons = "remove", -- Example setting: remove semicolons during formatting
      },
    },
    typescript = {
      format = {
        insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = true, -- Example setting
      },
    },
  },
}

