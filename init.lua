-- init.lua

-- Load lazy.nvim itself and its bootstrap (from lua/config/lazy.lua)
-- This file should handle the installation of lazy.nvim if it's not present
-- and add it to the runtime path.
require("config.lazy")

-- Gather all plugin specifications from the 'lua/plugins' directory.
-- Each file in lua/plugins/ (e.g., treesitter.lua, telescope.lua)
-- should return a single plugin spec table.
local plugins = {
    require("plugins.luarocks"),
    require("plugins.catppuccin"),
    require("plugins.telescope"),
    require("plugins.treesitter"),
    require("plugins.neo-tree"),
    require("plugins.lualine"),
    require("plugins.lsp-config"),
    -- Add any other plugins you define in lua/plugins/ here
}

require('vim-options')

-- Setup lazy.nvim with all your plugin specifications
require('lazy').setup(plugins)

-- Any global configurations or keymaps that don't belong to a specific plugin's config
-- can go here, after the lazy.setup block.

