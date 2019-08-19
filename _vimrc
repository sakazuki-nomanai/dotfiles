" setting
"dプラグイン(Vundle)
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" 導入したいプラグインを列挙
" Plugin '[Github Author]/[Github repo]' の形式で記入

" rust関係のプラグイン
" rust-lang/rust.vim
Plugin 'rust-lang/rust.vim'
" racer-rust/vimracer
Plugin 'racer-rust/vim-racer'

call vundle#end()
filetype plugin indent on

"文字コードをutf-8に設定
set fenc=utf-8
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもほかのファイルが開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" マウス操作を有効にする
set mouse=a
" ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect

" 見た目系
" 行番号を表示
set number
" シンタックスハイライト
syntax on
" 現在の行を強調表示
set cursorline
" 現在の列を強調表示
set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動をできるようにする
nnoremap j gj
nnoremap k gk
" タブ文字を表示
set list
" 行末のスペースを可視化
set listchars=tab:^\ ,trail:~

" Tab系
" Tab文字を半角スペースにする
set expandtab
" 行頭以外でのTab文字の表示幅
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" Space系
" 行末のスペースを可視化

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" rustの設定
" 保存したときに自動整形
let g:rustfmt_autosave = 1
" rustfmtの場所を指定
let g:rustfmt_command = '$HOME/.cargo/bin/rustfmt'
" racerの場所
let g:racer_cmd = '$HOME/.cargo/bin/racer'
