# DarkPortrait's .dotfiles
Lives in the `~/.dotfiles` directory. Contains config file of vim, tmux, bashrc and git.

## Dotfiles

### VIM Config
The .vimrc is moved to .vim and symlinked to the original location.
```bash
ln -s ~/.dotfiles/.vimrc ~/.vimrc
```

### GIT Config
The .gitconfig is also in the .vim directory for convenience.
```bash
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig 
```

### TMUX Themes
Clone the theme repository to `~/.tmux-themepack`
```bash
git clone https://github.com/jimeh/tmux-themepack ~/.tmux-themepack
```

Update the `~/.tmux.conf` to link to the theme I want
```bash
source-file ~/.tmux-themepack/powerline/default/green.tmuxtheme
```

Symlink with the config file for tmux 
```bash
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
```
### Copy colors and templates to .vim

```bash
mkdir ~/.vim/colors/
mkdir ~/.vim/templates/
ln -s ~/.dotfiles/colors ~/.vim/colors
cp -r ~/.dotfiles/templates/ ~/.vim/templates/
```

### LSP Setup for Vim

The `.vimrc` is configured to use Python LSP (Language Server Protocol) for features like diagnostics, auto-completion, and code navigation.

1. Create a virtual environment in the dotfiles directory:
```bash
cd ~/.dotfiles
python3 -m venv env
```

2. Install python-lsp-server with all optional dependencies:
```bash
source env/bin/activate
pip install 'python-lsp-server[all]'
```

The LSP server will now be available at `~/.dotfiles/env/bin/pylsp` and Vim will automatically use it when editing Python files.

**Note**: The `.vimrc` is already configured to use this LSP server path, so no additional configuration is needed.

### BASH Config

Bash on Ubuntu.

```bash
ln -s ~/.dotfiles/.bashrc ~/.bashrc
```

## Setting up MacOS

### Install Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
From [Brew.sh](https://brew.sh/)
