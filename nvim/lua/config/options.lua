-- GENERAL
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- LINE NUMBERS
vim.opt.number = true        -- show absolute numbers
vim.opt.relativenumber = true -- relative numbers for movement

-- INDENTATION
vim.opt.tabstop = 2          -- number of spaces per tab
vim.opt.shiftwidth = 2       -- spaces for autoindent
vim.opt.expandtab = true     -- convert tabs to spaces
vim.opt.smartindent = true   -- smart auto indent

-- SEARCH
vim.opt.ignorecase = true    -- ignore case
vim.opt.smartcase = true     -- case-sensitive only if uppercase used
vim.opt.incsearch = true     -- search while typing
vim.opt.hlsearch = true      -- highlight search

-- CURSOR / UI
vim.opt.cursorline = true    -- highlight current line
vim.opt.wrap = false         -- no line wrap
vim.opt.termguicolors = true -- true color support
vim.opt.signcolumn = "yes"   -- always show sign column

-- SPLITS
vim.opt.splitbelow = true    -- horizontal split below
vim.opt.splitright = true    -- vertical split to the right

-- FILES
vim.opt.swapfile = false     -- no swap files
vim.opt.backup = false       -- no backup files

-- UNDO (PERSISTENT UNDO)
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- MOUSE
vim.opt.mouse = "a"          -- enable mouse everywhere

-- CLIPBOARD (optional)
vim.opt.clipboard = "unnamedplus" -- use system clipboard

-- PERFORMANCE
vim.opt.updatetime = 100
vim.opt.timeoutlen = 300

-- SCROLLING
vim.opt.scrolloff = 8        -- padding above/below cursor

