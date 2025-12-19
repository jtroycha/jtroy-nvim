-- lua/plugins/treesitter.lua

return {
    'nvim-treesitter/nvim-treesitter',
    event = "VeryLazy", -- Keep this for early loading
    build = ':TSUpdate',

    -- The 'config' function runs AFTER the plugin has been loaded by lazy.nvim
    config = function()
        -- The module name is 'config' (singular), not 'configs' (plural)
        local treesitter_config = require("nvim-treesitter.config")
        treesitter_config.setup({
            ensure_installed = {"lua", "c", "python", "bash", "rust"},
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
