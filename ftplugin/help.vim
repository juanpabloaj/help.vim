" File: help.vim
" Maintainer: JuanPablo <jpabloaj at gmail dot com>
" Description: help navigation
" Last Modified: octubre 07, 2011
nnoremap <buffer> <CR> <C-]>
nnoremap <buffer> <BS> <C-T>
nnoremap <buffer> o /'\l\{2,\}'<CR>
nnoremap <buffer> O ?'\l\{2,\}'<CR>
nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>
nnoremap <buffer><silent> c :call GoContent()<cr>
" GoContent : to content list {{{
fun! GoContent()
	try
		exe ':h '.expand('%:t:r').'-contents'
	catch /:E149:/
		normal! gg
		exe '/\v\*[A-z]+'
	endtry
endf
" }}}
