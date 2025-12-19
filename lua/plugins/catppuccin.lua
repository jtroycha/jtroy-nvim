-- lua/plugins/catppuccin.lua

return {
    'catppuccin/nvim',
    lazy = false,
    name = 'catppuccin',
    priority = 1000, -- Ensure colorscheme loads early
    -- The 'config' function runs AFTER the plugin has been loaded
    config = function()
        vim.cmd.colorscheme "catppuccin"
    end,
}

