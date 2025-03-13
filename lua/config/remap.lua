vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>rt', function() vim.cmd [[Neotree position=current]] end)
vim.keymap.set('n', '<leader>ter', '<C-w><C-v><C-w><C-w>:ter<Cr>i')
vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action)
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
