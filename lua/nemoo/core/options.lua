-- lua/nemoo/core/options 
------------------------------------------------------------   
--  ▄▄▄  ▄▄▄▄    ■   ▄  ▄▄▄  ▄▄▄▄   ▄▄▄ 
-- █   █ █   █ ▗▄▟▙▄▖▄ █   █ █   █ ▀▄▄  
-- ▀▄▄▄▀ █▄▄▄▀   ▐▌  █ ▀▄▄▄▀ █   █ ▄▄▄▀ 
--       █       ▐▌  █                  
--       ▀       ▐▌                     
------------------------------------------------------------   
-- Enable line numbers for better code navigation
vim.o.number = true  -- Show the current line number
vim.o.relativenumber = true  -- Relative line numbers for easy movement

-- Set indentation settings --------------------------------
vim.o.expandtab = true  -- Use spaces instead of tabs
vim.o.shiftwidth = 4    -- Number of spaces for each indentation level
vim.o.tabstop = 4       -- Number of spaces per tab
vim.o.smartindent = true -- Enable smart indentation based on syntax

-- Better user experience settings --------------------------
vim.o.wrap = false      -- Do not wrap lines
vim.o.scrolloff = 8     -- Keep 8 lines visible above/below the cursor
vim.o.sidescrolloff = 8 -- Keep 8 columns visible on the sides
vim.o.cursorline = true -- Highlight the current line

-- Searching settings ---------------------------------------
vim.o.hlsearch = true   -- Highlight search results
vim.o.incsearch = true  -- Incremental search as you type
vim.o.ignorecase = true -- Case insensitive searching
vim.o.smartcase = true  -- Case sensitive if search contains uppercase

-- Persistent undo for reliable file recovery ---------------
vim.o.undofile = true   -- Enable undo history persistence
vim.o.undodir = vim.fn.stdpath('cache') .. '/undo' -- Directory to store undo files

-- Performance improvements ---------------------------------
vim.o.updatetime = 300   -- Faster completion (default is 4000ms)
vim.o.timeoutlen = 500   -- Faster mapping timeout (default is 1000ms)

-- Visual settings ------------------------------------------
vim.o.termguicolors = true -- Enable 24-bit RGB colors
vim.o.signcolumn = 'yes'   -- Always show the sign column

-- Backup and swap file settings ----------------------------
vim.o.backup = false       -- Disable backup files
vim.o.writebackup = false  -- Disable write backups
vim.o.swapfile = false     -- Disable swap files

-- Splits behavior ------------------------------------------
vim.o.splitbelow = true    -- New horizontal splits appear below
vim.o.splitright = true    -- New vertical splits appear to the right

