" key

noremap gr :e $HOME/.config/nvim/rc<CR>
noremap gj :set nu<CR>    :set list<CR>
noremap gJ :set nonu<CR>  :set nolist<CR>
"map <C-m>  :Migemo<CR>

" key.normal
nnoremap zh zH
nnoremap zl zL
nnoremap <C-p>  :tabprev<Return>
nnoremap <C-n>  :tabnext<Return>
nnoremap <C-b>  :tabnew <CR>

" qfとかでは無効にしたいのでbufferを対象にする
au BufNewFile,BufReadPre,FileReadPre * nnoremap <buffer> <CR> :winc w<CR>
au FileType help    unmap <buffer> <CR>
"au FileType ddu-ff  unmap <buffer> <CR>

nnoremap <S-Tab>  :tabnext<Return>
" nnoremap <C-Q>    :q<CR>
nnoremap <C-Q>    :mks!<cr>:wqa<cr>
 
" 編集中のファイルのあるディレクトリに移動
nnoremap gd :cd %:h

" 編集中のファイルを開く(動かなくなったのと使用頻度が低いので削除)
" nnoremap :open :!xdg-open %<CR>
" nnoremap gO    :!xdg-open %<CR>
" nnoremap <A-O> :!xdg-open %<CR>

" fzf.vimを使わなくなったので削除
" nnoremap gs    :Ag<CR>
" nnoremap gt    :Ag %:r<CR>

" key.visual
" クリップボード対応はOSC52があれば不要
" vnoremap C !xsel -i -b<CR>u

" key.cmd
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-a> <Home>
cnoremap <C-d> <Del>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" SKK日本語でもちょっとだけ作業可能
nnoremap あ a
nnoremap い i
nnoremap う u
nnoremap え e
nnoremap お o

" 同ファイル名で別の拡張子のファイルを開く
" nnoremap <F2> :exec '! _vim_next-file %:r %:e > .vim.shell.source' <CR> :source .vim.shell.source<CR> :silent :! rm .vim.shell.source<CR>
" " cat _vim_next-file
" " ls $1.* | awk '
" "   !ok&&!fl{fl=$0}
" "   ok&&fl{print ":e " $0;fl=0;exit}
" "   /.'$2'$/{ok=1}
" "   END{if(fl)print ":e " fl}
" " '

" 同ファイル名で別の拡張子のファイルを開く
" nnoremap <F3> :exec '! _vim_vsp-all % %:r > .vim.shell.source' <CR> :source .vim.shell.source<CR> :silent :! rm .vim.shell.source<CR>
" " ls $2* | awk '
" "   !/'$1'/{print ":vsp " $0}
" " '

" motion ( はの動作がよく分からんので変える
" nnoremap <buffer> d)  dab
" nnoremap <buffer> s)  vabs

"
" q macro   / ex mode / visual block
" w word    / Word    / window prefix
" e end     / End     / view down 1
" r replace / Replace / redo
" t charsearch  / rev / tag stack prev
" y yank    / Yank        / view up 1
" u undo    / Undo        / view up
" i insert  / Insert      / jump list next
" o add line / insert line / jump list prev
" p paste   / Paste     / <tab prev>
" a append  / Append    / count up
" s replace insert / line / <tmux prefix>
" d delete / delete after / view down
" f charsearch / rev / view down
" g prefix / eol / !empty!
" h left / ? / !empty
" j down / join / <skk>
" k up / help / digraph
" l right / ? / refresh
" z prefix / prefix / stop
" x delete / back delete / count down
" c replace / replace / cancel
" v visual  / visual line / visual
" b back / back / view up <:tabnew>
" n next / prev / <tab next>
" m mark / ? / <switch window>

