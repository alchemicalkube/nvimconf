-------------
--- LSP
-------------
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
-------------
--- LSP
-------------

-------------
--- Editor
-------------
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
-------------
--- Editor
-------------

-------------
--- Telescope
-------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
-------------
--- Telescope
-------------