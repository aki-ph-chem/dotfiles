# niri

## how to launch

```bash
niri-session -l
```

## config for niri

- key bind
    - mod -> Super key
    - terminal -> mod + Return
    - kill window -> mod + Shift + q
    - rofi -show drun -> mod + z
    - rofi -show run -> mod + d
    - F1 -> pactl -- set-sink-mute @DEFAULT_SINK@ toggle
    - F2 -> pactl -- set-sink-volume @DEFAULT_SINK@ -5%
    - F3 -> pactl -- set-sink-volume @DEFAULT_SINK@ +5%
    - F5 -> brightnessctl set 5%-
    - F6 -> brightnessctl set 5%+

- services 
    - waypaper --restore
    - wl-paste -t text --watch clipman store --no-persist
    - swayidle -w
    - fcitx5 &
