-- lua/user/core/keymaps.lua
-- Keybindings for Neovim
-- This file contains mappings to improve usability and workflow.
----------------------------------------------------------------------------------------------

-- GENERAL CONFIGURATIONS
-- Set <Space> as the leader key
vim.g.mapleader = ' '  -- Leader key is Space
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true, silent = true })  -- Disable Space default action

-- Clear search highlights
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohlsearch<CR>', { noremap = true, silent = true })  -- Clear search

----------------------------------------------------------------------------------------------

-- NAVIGATION
-- Move between splits using <leader>h/j/k/l
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })  -- Move to the left split
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })  -- Move to the split below
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })  -- Move to the split above
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })  -- Move to the right split

----------------------------------------------------------------------------------------------

-- NVIM-TREE (PLUGIN)
-- Open/close the file explorer
vim.api.nvim_set_keymap('n', '<leader>ef', ':NvimTreeToggle<CR>', { noremap = true, silent = true })  -- Toggle NvimTree

----------------------------------------------------------------------------------------------

-- TELESCOPE (PLUGIN)
-- Open Telescope to find files
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })  -- Find files

-- Search for text within the project
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })  -- Search text

----------------------------------------------------------------------------------------------
-- COMMENT TOGGLE (OPTIONAL PLUGIN)
-- Uncomment this section if you have a comment plugin installed like `Comment.nvim`
-- Toggle comments in normal and visual modes
-- vim.api.nvim_set_keymap('n', '<leader>/', ':CommentToggle<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<leader>/', ':CommentToggle<CR>gv', { noremap = true, silent = true })
----------------------------------------------------------------------------------------------


