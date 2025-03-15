local wezterm = require("wezterm")

-- Define leader key
local keymaps = {
  leader = { key = "j", mods = "CTRL" }, -- Set Leader Key
  keys = {
    -- タブの管理
    {
      key = "[",
      mods = "LEADER",
      action = wezterm.action.ActivateTabRelative(-1), -- 前のタブへ移動
    },
    {
      key = "]",
      mods = "LEADER",
      action = wezterm.action.ActivateTabRelative(1), -- 次のタブへ移動
    },

    -- 新しいタブを開く
    {
      key = "t",
      mods = "LEADER",
      action = wezterm.action.SpawnTab("DefaultDomain"),
    },

    -- ペーンの移動
    {
      key = "h",
      mods = "LEADER",
      action = wezterm.action.ActivatePaneDirection("Left"),
    },
    {
      key = "l",
      mods = "LEADER",
      action = wezterm.action.ActivatePaneDirection("Right"),
    },
    {
      key = "j",
      mods = "LEADER",
      action = wezterm.action.ActivatePaneDirection("Down"),
    },
    {
      key = "k",
      mods = "LEADER",
      action = wezterm.action.ActivatePaneDirection("Up"),
    },
    {
      key = "h",
      mods = "LEADER",
      action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
    },
    {
      key = "v",
      mods = "LEADER",
      action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
    },
  },
}

return keymaps

