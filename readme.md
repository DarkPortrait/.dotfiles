# Tanvir's .vim
The .vimrc is moved to .vim and symlinked to the original location.
```bash
ln -s ~/.vim/.vimrc ~/.vimrc
```
The .gitconfig is also in the .vim directory now. 
```bash
ln -s ~/.vim/.gitconfig ~/.gitconfig 
```
Need to complete documentation of tmux theme
https://github.com/jimeh/tmux-themepack

Added to ~/.tmux.conf
```
source-file ~/.tmux-themepack/powerline/default/green.tmuxtheme
```
Symlink with the config file for tmux 
```
ln -s ~/.vim/.tmux.conf ~/.tmux.conf
``` 
