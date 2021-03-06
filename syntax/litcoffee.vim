" Language:   Literate CoffeeScript
" Maintainer: Michael Smith <michael@diglumi.com>
" URL:        https://github.com/mintplant/vim-literate-coffeescript
" License:    MIT

if exists('b:current_syntax') && b:current_syntax == 'litcoffee'
  finish
endif

runtime! syntax/markdown.vim
unlet b:current_syntax

syn clear markdownCode

syn include @coffee syntax/coffee.vim

syn region inlineCoffee start='^    \|\t' end='$' contains=@coffee

let b:current_syntax = "litcoffee"

silent! runtime ftplugin/coffee.vim

" We should honor textwidth since most text is written in Markdown.
" vim-coffee-script disables that so lets re-enable it.
setlocal formatoptions+=t
