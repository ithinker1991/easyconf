set t_Co=256
set ruler
set cursorline 
" set cursorcolumn 
hi CursorLine  ctermbg=240 cterm=NONE
"非兼容模式
set nocp
"底部标尺 set ru
"搜索时高亮显示结果
set hls
"输入搜索命令时，显示目前输入的模式的匹配位置
set is
set ignorecase
"显示行号
set number
"使用:e命令的时候 可选项预览
set wildmenu


"fileencoding setting
"文件默认编码
set enc=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=gb18030
set encoding=utf-8 
set fileencoding=utf-8
"文件默认格式unix
"set ff=unix


"tab setting
"缩进为4个空格宽度
set tabstop=2
"自动缩进使用的空格数
set shiftwidth=2
"编辑插入tab时, 把tab算作的空格数
set softtabstop=2
"缩进使用空格
set expandtab


"自动缩进
set autoindent
"鼠标捕捉
"set mouse=a
"打开语法高亮
syntax enable
set background=dark
"colorscheme desert
"colorscheme solarized

set comments=sl:/*,mb:*,ex:*/
set showtabline=2
set laststatus=2

set nobackup
set noswapfile

set backupdir=~/.vim/backup
"set swap file dir
set directory=~/.vim/swap

nnoremap <space> za

filetype on
:autocmd BufRead,BufNewFile *.php set expandtab tabstop=2 shiftwidth=2 autoindent smartindent keywordprg="help"
:autocmd BufRead,BufNewFile *.py set expandtab tabstop=2 shiftwidth=2 autoindent smartindent
:autocmd BufRead,BufNewFile *.cpp set expandtab tabstop=2 shiftwidth=2 autoindent smartindent
:autocmd BufRead,BufNewFile *.h set expandtab tabstop=2 shiftwidth=2 autoindent smartindent
:autocmd BufRead,BufNewFile *.c set expandtab tabstop=2 shiftwidth=2 autoindent smartindent
:autocmd BufRead,BufNewFile *.xml set expandtab tabstop=2 shiftwidth=2 autoindent smartindent foldmethod=indent
" set foldmethod=indent
" 启动时关闭折叠
set foldmethod=syntax
set nofoldenable

" nmap <silent> <F7> :!python %<CR>
" nmap <silent> <F8> :!make<CR>
" nmap <silent> <F9> :!./a.out<CR>
" nmap <silent> <F10> :source %<cr>
" nmap ,w /let g<CR>

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Display_Prototype = 1

" nnoremap <leader>m :!make<cr>
" nnoremap <leader>b :!./a.out<cr>
" nnoremap <leader>c :!g++ %<cr>
" nnoremap <leader>tg :!ctags -R ./*<cr>
" " nnoremap <leader>n :!make clean<cr>


"set paste
set pastetoggle=<F3>

"set vimtabe
nmap <C-N> :tabnext<CR>
nmap <C-P> :tabprevious<CR>

"clear highlight 
:nmap <leader>q :nohlsearch<CR>

"make backspace everywhere
set backspace=indent,eol,start

"filename completion on command line 
set wildmode=longest,list

"set splitwindow in the right, and below
set splitbelow
set splitright

set textwidth=80

"set force save
" map <leader>f :w !sudo tee %<CR>


"""""""""""""""""""""""""""""""""""
"vundle plugin
"""""""""""""""""""""""""""""""""""
set	nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"My Bundle here:

Plugin 'The-NERD-tree'
"NERDTree shortkey
" map <F2> :NERDTreeToggle<CR>
map ;n :NERDTreeToggle<CR>

Plugin 'git@github.com:Valloric/YouCompleteMe.git'
Plugin 'a.vim'
"a.vim shortkey
map ,a :A<CR>


Plugin 'majutsushi/tagbar'
" nmap <leader>f :TagbarToggle<CR>
nmap ;t :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_width = 30

Plugin 'Spaceghost/vim-matchit'
Plugin 'neocomplcache'
Plugin 'DoxygenToolkit.vim'
Plugin 'TagHighlight'
Plugin 'SuperTab'
Plugin 'kien/ctrlp.vim'
let g:ctrlp_map = '<c-j>'

Plugin 'rking/ag.vim'
if executable("ag")
    set grepprg=ag\ --nogroup\ --nocolor
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    let g:ackprg = "ag --nogroup --column"
    let g:ag_highlight=1
    nnoremap <leader>k :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
    nnoremap <leader>g :Ag!<SPACE>
endif

"Color Scheme
Plugin 'altercation/vim-colors-solarized'

"vim for erlang
Plugin 'jimenezrick/vimerl'
"vim erlang tags
Plugin 'vim-erlang/vim-erlang-tags'
set runtimepath^=~/.vim/bundle/vim-erlang-tags/bin/vim-erlang-tags

Plugin 'scrooloose/nerdcommenter'
let NERDSpaceDelims=1
let NERDRemoveExtraSpaces=1


Plugin 'bling/vim-airline'
""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline_theme             = 'solarized'
" let g:airline_theme             = 'luna'
let g:airline#extensions#branch#enabled     = 1
let g:airline#extensions#syntastic#enabled  = 1
" vim-powerline symbols
"let g:airline_left_sep          = '⮀'
"let g:airline_left_alt_sep      = '⮁'
"let g:airline_right_sep         = '⮂'
"let g:airline_right_alt_sep     = '⮃'
"let g:airline_symbols.branch     = '⭠'
"let g:airline_symbols.readonly   = '⭤'

"let g:airline_symbols.linenr = '⭡'
"

Plugin 'taglist.vim'

call vundle#end()
filetype plugin indent on

"----------------------------------
"taglist setup
"---------------------------------------
"let Tlist_Auto_Open=1 "auto open
let Tlist_File_Fold_Auto_Close=1 "其他tag所在文件 自动折叠
let Tlist_Exit_OnlyWindow=1 "tlist 唯一窗口时退出
let Tlist_Use_Right_Window = 1

let NERDTreeIgnore=['\.lo$', '\.o$', '\~$']

cnoremap sudow w !sudo tee % >/dev/null

let mapleader=","
let g:mapleader=","

set tags=~/.vim/ctags/tags


