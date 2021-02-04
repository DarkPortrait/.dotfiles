# Tanvir's .dotfiles
Lives in the `~/.dotfiles` directory. Contains config file of vim, tmux, bashrc and git.

## Dotfiles

### VIM Config
The .vimrc is moved to .vim and symlinked to the original location.
```bash
ln -s ~/.vim/.vimrc ~/.vimrc
```

### GIT Config
The .gitconfig is also in the .vim directory for convenience.
```bash
ln -s ~/.vim/.gitconfig ~/.gitconfig 
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

### BASH Config

Bash on Ubuntu.

```bash
ln -s ~/.dotfiles/.bashrc ~/.bashrc
```

## Setting up MacOS

### 1. Install Brew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

From [Brew.sh](https://brew.sh/)

### Add packages

```
brew install spotify
brew install zoomus
brew install slack
brew install python@3.9
pip3 install --upgrade pip
pip3 install jupyterlab==3
```


