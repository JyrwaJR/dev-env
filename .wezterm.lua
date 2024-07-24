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
    -- family = "MesloLGS Nerd Font Mono",
    family = "CaskaydiaCove Nerd Font",
    harfbuzz_features = {
      'aalt', 'abvf', 'abvm', 'abvs', 'afrc', 'akhn', 'blwf', 'blwm', 'blws',
      'calt', 'case', 'ccmp', 'cfar', 'cjct', 'clig', 'curs', 'c2pc', 'c2sc',
      'dist', 'dlig', 'dnom', 'expt', 'falt', 'fin2', 'fin3', 'fina', 'frac',
      'fwid', 'half', 'haln', 'halt', 'hist', 'hkna', 'hlig', 'hngl', 'hojo',
      'hwid', 'init', 'isol', 'ital', 'jalt', 'jp04', 'jp78', 'jp83', 'jp90',
      'kern', 'lfbd', 'liga', 'ljmo', 'lnum', 'locl', 'mark', 'med2', 'med3',
      'medi', 'mgrk', 'mkmk', 'mset', 'nalt', 'nlck', 'nukt', 'numr', 'onum',
      'ordn', 'ornm', 'palt', 'pcap', 'pkna', 'pnum', 'pref', 'pres', 'pstf',
      'psts', 'pwid', 'qwid', 'rand', 'rclt', 'rkrf', 'rlig', 'rphf', 'rtbd',
      'rtla', 'rtlm', 'ruby', 'salt', 'sinf', 'size', 'smcp', 'smpl', 'ss01',
      'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'ss09', 'ss10',
      'ss11', 'ss12', 'ss13', 'ss14', 'ss15', 'ss16', 'ss17', 'ss18', 'ss19',
      'ss20', 'subs', 'sups', 'swsh', 'titl', 'tjmo', 'tnam', 'tnum', 'trad',
      'twid', 'unic', 'valt', 'vatu', 'vert', 'vhal', 'vjmo', 'vkna', 'vkrn',
      'vpal', 'vrt2', 'zero', 'fwid', 'hwid', 'twid', 'qwid', 'pwid', 'afrc', 
      'frac', 'ordn', 'sinm', 'sups', 'numr', 'dnom', 'rand', 'dlig', 'hlig', 
      'hist', 'liga', 'rlig', 'clig', 'calt', 'swsh', 'titl', 'hist', 'ss01', 
      'ss02', 'ss03', 'ss04', 'ss05', 'ss06', 'ss07', 'ss08', 'ss09', 'ss10', 
      'ss11', 'ss12', 'ss13', 'ss14', 'ss15', 'ss16', 'ss17', 'ss18', 'ss19', 
      'ss20', 'kern', 'mkmk', 'mark', 'size', 'dist', 'curs', 'ccmp', 'locl', 
      'isol', 'init', 'medi', 'fina', 'rphf', 'blwf', 'half', 'pstf', 'vatu', 
      'cjct', 'haln', 'ccmp', 'med2', 'fin2', 'fin3', 'med3', 'tjmo', 'rtlm', 
      'ljmo', 'vjmo', 'rtla', 'vert', 'vrt2', 'vpal', 'vkrn', 'vhal', 'c2sc', 
      'smcp', 'pcap', 'c2pc', 'unic', 'tnum', 'onum', 'pnum', 'lnum', 'zero', 
      'salt', 'titl', 'rand'
    },
  })
config.font_size = 16
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
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
