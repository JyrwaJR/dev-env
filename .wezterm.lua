-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
-- my coolnight colorscheme
config.colors = {
  foreground = "#CBE0F0",
  background = "#011423",
  cursor_bg = "#47FF9C",
  cursor_border = "#47FF9C",
  cursor_fg = "#011423",
  selection_bg = "#033259",
  selection_fg = "#CBE0F0",
  ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
  brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.font = wezterm.font({
  family = "MesloLGS Nerd Font Mono",
  -- family = "CaskaydiaCove Nerd Font",
  weight = "Medium",
  stretch = "Normal",
  style = "Normal",
  harfbuzz_features = {
    'ccmp',      -- Glyph Composition/Decomposition
    'liga',      -- Standard Ligatures
    'dlig',      -- Discretionary Ligatures
    'calt',      -- Contextual Alternates
    'clig',      -- Contextual Ligatures
    'kern',      -- Kerning
    'mark',      -- Mark Positioning
    'mkmk',      -- Mark to Mark Positioning
    'locl',      -- Localized Forms
    'salt',      -- Stylistic Alternates
    'ss01',      -- Stylistic Set 1
    'ss02',      -- Stylistic Set 2
    'ss03',      -- Stylistic Set 3
    'ss04',      -- Stylistic Set 4
    'ss05',      -- Stylistic Set 5
    'ss06',      -- Stylistic Set 6
    'ss07',      -- Stylistic Set 7
    'ss08',      -- Stylistic Set 8
    'ss09',      -- Stylistic Set 9
    'ss10',      -- Stylistic Set 10
    'ss11',      -- Stylistic Set 11
    'ss12',      -- Stylistic Set 12
    'ss13',      -- Stylistic Set 13
    'ss14',      -- Stylistic Set 14
    'ss15',      -- Stylistic Set 15
    'ss16',      -- Stylistic Set 16
    'ss17',      -- Stylistic Set 17
    'ss18',      -- Stylistic Set 18
    'ss19',      -- Stylistic Set 19
    'ss20',      -- Stylistic Set 20
    'fractions', -- Fractions
    'onum',      -- Oldstyle Figures
    'lnum',      -- Lining Figures
    'pnum',      -- Proportional Figures
    'tnum',      -- Tabular Figures
    'subs',      -- Subscript
    'sups',      -- Superscript
    'frac',      -- Fractions
    'sc'         -- Small Capitals
  }

})
config.font_size = 16
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.hide_mouse_cursor_when_typing = true
config.keys = {
  -- Open a new tab with cmd (Command Prompt)
  {
    key = "C",
    mods = "CTRL|SHIFT",
    action = wezterm.action({ SpawnCommandInNewTab = { args = { 'C:\\Windows\\System32\\cmd.exe' } } })
  },
  -- Open a new tab with bash
  {
    key = "B",
    mods = "CTRL|SHIFT",
    action = wezterm.action({ SpawnCommandInNewTab = { args = { 'C:\\Program Files\\Git\\bin\\bash.exe', '-l' } } })
  },
  -- Open a new tab with PowerShell
  {
    key = "P",
    mods = "CTRL|SHIFT",
    action = wezterm.action({ SpawnCommandInNewTab = { args = { 'C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe' } } })
  },
  -- Toggle always on top
  {
    key = ']',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ToggleAlwaysOnTop,
  },
}

return config
