" encoding
set fileencodings=utf-8,shift_jis,euc-jp,default

" タブ
set showtabline=2 " always show tabline

" ウィンドウ
set splitright

" ステータスライン
set showmode
set statusline=%f\ %h%w%m%r\ %=%(%02B\ %y\ %l,%c%V\ %=\ %P%)

" インデント
" ・括弧で自動インデント・コメントのインデントを抑制
set smartindent
" インデントは空白
set expandtab
" 画面上でタブ文字が占める幅
set tabstop=2
" 自動インデントやコマンド "<<", ">>" でずれる幅。
set shiftwidth=2

" 行番号
set number
" 括弧
set showmatch
set matchpairs+="<:>"
set matchtime=1
" 制御文字
set list
set listchars=eol:$,tab:>\ ,extends:< 
" 折り返し
set wrap
set wrapmargin=0
set textwidth =0

" 検索
" 循環検索
set wrapscan
" インクリメンタルサーチ
set incsearch
" 検索ワードをハイライト
set hlsearch
" 大文字小文字無視
set ignorecase
" 大文字を含むときは大文字小文字無視しない
set smartcase

" コマンド補完
set wildmenu

" 置き換えプレビュー
set inccommand=split

" クリップボード
set clipboard=unnamedplus

" タグ
set tags=./tags;

" 補助ファイル
let $CACHE  = empty($XDG_CACHE_HOME)  ? expand('$HOME/.cache') : $XDG_CACHE_HOME
set backupdir=$CACHE/vimswap/,.
let &directory=&backupdir
let &undodir=&backupdir
set backup
set undofile

set mouse=

