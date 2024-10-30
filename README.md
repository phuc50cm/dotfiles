# Dotfiles Repository

This repository contains my dotfiles, which are configuration files for various applications and tools. To manage these dotfiles, we use GNU Stow, a symlink farm manager that helps in organizing and deploying dotfiles effectively.

## Requirements

- GNU Stow installed on your system. You can install it via your package manager. For example:
  - On macOS: `brew install stow`
  - On Ubuntu: `sudo apt install stow`
  - On Arch: `sudo pacman -S stow`

## Usage

### Cloning the Repository

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### Stow dotfiles
Replace package with your dotfile you want to create symlink

```bash
stow [package]
```

### Unstowing

```bash
stow -D [package]
```
