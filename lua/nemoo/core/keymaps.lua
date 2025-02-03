-- lua/nemoo/core/keymaps.lua
-- Keybindings for Neovim
----------------------------------------------------------------------------------------------
-- $$\                                                                       
-- $$ |                                                                      
-- $$ |  $$\  $$$$$$\  $$\   $$\ $$$$$$\$$$$\   $$$$$$\   $$$$$$\   $$$$$$$\ 
-- $$ | $$  |$$  __$$\ $$ |  $$ |$$  _$$  _$$\  \____$$\ $$  __$$\ $$  _____|
-- $$$$$$  / $$$$$$$$ |$$ |  $$ |$$ / $$ / $$ | $$$$$$$ |$$ /  $$ |\$$$$$$\  
-- $$  _$$<  $$   ____|$$ |  $$ |$$ | $$ | $$ |$$  __$$ |$$ |  $$ | \____$$\ 
-- $$ | \$$\ \$$$$$$$\ \$$$$$$$ |$$ | $$ | $$ |\$$$$$$$ |$$$$$$$  |$$$$$$$  |
-- \__|  \__| \_______| \____$$ |\__| \__| \__| \_______|$$  ____/ \_______/ 
--                     $$\   $$ |                        $$ |                
--                     \$$$$$$  |                        $$ |                
--                      \______/                         \__|                
--
------------------------------------------------------------------------------------------------

-- GENERAL CONFIGURATIONS
-- Set <Space> as the leader key
vim.g.mapleader = ' '  -- Leader key is Space
vim.g.maplocalleader = ' ' 

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
vim.api.nvim_set_keymap('n', '<leader>el', ':Neotree filesystem reveal right<CR>', { noremap = true, silent = true })  -- Toggle NvimTree right 

----------------------------------------------------------------------------------------------

-- TELESCOPE (PLUGIN)
-- Open Telescope to find files
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })  -- Find files

-- Search for text within the project
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })  -- Search text

----------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------


