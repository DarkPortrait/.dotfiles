# Tanvir's .vim
Lives in the `~/.vim` directory. Contains config file of vim, tmux and git.

## VIM Config
The .vimrc is moved to .vim and symlinked to the original location.
```bash
ln -s ~/.vim/.vimrc ~/.vimrc
```

## GIT Config
The .gitconfig is also in the .vim directory for convenience.
```bash
ln -s ~/.vim/.gitconfig ~/.gitconfig 
```

## TMUX Themes
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
