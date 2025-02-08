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
-- <Space> == <leader> 
-- <leader>nh = Clear search
-------------------------------
vim.g.mapleader = ' '  
vim.g.maplocalleader = ' ' 

vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true, silent = true }) 
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohlsearch<CR>', { noremap = true, silent = true })  

----------------------------------------------------------------------------------------------
---BUFFERS 
-- <leader>bn = buffer next
-- <leader>bp = buffer previous
---------------------------
vim.api.nvim_set_keymap('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })

----------------------------------------------------------------------------------------------

-- NAVIGATION
-- Move between splits using <leader>h/j/k/l
--  <leader>sv = split vertical 
--  <leader>sh = split horizontal
---------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })  -- Move to the left split
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })  -- Move to the split below
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })  -- Move to the split above
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })  -- Move to the right split

vim.api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })
----------------------------------------------------------------------------------------------

-- NVIM-TREE (PLUGIN)
-- <leader>e = file system explorer
-- <leader>eg = explorer git status
-- <leader>eb = explorer buffer 
------------------------------------
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle filesystem reveal right<CR>', { noremap = true, silent = true })  -- Toggle NvimTree right 
vim.api.nvim_set_keymap('n', '<leader>eg', ':Neotree toggle git_status git_base=main reveal right<CR>', { noremap = true, silent = true })  -- Toggle NvimTree right 
vim.api.nvim_set_keymap('n', '<leader>eb', ':Neotree toggle buffers reveal right<CR>', { noremap = true, silent = true })  -- Toggle NvimTree right 
----------------------------------------------------------------------------------------------
-- TOGGLE TERMINAL
-- <leader>t = toggle terminal
------------------------------
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm direction=float<CR>', { noremap = true, silent = true })
------------------------------------------------------------------------------------------------
-- TELESCOPE (PLUGIN)
-- <leader>ff = telezcope fzf
-- <leader>fg = telescope fzf + ripgrep <<3<3<3<3<3<33<3
-------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true, silent = true })  -- Find files
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true, silent = true })  -- Search text
----------------------------------------------------------------------------------------------


