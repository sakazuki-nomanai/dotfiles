"setting
"文字コードをUTF-8に設定
set fenc=utf-8
"オートインデント
set autoindent
"tabを半角スペースで挿入する
set expandtab
"tab幅をスペース4つ分にする
set tabstop=4
"vimが自動生成するtab幅をスペース4つ分にする
set shiftwidth=4
"改行時などに、自動でインデントを設定してくれる
set smartindent
"ターミナルのタイトルを設定する
set title
"現在の行を強調表示
set cursorline
set cursorcolumn
"行番号を表示
set number
"ピープ音をを可視化
set visualbell
"不可視文字の可視化
set list
set listchars=tab:^\ ,trail:~,precedes:≪,extends:≫,eol:↲
"入力中のコマンドをステータスに表示
set showcmd
"シンタックスハイライト
syntax on
"検索する時に大文字小文字を区別しない
set ignorecase
"小文字で検索すると大文字と小文字を無視して検索
set smartcase
"検索がファイル末尾に進んだら、ファイル先頭から再び検索
set wrapscan
"インクリメンタル検索
set incsearch
"検索結果をハイライト表示
set hlsearch
set history=1000
" yでコピーした時にクリップボードに入る
set guioptions+=a
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
