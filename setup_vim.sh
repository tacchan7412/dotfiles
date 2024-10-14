export vimdir=${HOME}/.vim
export colordir=${HOME}/.vim/colors
export deindir=${HOME}/.vim/dein/repos/github.com/Shougo/dein.vim

ln -s $(pwd)/.vimrc ${HOME}/.vimrc

if [ -e $vimdir ]; then
    echo "vimdir already exists."
else 
    mkdir -p $vimdir
fi

if [ -e $colordir ]; then
    echo "colordir already exists."
fi

ln -s $(pwd)/colors $vimdir

if [ -e $deindir ]; then
    echo "deindir already exists"
else
    mkdir -p $deindir
    git clone https://github.com/Shougo/dein.vim.git $deindir
fi
