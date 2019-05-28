let g:mapleader =  "\<Space>" 

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'icymind/NeoSolarized'
Plug 'vim-airline/vim-airline'
Plug 'luochen1990/rainbow'

" Basics
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'liuchengxu/vim-which-key'

" Application
Plug 'mbbill/undotree'
call plug#end()

" Appearance
set number
set termguicolors
set background=light
colorscheme NeoSolarized
let g:rainbow_active = 1
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'lime', 'firebrick'],
\}

" Behavior
set clipboard+=unnamedplus
set mouse=a
"" WhichKey
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
set timeoutlen=200
let g:which_key_map =  {}

" Keyboard shortcuts (Whichkey)
"" Files
let g:which_key_map.f = { 'name' : '+file' }
nmap <leader>ff :Files<CR>

"" Application
let g:which_key_map.a = { 'name' : '+application' }
nmap <leader>au :UndotreeToggle<CR>

let g:which_key_map.k = { 'name' : '+konsole' }
nmap <leader>kk :let $tmp =  expand('%:p:h') <bar> :! konsole --workdir $tmp &<CR><CR>
"":echo expand('%:p:h') gives current path from head
"" konsole opens a new konsole with  the path from head

"" Spellchecker
"let g:which_key_map.S = { 'name' : '+Spellchecker' }
"nmap <leader>Sc z=
let g:which_key_map['S'] = {
      \ 'name' : '+spellchecker' ,
      \ 'c' : ['z='     , 'correct']       ,
      \ 'n' : [']s'     , 'next']          ,
      \ 'b' : ['[s'     , 'back']          ,
      \ 's' : [':setlocal spell spelllang=en_us,de_de'     , 'enable']          ,
      \ 'd' : [':setlocal spell spelllang=nospell'     , 'disable']          ,
      \ }

"" Navigation
"nmap <leader>w <C-w>
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : ['resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : ['resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

" Useful default shortcuts
" Ctrl-x Ctrl-f complete path to file
"
" Ctrl-w h go one window too the left
"
" Ctrl-k to insert Greek letters like μ=m* π=p* ≠=!= (http://www.alecjacobson.com/weblog/?p=443)
"
"
