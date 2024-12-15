-- Key mappings
vim.keymap.set('n', '<Space>', '', { noremap = true })  -- Make space the leader key
vim.g.mapleader = ' '                                  -- Set leader key to space

-- Nvim Tree
-- Set up Nvim Tree toggle mapping
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- formatting in normal mode
-- nmap <Leader>f <Plug>(:Prettier)

-- range_formatting in visual mode
-- xmap <Leader>f <Plug>(:Prettier)

