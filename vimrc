filetype plugin on           "共享剪贴板 
set ruler                    "编辑过程中,右下角显示光标位置的状态行
winpos 550 100               "设定窗口位置  
set lines=40 columns=90      "设定窗口大小
set nu                       "显示行号 
set ignorecase               "搜索忽略大小写 
set clipboard=unnamed        "把内容复制到系统剪贴板
set virtualedit=all
set hlsearch
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set mousemodel=popup
set showtabline=2
syntax enable                  "打开语法高亮
syntax on                      "打开语法高亮
"set guifont=Courier\ 10\ pitch\ 15  "设置字体
set guifont=Monospace\ 13
set  backspace=indent,eol,start
colorscheme evening            " 设置配色方案
filetype plugin indent on     
set nobackup
set nowritebackup
" 当前行高亮
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

an 110.319 &File.VSp&lit-Open\.\.\.<Tab>:vsp :browse vsp<CR>
an 100.140 &Short.&No\ Hilight<Tab>：noh :noh<CR>
an 100.240 &Short.&Copy\ All<Tab>ggyG :call <SID>CopyALl()<CR>
an 100.360 &Short.&Copy\ File\ Name :call <SID>CopyFileName()<CR>
an 100.360 &Short.&Copy\ File\ Path :call <SID>CopyPath()<CR>
an 100.440 &Short.-sep- : "separate line 
an 100.445 &Short.&Hilight\ Reduplicate :sort<CR>:exe '/^\(.\+\)$\n\1$'<CR>
an 100.446 &Short.&Delete\ Reduplicate :sort u<CR>
an 100.450 &Short.&Delete\ Blank :call <SID>DeleteBlank()
an 100.500 &Short.&Makeview<Tab>:mkview :mkview<CR>
"an 100.510 &Short.&loadview<Tab>:Loadview loadview<CR>
an 100.540 &Short.&File\ Type<Tab> : set filetype<CR>
"an 100.640 &Short.&File\Path<Tab><Esc>1<C-G><CR>
"noremenu  <script> <silent>100.340 &Short.&Select\All<Tab>ggVG :<C-U>call <SID>SelectAll()<CR>
"inoremenu <script> <silent>100.340 &Short.&Select\All<Tab>ggVG :<C-0>:call <SID>SelectAll()<CR>  
"cnoremenu <script> <silent>100.340 &Short.&Select\All<Tab>ggVG :<C-U>call <SID>SelectAll（）<CR>
"an 120.100 &Annotate.Semicolon\ ; :call <SID>Annotate（";"）<CR>
"an 120.105 &Annotate.Quotation\ " :call <SID>Annotate("\"")<CR>
"an 120.110 &Annotate.Pound\ # :call <SID>Annotate（"#"）<CR>
"an 120.115 &Annotate.Asteridk\ * :call <SID>Annotate（"*"）<CR>
"an 120.120 &Annotate.Vir\ /**/ :call<SID>Annotate2（）<CR>
"an 72.300 &BookMark.-sep-：
"slm:selectmode func！<SID>CopyALl（）

"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview
"source /home/work/Documents/vimscripts/CompileRunGcc.vim
autocmd BufWritePost $MYVIMRC source $MYVIMRC  
