vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>rt', function() vim.cmd [[Neotree position=current]] end)
vim.keymap.set('n', '<leader>ter', '<C-w><C-v><C-w><C-w>:ter<Cr>i')
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

local toggle_virtual_lines = true
vim.keymap.set('n', '<Leader>vl', function ()
    vim.diagnostic.config({virtual_lines=toggle_virtual_lines})
    toggle_virtual_lines = not toggle_virtual_lines
end)

vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<Leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('v', '<Leader>ca', '<cmd>lua vim.lsp.buf.range_code_action()<CR>')
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev({ border = "single" })<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next({ border = "single" })<CR>')
vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
