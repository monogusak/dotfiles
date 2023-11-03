" Vim syntax file
" Language: Js
" Maintainer: monogusak
" Filenames: *.js

runtime! syntax/javascript.vim

" タグ付きテンプレートリテラル内のハイライト対応
" だったが，最近使ってなかったので動くか不明
unlet! b:current_syntax
silent! syntax include @jsPug     syntax/pug.vim
unlet! b:current_syntax
silent! syntax include @jsStylus  syntax/stylus.vim
unlet! b:current_syntax
silent! syntax include @jsCss     syntax/css.vim

let b:current_syntax = "javascript"

syn region tagPugCode     matchgroup=javaScriptStringT start=+pug`+     skip=+\\\\\|\\`+  end=+`+ contains=@jsPug
syn region tagStylusCode  matchgroup=javaScriptStringT start=+stylus`+  skip=+\\\\\|\\`+  end=+`+ contains=@jsStylus
syn region tagCssCode     matchgroup=javaScriptStringT start=+css`+     skip=+\\\\\|\\`+  end=+`+ contains=@jsCss

