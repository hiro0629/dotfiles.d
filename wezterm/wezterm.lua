local wezterm = require 'wezterm'


local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- フォントの設定
config.font = wezterm.font("Meslo LG L for Powerline", {weight="Medium", stretch="Normal", style="Normal"})
-- フォントサイズの設定
config.font_size = 16

-- カラースキームの設定
-- config.color_scheme = 'AdventureTime'
config.color_scheme = 'Dracula+'
-- config.color_scheme = 'Dark Ocean'
-- 背景透過
config.window_background_opacity = 0.78

-- Scroll back
config.scrollback_lines = 3500

-- Paste
local act = wezterm.action

config.keys = {

-- paste from the clipboard

{ key = 'v', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },

-- paste from the primary selection

{ key = 'v', mods = 'CTRL', action = act.PasteFrom 'PrimarySelection' },

}

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = act({ PasteFrom = "Clipboard" }),
	},
}


-- exit
config.exit_behavior = 'CloseOnCleanExit'

return config
