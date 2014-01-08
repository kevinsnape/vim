set nocompatible               " be iMproved
filetype on                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'bling/vim-airline'
Bundle 'tomasr/molokai'
Bundle 'nvie/vim-flake8'
Bundle 'mattn/zencoding-vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
"Bundle 'vim-scripts/Pydiction'
Bundle 'mileszs/ack.vim'
Bundle 'keitheis/vim-plim'
" vim-scripts repos
" non github repos
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"颜色主题配置等
:set t_Co=256
:colorscheme molokai
:set nu
:set hlsearch
"缩进定义  
set shiftwidth=4  
set tabstop=4 
set softtabstop=4  
set expandtab  
set smarttab  
set backspace=2     "退格键可以删除任何东西  
"显示TAB字符为
set list  
set list listchars=tab:>-,trail:+

autocmd FileType python setlocal et | setlocal sta | setlocal sw=4 | setl tw=76
autocmd FileType html setlocal et | setlocal sta | setlocal sw=2 |setlocal ts=2

syntax on
:map <F5>:!python %

"插件配置
"自动补全插件pydiction
"let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
"au FileType python set omnifunc=pythoncomplete#Complete
"let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

"自动添加编码注释
function PyEncoding()
call append(0,"# -*- coding:utf-8 -*-")
call append(1,"")
endfunction
map <F8> :call PyEncoding()<cr>

"
set pastetoggle=<F11>

"flake8
map <buffer> <F1> :call Flake8()<CR>

"nerd-tree
map <F4> :NERDTreeToggle<CR>

"zen-coding
let g:user_zen_expandabbr_key = '<F9>'    "设置为commend+e展开
let g:use_zen_complete_tag = 1

"ack.vim
let g:ackprg="ack-grep -H --color-match=COLOR --nogroup --column"

"vim-airline
"let g:airline_section_b='%{strftime("%c")}'
"let g:airline_section_y='BN: %{bufnr("%")}'
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
