# dotfiles

Configuration files and scripts for Linux development.

## Overview

Here is the overview of the programs used within the repository:

| Program | Config | Description |
| --- | --- | --- |
| [Sway](https://swaywm.org) | [`config/sway`](./config/sway) | Window manager |
| [Zsh](https://zsh.org) | [`config/zsh`](./config/zsh) | Shell |
| [foot](https://codeberg.org/dnkl/foot) | [`config/foot`](./config/foot) | Terminal |
| [Fuzzel](https://codeberg.org/dnkl/fuzzel) | [`config/fuzzel`](./config/fuzzel) | App launcher |
| [Dunst](https://dunst-project.org) | [`config/dunst`](./config/dunst) | Notification daemon |
| [Neovim](https://neovim.io) | [`config/nvim`](./config/nvim) | Text editor |
| [mpv](https://mpv.io) | [`config/mpv`](./config/mpv) | Media player |
| [KeePassXC](https://keepassxc.org) | [`config/keepassxc`](./config/keepassxc) | Password manager |

## Installation

> [!CAUTION]
> The installation script may overwrite your system and is only supported on Void Linux.
> Run it at your own risk.

To install the dotfiles, run:

```sh
sudo xbps-install -y curl
curl --proto '=https' --tlsv1.2 -sSf https://codeberg.org/frofor/dotfiles/raw/branch/main/install.sh | sh
```

## License

This repository is distributed under the terms of MIT License.

See [LICENSE](./LICENSE) for details.
