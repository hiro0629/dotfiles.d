return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
--        require("toggleterm").setup()
        require("toggleterm").setup{
            -- 必要に応じて設定を追加
--            open_mapping = [[<c-\>]], -- <C-\>でターミナルを開閉 default
            open_mapping = "<space>t", -- <C-\>でターミナルを開閉
            direction = 'float',     -- 浮動ウィンドウで表示
            -- その他の設定は公式ドキュメントを参照
            keymaps = {
                ["<leader>t"] = "toggle"
            },
        }

        -- Lazygit を Neovim のフローティングウィンドウで開く
        local Terminal = require("toggleterm.terminal").Terminal
        local lazygit = Terminal:new({
            cmd = "lazygit",
            direction = "float",
            hidden = true
        })

        function _lazygit_toggle()
            lazygit:toggle()
        end

        vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
    end
}


-- return {
--   "akinsho/toggleterm.nvim",
--   version = "*",
--   config = function()
--     require("toggleterm").setup{
--       -- 必要に応じて設定を追加
--       open_mapping = [[<c-\>]], -- <C-\>でターミナルを開閉
--       direction = 'float',     -- 浮動ウィンドウで表示
--       -- その他の設定は公式ドキュメントを参照
--     }
--   end
-- }
