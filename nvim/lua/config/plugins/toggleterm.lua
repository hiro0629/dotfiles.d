return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup{
            -- 必要に応じて設定を追加
            open_mapping = [[<c-w>]], -- <C-w>でターミナルを開閉 default <c-t>
            --            open_mapping = "<space>t",
            direction = 'float',     -- 浮動ウィンドウで表示
            -- その他の設定は公式ドキュメントを参照
            keymaps = {
                -- see nvim/lua/keympas.lua
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
