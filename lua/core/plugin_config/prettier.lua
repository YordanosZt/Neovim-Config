local prettier = require("prettier")

prettier.setup({
  bin = 'prettier', -- or `'prettierd'` (v0.23.3+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})

-- Keymap for formatting
vim.api.nvim_set_keymap('n', '<Leader>f', ':lua vim.lsp.buf.format({ async = true })<CR>', { noremap = true, silent = true })
