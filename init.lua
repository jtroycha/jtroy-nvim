-- init.lua

vim.g.mapleader = ' ' -- Set <leader> to space
vim.g.maplocalleader = ' ' -- Also set <localleader> to space (optional but good practice)

-- Basic Neovim settings for tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

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
    -- Add any other plugins you define in lua/plugins/ here
}

-- Setup lazy.nvim with all your plugin specifications
require('lazy').setup(plugins)

-- Any global configurations or keymaps that don't belong to a specific plugin's config
-- can go here, after the lazy.setup block.

