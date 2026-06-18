# dotfiles

Personal configuration files consolidated into a single repository.

## Components

### Shell

- [bash](./bash) — `.bashrc` and `.bash_aliases`
  - Requires `~/.git-prompt.sh` for the prompt:
    ```bash
    git clone https://github.com/git/git.git
    cp git/contrib/completion/git-prompt.sh ~/.git-prompt.sh
    ```
    Or download from [git-prompt.sh](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh).

### Editors

- [Vim](./vim)
- [Neovim](https://github.com/aki-ph-chem/neovim-config) (separate repository)

### Terminal

- [Wezterm](./wezterm)
- [Tmux](./tmux)

### Window Managers

- [Sway](./sway) — tiling Wayland compositor
  - [Waybar](./sway/waybar) — status bar
  - [Kanshi](./sway/kanshi) — display profile management
- [Niri](./niri) — scrollable-tiling Wayland compositor

### Launcher / Session

- [Rofi](./rofi) — application launcher
- [Wlogout](./wlogout) — logout screen

### Systemd User Services

- [systemd_user](./systemd_user) — user-level systemd units (sway-session.target, kanshi.service)

  ```bash
  ln -s "$PWD/systemd_user/sway-session.target" ~/.config/systemd/user/
  ln -s "$PWD/systemd_user/kanshi.service" ~/.config/systemd/user/
  ```
