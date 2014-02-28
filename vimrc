"-------------------------------------------------------------------
"
" -- VIM 配置文件 .vimrc
"
" -- Author : Shim_ZoMoe
"-------------------------------------------------------------------

syntax on  	         	 " 使用语法高亮
filetype plugin indent on 	 " 打开文件类型检测
set nocp 			 " 使用不兼容 vi 的模式（vi模式一些操作很不方便）
set autoindent       		 " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
set smartindent        		 " 智能对齐方式
"set softtabstop=4     	 	 " 设置软制表符的宽度    
"set shiftwidth=4       	 " (自动) 缩进使用的4个空格
set cindent              	 " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s     " 设置C/C++语言的具体缩进方式
set backspace=2          	 " 设置退格键可用
set mouse=a              	 " 使用鼠标
set number              	 " 显示行号
set cul				 " 显示当前行下划线
colorscheme ron			 " 设置配色方案

" MiniBufferExplorer 的设置
let g:miniBufExplMapWindowNavVim=1 		" 按下Ctrl+h/j/k/l，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapWindowNavArrows=1 		" 按下Ctrl+箭头，可以切换到当前窗口的上下左右窗口
let g:miniBufExplMapCTabSwitchBufs=1 		" Ctrl+tab移到下一个窗口；Ctrl+Shift+tab移到上一个窗口
let g:miniBufExplModSelTarget=1    		" 不要在不可编辑内容的窗口（如TagList窗口）中打开选中的buffer

" 设置分屏浏览
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>

" 修改Zen Coding 默认的快捷键映射
imap <C-e> <C-y>,

" ClosePair 函数的实现
function ClosePair(char)
if getline('.')[col('.') - 1] == a:char
	return "\<Right>"
else
	return a:char
endif
endf

" 设置键映射
" inoremap ( ()<ESC>i
" inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i

" 设置超级TAB的补全
let g:SuperTabRetainCompletionType=0
let g:SuperTabDefaultCompletionType="<C-X><C-U>"

" 自动补全列表的颜色设置
highlight Pmenu ctermfg=black 
highlight PmenuSel ctermfg=white ctermbg=black

" clang_complete 自动补全插件设置
set completeopt=longest,menu
let g:clang_complete_copen=0
let g:clang_auto_select=1
let g:clang_complete_auto=1
let g:clang_complete_macros=1
"let g:clang_use_library=1
let g:clang_user_options="-I/usr/include -I/usr/include/c++/4.7 || exit 0"

" Java 自动补全设置
autocmd Filetype java set omnifunc=javacomplete#Complete
autocmd Filetype java set completefunc=javacomplete#CompleteParamsInfo

inoremap <buffer> <C-X><C-U> <C-X><C-U><C-P> 
inoremap <buffer> <C-S-Space> <C-X><C-U><C-P>
autocmd Filetype java,javascript,jsp inoremap <buffer>  .  .<C-X><C-O><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  A  A<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  B  B<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  C  C<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  D  D<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  E  E<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  F  F<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  G  G<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  H  H<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  I  I<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  J  J<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  K  K<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  L  L<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  M  M<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  N  N<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  O  O<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  P  P<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Q  Q<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  R  R<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  S  S<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  T  T<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  U  U<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  V  V<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  W  W<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  X  X<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Y  Y<C-N><C-P>
autocmd Filetype java,javascript,css,html,xml inoremap <buffer>  Z  Z<C-N><C-P>

" ctags 相关设置

" 按下F5，在当前目录递归生成tag文件
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>

" vim 启动时自动载入以下tags文件
set tags=tags
set tags+=./tags
set tags+=/usr/include/tags
set tags+=/usr/include/c++/4.7.2/tags

" 系统剪贴板映射 
set clipboard=unnamedplus
map <C-c> "+y
map <C-v> "+p

" QuickFix 插件的设置

" 按下F6，执行make编译程序，并打开quickfix窗口，显示编译信息
map <F6> :make<CR><CR><CR> :copen<CR><CR>
" 按下F7，光标移到上一个错误所在的行
map <F7> :cp<CR>
" 按下F8，光标移到下一个错误所在的行
map <F8> :cn<CR>
" 按下F9，执行make clean
map <F9> :make clean<CR><CR><CR>

imap <F6> <ESC>:make clean<CR><CR><CR>
imap <F7> <ESC>:make<CR><CR><CR> :copen<CR><CR>
imap <F8> <ESC>:cp<CR>
imap <F9> <ESC>:cn<CR>

" 按下F12，在当前代码的 .c / .h 之间切换
nnoremap <silent> <F10> :A<CR>

" powerline 配置
set nocompatible   	" Disable vi-compatibility
set laststatus=2   	" Always show the statusline
set encoding=utf-8 	" Necessary to show Unicode glyphs
set t_Co=256 		" Explicitly tell Vim that the terminal supports 256 colors
set guifont=PowerlineSymbols\ for\ Powerline 
let g:Powerline_symbols = 'unicode'

