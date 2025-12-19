-- lua/plugins/telescope.lua

return {
    'nvim-telescope/telescope.nvim',
    tag = 'v0.2.0', -- It's good practice to pin to a stable tag
    dependencies = { 'nvim-lua/plenary.nvim' },
    -- The 'config' function runs AFTER the plugin has been loaded
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end,
}
