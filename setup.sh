#/bin/bash

echo $'Set-up system packages\n'

sudo pacman -S fzf ripgrep neovim awk # TODO: use different package managers i.e. ubuntu-arch

echo $'Set-up VimPlug for neovim\n'

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo $'Initialize symlinks of all files but .git, and setup.sh should to HOMEDIR\n'

# TODO: find a way to create missing directories recursevly

find . -type f | cut -c 3- | egrep -v '.git|setup.sh' | awk '{print "\"cp -rs $PWD/"$1" $HOME/"$1"\""}' | xargs -i sh -c "{}"
