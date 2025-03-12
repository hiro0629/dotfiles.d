-- ==============================
-- 🌟 Basic Neovim Config 🌟
-- ==============================
-- Short Cut
vim.api.nvim_create_user_command("Config", "edit ~/.config/nvim/init.lua", {})
-- Leader Key
-- vim.g.mapleader = " "  -- Set <Space> as the leader key

-- UI Enhancements
vim.o.number = true  -- Show line numbers
vim.o.relativenumber = true  -- Show relative numbers
vim.o.cursorline = true  -- Highlight the current line
vim.o.termguicolors = true  -- Enable true colors
vim.o.signcolumn = "yes"  -- Always show sign column
vim.o.scrolloff = 3  -- Keep cursor 8 lines from screen edge

-- Indentation & Tabs
vim.o.expandtab = true  -- Use spaces instead of tabs
vim.o.tabstop = 4  -- Tab size of 4 spaces
vim.o.softtabstop = 4  -- Makes backspace and <Tab> behave consistently
vim.o.shiftwidth = 4  -- Indentation level
vim.o.smartindent = true  -- Auto-indent new lines
vim.o.autoindent = true  -- Copy indentation from the previous line

-- -- Performance
-- vim.o.updatetime = 300  -- Faster UI updates
-- vim.o.timeoutlen = 300  -- Reduce key mapping timeout
-- vim.o.hidden = true  -- Keep buffers open in the background
-- 
-- -- Clipboard Integration
-- vim.o.clipboard = "unnamedplus"  -- Use system clipboard
-- 
-- -- Search & Navigation
-- vim.o.ignorecase = true  -- Ignore case in searches
-- vim.o.smartcase = true  -- Case-sensitive if uppercase is used
-- vim.o.incsearch = true  -- Highlight matches while searching
-- vim.o.hlsearch = false  -- Do not highlight search results
-- 
-- -- Undo & Backup
-- vim.o.undofile = true  -- Enable persistent undo
vim.o.swapfile = false  -- Disable swap files

-- -- Split Windows Behavior
-- vim.o.splitbelow = true  -- Open new horizontal splits below
-- vim.o.splitright = true  -- Open new vertical splits to the right
-- 
-- -- ==============================
-- -- 🎯 Keybindings 🎯
-- -- ==============================
-- 
-- local keymap = vim.keymap.set  -- Shortcut for setting keymaps
-- 
-- Fast Escape in Insert Mode
vim.keymap.set("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.o.timeoutlen = 300  -- Reduce delay before recognizing 'jj' (default is 1000ms)
-- 
-- 
-- -- Window Navigation (Similar to Tmux)
-- keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
-- keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
-- keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
-- keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
-- 
-- -- Easy Saving and Quitting
-- keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
-- keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
-- keymap("n", "<leader>x", ":x<CR>", { noremap = true, silent = true })
-- 
-- -- Move Lines Up/Down (Like VSCode)
-- keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
-- keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
-- keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
-- keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
-- 
-- -- ==============================
-- -- 📦 Plugin Manager (lazy.nvim) 📦
-- -- ==============================
-- 
-- -- Install lazy.nvim if not installed
-- local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system({
--     "git",
--     "clone",
--     "--filter=blob:none",
--     "https://github.com/folke/lazy.nvim.git",
--     "--branch=stable",
--     lazypath,
--   })
-- end
-- vim.opt.rtp:prepend(lazypath)
-- 
-- require("lazy").setup({
--   -- 🔥 Treesitter for better syntax highlighting
--   { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
-- 
--   -- 🛠 LSP Config (Built-in Language Server Support)
--   { "neovim/nvim-lspconfig" },
-- 
--   -- ⚡ Autocompletion Plugin
--   { "hrsh7th/nvim-cmp" },
-- 
--   -- 📂 File Explorer (like NERDTree)
--   { "nvim-tree/nvim-tree.lua" },
-- 
--   -- 🚀 Fuzzy Finder (like CtrlP)
--   { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
-- })
-- 
-- -- ==============================
-- -- 🎨 Colorscheme 🎨
-- -- ==============================
-- 
-- -- Install a theme (e.g., gruvbox)
-- vim.cmd("colorscheme gruvbox")
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
-- 
