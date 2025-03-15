return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    },
  config = function()
    require("noice").setup({
      messages = {
        enabled = true,
        view = "mini", -- Use a small inline message instead of a floating window
        timeout = 800, -- Shorter duration for messages
      },
      notify = {
        enabled = true,
        view = "mini", -- Use mini popup for notifications
        timeout = 1800, -- Make popups disappear quickly
      },
    })
  end,
}

