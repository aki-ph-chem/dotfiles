# wezterm config

setting file(Lua) of wezterm

## keybind

1. move tab

- forward: Ctrl + Tab
- backward: Ctrl + Tab + Shift
- move to n-1 th Tab: Alt + n

## setting by Lua 

1. tarnsparent background

```Lua
-- transparent background
config.window_background_opacity = 0.5
```

2. move to n-1 th Tab by Alt + n

```Lua
-- keybinding

config.keys = {}

-- move to n-1 th Tab: ALT + n  
local function move_nth_tab()
    for i = 1, 8, 1 do
        table.insert(config.keys, {
        key = tostring(i),
        mods = 'ALT',
        action = wezterm.action.ActivateTab(i - 1)
        })
    end
end
move_nth_tab()
```
