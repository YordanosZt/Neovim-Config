-- Suggestion
local lspconfig = require('lspconfig')

-- Configure clangd
lspconfig.clangd.setup {
  cmd = { "clangd" }, -- Ensure clangd is in your PATH
  filetypes = { "c", "cpp", "objc", "objcpp" }, -- File types to activate on
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git") or vim.fn.getcwd(),
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Optional: Add completion support
}

-- Diagnostic settings (optional)
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  severity_sort = true,
})

