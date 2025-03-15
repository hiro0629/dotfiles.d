-- Leader Key
vim.g.mapleader = " "  -- Set <Space> as the leader key
local keymap = vim.keymap.set  -- Shortcut for setting keymaps

-- Leader + s : save
keymap("n", "<leader>s", ":w<CR>", { noremap = true, silent = true })
-- Leader + q : quit
keymap("n", "<leader>q", ":q<CR>", { noremap = true, silent = true })
-- Leader + c : clear research result
keymap("n", "<leader>c", ":nohlsearch<CR>", { noremap = true, silent = true })
-- Fast Escape in Insert Mode
keymap("i", "jj", "<Esc>", { noremap = true, silent = true })
vim.o.timeoutlen = 1000  -- Reduce delay before recognizing 'jj' (default is 1000ms)

keymap("n", "<leader>t", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

