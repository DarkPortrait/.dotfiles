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
cp -r ~/.dotfiles/colors/ ~/.vim/colors/
cp -r ~/.dotfiles/templates/ ~/.vim/templates/
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
brew install --cask zoomus
brew install --cask slack
brew install python@3.9
brew install node
pip3 install --upgrade pip
sudo pip3 install jupyterlab==3
jupyter lab build
```
### zsh profile

```bash
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```

### Setting up analytics environment for Python on M1

Note: Rosetta was installed. But this installation uses ARM.

1. Uninstalled Python 3.9 and installed Python 3.8
1. Created a virtual environment 

```bash
cd Documents/python/00-environments/
python3 -m venv m1datascience
```
1. Installed numpy and pandas

```bash
pip3 install numpy
pip3 install cython
OPENBLAS="$(brew --prefix openblas)" MACOSX_DEPLOYMENT_TARGET=11.1 pip3 install pandas --no-use-pep517
```
1. Installed other packages as usual

```bash
pip3 install --upgrade pip
pip3 install matplotlib seaborn jupyterlab pandas_gbq
```
