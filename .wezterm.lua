local wezterm = require 'wezterm'
local config = {}


config.keys = {
    -- Example Linux clipboard integration
    {
        key = 'C',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.CopyTo 'Clipboard',
    },
    {
        key = 'V',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.PasteFrom 'Clipboard',
    },
}


-- Performance optimizations for native
config.front_end = "OpenGL"  -- Better GPU acceleration on Linux
config.animation_fps = 1     -- Reduce animations for better performance
config.max_fps = 120 -- Higher refresh rate support

-- Keep your existing aesthetic preferences
config.default_cursor_style = 'BlinkingBlock'
-- config.window_decorations = "RESIZE"
config.window_background_opacity = 0.80
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 13.0
config.enable_tab_bar = false
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

-- Font rendering (Linux-optimized)
config.freetype_load_target = 'Light'
config.freetype_render_target = 'HorizontalLcd'

-- Optional: Linux-specific optimizations
config.enable_wayland = true  -- If you're using Wayland
config.term = "wezterm"      -- Better terminal compatibility
config.enable_tab_bar = true -- If you're using Neovim's tabs

-- Optional: Better GPU performance
config.webgpu_preferred_adapter = wezterm.gui.enumerate_gpus()[1]

return config
