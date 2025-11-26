# dotfiles

The config files have become so cluttered that they have been consolidated into a single repository.

## code editor

- [Vim](./vim)
- [Neovim](https://github.com/aki-ph-chem/neovim-config)(other repository)

## shell

- [bash](./bash)

必要なツール`~/.git-prompt.sh`(bashのプロンプトを表示させるため)

```bash
$ git clone https://github.com/git/git.git
$ cp git/contrib/completion/git-prompt.sh .git-prompt.sh
```

もしくは`https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh`からダウンロードする。

## terminal emulater

- [wezterm](./wezterm)
- [tmux](./tmux)

## sway(tiling window manager)

- [sway](./sway)
    - [waybar](./sway/waybar)
    - [kanshi](./sway/kanshi)

- run kanshi as systemd service:(WIP)

```bash
$ ln -s <PATH to this repo>/systemd_user/sway-session.target "$HOME/.config/systemd/user"
$ ln -s <PATH to this repo>/systemd_user/kanshi.service "$HOME/.config/systemd/user"
```

### rofi(lanucher)

- [rofi](./rofi)

### wlogout

- install

```bash
yay -S wlogout
```

- config

```bash
ln -s <path to dis repository>/wlogout/ "$HOME/.config/wlogout/"
```

- [wlogout](./wlogout)
