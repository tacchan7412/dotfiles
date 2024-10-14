vimdir=~/.vim
colordir=~/.vim/colors
deindir=~/.vim/dein/repos/github.com/Shougo/dein.vim

ln -s ~/dotfiles/.vimrc ~/.vimrc

if [ -e $vimdir ]; then
    echo "vimdir already exists."
else 
    mkdir -p $vimdir
fi

if [ -e $colordir ]; then
    echo "colordir already exists."
else 
    mkdir -p $colordir
fi

ln -s ~/dotfiles/colors/* ~/.vim/colors

if [ -e $deindir ]; then
    echo "deindir already exists"
else
    mkdir -p deindir
    git clone https://github.com/Shougo/dein.vim.git deindir
fi
