" setting
scriptencoding utf-8
set encoding=utf-8

if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('scrooloose/nerdtree')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('tyru/caw.vim')
call dein#add('fatih/vim-go')
call dein#add('tell-k/vim-autopep8')
call dein#add('scrooloose/syntastic')
call dein#add('ConradIrwin/vim-bracketed-paste')

call dein#end()

if dein#check_install()
  call dein#install()
endif

"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" deleteのバグ修正
set backspace=indent,eol,start
" filetype plugin を有効にする
filetype plugin on


" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 色をつける
syntax on
" カラースキームの設定
colorscheme molokai
set t_Co=256
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" NERDTreeを常に表示
autocmd vimenter * NERDTree
" NERDTreeのキーバインド
map <C-n> :NERDTreeToggle<CR>


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


" バインド系
" ESCをjjでバインド
inoremap <silent> jj <ESC>
" Insertモードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" neo-complete
let g:neocomplete#enable_at_startup = 1

" evervim
let g:evervim_devtoken = 'S=s697:U=7bd3a05:E=168cf71496f:C=16177c01af0:P=1cd:A=en-devtoken:V=2:H=79b09bd4972472cbce0809fd3a25a5d5'

" syntastic
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

" rust
let g:rustfmt_autosave = 1
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'

set hidden
let g:racer_cmd = '$HOME/.cargo/bin/racer'
let $RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src/"
