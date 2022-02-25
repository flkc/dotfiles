#/bin/bash

echo 'Set-up system packages'

sudo pacman -S fzf ripgrep neovim egrep awk # TODO: use different package managers i.e. ubuntu-arch

echo 'Set-up VimPlug for neovim'

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo 'Initialize symlinks'

# TODO: refactor to accept all but .git directory
find ./ -maxdepth 1 -printf "%f\n" | egrep -v './|.git|setup.sh' |  awk '{print "\"cp -rs $PWD/"$1" $HOME/"$1"\""}' | xargs -i sh -c "{}"
