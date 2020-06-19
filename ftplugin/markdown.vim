" Kanvim - Simple Kanban for Vim
" Copyright (C) 2020  Vitor Guia

" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.

" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.

" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <https://www.gnu.org/licenses/>.

function! s:KanvimCreate()
    call append(0, '# Title')
    call append(1, '')
    call append(2, 'Description')
    call append(3, '')
    call append(4, '## To Do')
    call append(5, '')
    call append(6, '- Task')
    call append(7, '')
    call append(8, '## Doing')
    call append(9, '')
    call append(10, '')
    call append(11, '## Done')
    call append(12, '')
endfunction

command! -nargs=0 KanvimCreate call s:KanvimCreate()

" Move to
function! s:KanvimMoveToNext()
    execute 'normal dd'
    silent execute '/##'
    execute 'normal jp'
endfunction

command! -nargs=0 KanvimMoveToNext call s:KanvimMoveToNext()

function! s:KanvimMoveToPrevious()
    execute 'normal dd'
    silent execute '?##'
    silent execute '?##'
    execute 'normal jp'
endfunction

command! -nargs=0 KanvimMoveToPrevious call s:KanvimMoveToPrevious()

" Go to
function! s:KanvimGoToNext()
    silent execute '/##'
endfunction

command! -nargs=0 KanvimGoToNext call s:KanvimGoToNext()

function! s:KanvimGoToPrevious()
    silent execute '?##'
endfunction

command! -nargs=0 KanvimGoToPrevious call s:KanvimGoToPrevious()
