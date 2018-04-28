ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim
ln -sf ~/dotfiles/colors ~/.vim/colors
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim
