return {
    'catppuccin/nvim',
    lazy = false,
    priority = 1001,
    name = 'catppuccin',
    opts = {
        flavour = 'mocha',
        transparent_background = true,
        integrations = {
            cmp = true,
            lsp_trouble = true,
            mason = true,
            native_lsp = {
                enabled = true,
                underlines = {
                    errors = { 'undercurl' },
                    hints = { 'undercurl' },
                    warnings = { 'undercurl' },
                    information = { 'undercurl' },
                },
            },
            telescope = true,
            treesitter = true,
            treesitter_context = true,
            which_key = true,
        },
    },
    config = function ()
        vim.cmd [[colorscheme catppuccin-mocha]]

        vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeNormal', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'NeoTreeNormalNC', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'LineNR', { fg = 'white' })
    end
}
