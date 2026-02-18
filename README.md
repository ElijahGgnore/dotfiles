# Dotfiles

Dotfiles managed with a bare git repository.

## Bare git repository

Bare git repositories can be used for dotfile management.
[more on arch wiki](https://wiki.archlinux.org/title/Dotfiles)

### Basic usage

Setup new dotfies repo:

```shell
git init --bare ~/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles config status.showUntrackedFiles no
```

Clone the dotfiles to the new system:

```shell
git clone --bare <git-repo-url> $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
```

## Packages

All of the pakages to be used are arch-linux-specific and listed in
pkglist.txt and pkglist-aur.txt for packages in the official and user
repositories respectively

### Installation

Install required packages that are in the official repos:

```shell
pacman -S --needed - < pkglist.txt
```

Install required packages from aur:

```shell
yay -S --needed - < pkglist-aur.txt
```

### Main packages

| purpose               | name        |
| --------------------- | ----------- |
| Editor                | nvim        |
| Browser               | firefox     |
| Mail reader           | thunderbird |
| DE/WM                 | hyprland    |
| Application launcher  | rofi        |
| Task management       | taskwarrior |
| Time management       | timewarrior |
| Shell                 | zsh         |
| Shell prompt          | starship    |
| GUI file manager      | dolphin     |
| TUI file manager      | yazi        |
| Fast terminal         | alacritty   |
| Feature-rich terminal | ghostty     |
| Multiplexer           | tmux        |
| Videoplayer           | haruna      |
| Image viewer          | gwenview    |
| Document viewer       | okular      |

Note: nvim config is in a separate repository.

### Other useful packages

Zoxide - A smarter cd command for your terminal
fzf - Command-line fuzzy finder
taskwarrior-tui - TUI for taskwarrior
lazygit - Simple terminal UI for git commands

### Dolphin cannot find applications (when running under another window manager)

From [a dedicated repository](https://github.com/egnrse/updateKDEcache.hook):

> KDE has their own system configuration cache that dolphin uses to fetch all
> available desktop files. If this cache gets invalidated (eg. by installing
> software that adds a \*.desktop file) dolphin stops using it.

More at:
<https://wiki.archlinux.org/title/Dolphin#Dolphin_cannot_find_applications_(when_running_under_another_window_manager)>

#### Key points

- manually update with: `XDG_MENU_PREFIX=arch- kbuildsycoca6 --noincremental`
- `archlinux-xdg-menu` required
- <https://github.com/egnrse/updateKDEcache.hook> contains the hook to automate
  app discovery after pacman operations

## Notes

### ZSH

List all keymaps `bindkey -l`
List bindings in a given keymap `bindkey -M <keymap>`
