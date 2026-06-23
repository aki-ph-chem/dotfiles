# Niri Config

## Launch

```bash
niri-session -l
```

## Key Bindings

- `mod` → Super key
- **mod + Return** — terminal
- **mod + Shift + q** — kill window
- **mod + z** — rofi (drun)
- **mod + d** — rofi (run)
- **F1** — toggle mute
- **F2** — volume -5%
- **F3** — volume +5%
- **F5** — brightness -5%
- **F6** — brightness +5%
- **mod + shift + c** - reload config file
- **mod + w** - maximize window to edges
- **mod + ,** - focus-workspace-previous
- **mod + .** - focus-workspace-down
- **mod + {1,2,3,4,5,6,7}** - switching to n-th wokrspace
- **alt + {H,L,J,K}** - focus {left,right,down,up}
- **mod + shift + {H,L,J,K}** - focus {left,right,down,up}
- **print** - flameshot gui -p "$HOME/Pictures/ScreenShot/"

## Services

- `waybar` - highly customizable Wayland bar for Sway 
- `waypaper --restore` — wallpaper
- `wl-paste -t text --watch clipman store --no-persist` — clipboard manager
- `swayidle -w` — idle management
- `fcitx5 &` — input method

## Appearance

- background transparent
    - opacity: 0.8
- background effect
    - xray: true
    - blur: false
