let mapleader=","
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
set nu
set ts=4
syntax enable
set background=dark
colorscheme desert 
set encoding=utf-8
set fileencodings=utf-8
set fileencodings=ucs-bom,utf-8,cp936,latin1
 "解决consle输出乱码 
language messages zh_CN.utf-8
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdcommenter'
 ""文件搜索
Plug 'Yggdroot/LeaderF'
call plug#end()
let g:airline_theme="badwolf"
 "let g:airline_solarized_bg='dark'
 "
 ""这个是安装字体后 必须设置此项" 
let g:airline_powerline_fonts = 1   

"打开tabline功能,方便查看Buffer和切换，这个功能比较不错"
" "我还省去了minibufexpl插件，因为我习惯在1个Tab下用多个buffer"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
"
"    "设置切换Buffer快捷键"
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
"      "设置输入一个单词后，直接在插入模式下，按下C-u就直接把单词改成大写
inoremap <C-u> <ESC>gUiwea
"      """"""""""""""""""""""""""""""
"Leaderf settings
"""""""""""""""""""""""""""""""
"文件搜索
nnoremap <silent> <Leader>f :Leaderf file<CR>
""历史打开过的文件
nnoremap <silent> <Leader>m :Leaderf mru<CR>
"Buffer
nnoremap <silent> <Leader>b :Leaderf buffer<CR>
""函数搜索（仅当前文件里）
nnoremap <silent> <Leader>F :Leaderf function<CR>
"模糊搜索，很强大的功能，迅速秒搜
nnoremap <silent> <Leader>rg :Leaderf rg<CR>
