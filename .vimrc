" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

" html格式化
filetype plugin indent on

" 显示中文帮助
if version >= 603
	set helplang=cn
 	set encoding=utf-8
endif

"禁止生成临时文件
set nobackup
set noswapfile

"搜索忽略大小写
set ignorecase

" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
" 字符间插入的像素行数目

" NERDTree 配置
" nmap <F2> :NERDTree  <CR>
map <C-n> :NERDTreeToggle <CR>

"请勿解开这个注释
"autocmd VimEnter * NERDTree
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2

" phpDocumentor 配置
source ~/.vim/plugin/php-doc.vim
inoremap <C-i> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-i> :call PhpDocSingle()<CR>
vnoremap <C-i> :call PhpDocRange()<CR> 

" snipMate 配置
filetype plugin on
au BufRead,BufNewFile *.php set filetype=php.html


" ctags 配置
set tags=tags;
"set autochdir

" taglist 配置
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
let Tlist_File_Fold_Auto_Close=1       " 自动折叠

" ======= 引号 && 括号自动匹配 ======= "
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i

function ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
       return "\<Right>"
  else
       return a:char
   endif
endf

