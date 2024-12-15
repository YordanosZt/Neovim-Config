-- suggestion

local lspconfig = require('lspconfig')

-- HTML Language Server setup
lspconfig.html.setup {
  filetypes = { "html", "htmldjango" }, -- Add additional filetypes if needed
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Enable autocompletion support
}

-- Snippets
require("luasnip.loaders.from_vscode").lazy_load() -- Load snippets from friendly-snippets

-- Emmet integration
local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})
