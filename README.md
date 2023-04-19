cp .vimrc ~/
cp .tmux.conf ~/
cp tmux-sesh.sh ~/

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
Open Vim
:PluginInstall

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

./tmux-sesh
