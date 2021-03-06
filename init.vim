"~/.vimrc
"vim config file
"date 2021-1-1
"""""""""""""""""""""""""""""""""""
"""=>全局配置<="""
"""""""""""""""""""""""""""""""""""
let mapleader="\<space>"

"关闭vi兼容模式"
set nocompatible
"设置历史记录步数"
set history=1000

"开启相关插件"
"侦测文件类型"
filetype on
"载入文件类型插件"
filetype plugin on
"为特定文件类型载入相关缩进文件"
filetype indent on

"当文件在外部被修改时，自动更新该文件"
set autoread

"激活鼠标的使用"
set mouse=a
set selection=exclusive
set selectmode=mouse,key

"保存全局变量"
set viminfo+=!

"带有如下符号的单词不要被换行分割"
set iskeyword+=_,$,@,%,#,-

"通过使用: commands命令，告诉我们文件的哪一行被改变过"
set report=0

"被分割的窗口间显示空白，便于阅读"
set fillchars=vert:\ ,stl:\ ,stlnc:\

"""""""""""""""""""""""""""""""""
"""=>字体和颜色<="""
"""""""""""""""""""""""""""""""""
"自动开启语法高亮"
syntax enable

"设置字体"
"set guifont=dejaVu\ Sans\ MONO\ 10
set guifont=Courier_New:h10:cANSI

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
    set termguicolors
endif

set t_Co=256

let g:solarized_termcolors=256
"高亮显示当前行"
set cursorline
"设置背景颜色"
set background=dark
hi cursorline guibg=#00ff00
hi CursorColumn guibg=#00ff00
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"设置颜色"
"colorscheme molokai
"colorscheme gruvbox
colorscheme solarized8
"colorscheme gotham256
"colorscheme OceanicNext
"colorscheme flattened_dark
"colorscheme industry
"colorscheme pablo

"高亮显示普通txt文件（需要txt.vim脚本）"
"au BufRead,BufNewFile *  setfiletype txt

"""""""""""""""""""""""""""""""
"""=>代码折叠功能<="""
"""""""""""""""""""""""""""""""
"激活折叠功能"
set foldenable
"set nofen（这个是关闭折叠功能）"

"设置按照语法方式折叠（可简写set fdm=XX）"
"有6种折叠方法：
"manual   手工定义折叠"
"indent   更多的缩进表示更高级别的折叠"
"expr     用表达式来定义折叠"
"syntax   用语法高亮来定义折叠"
"diff     对没有更改的文本进行折叠"
"marker   对文中的标志进行折叠"
set foldmethod=manual
"set fdl=0（这个是不选用任何折叠方法）"

"设置折叠区域的宽度"
"如果不为0，则在屏幕左侧显示一个折叠标识列
"分别用“-”和“+”来表示打开和关闭的折叠
set foldcolumn=0

"设置折叠层数为3"
setlocal foldlevel=3

"设置为自动关闭折叠"
set foldclose=all

"用空格键来代替zo和zc快捷键实现开关折叠"
"zo O-pen a fold (打开折叠)
"zc C-lose a fold (关闭折叠)
"zf F-old creation (创建折叠)
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

"""""""""""""""""""""""""""""""""""
"""=>文字处理<="""
"""""""""""""""""""""""""""""""""""
"使用空格来替换Tab"
set expandtab

"设置所有的Tab和缩进为4个空格"
set tabstop=4

"设定<<和>>命令移动时的宽度为4"
set shiftwidth=4

"使得按退格键时可以一次删除4个空格"
set softtabstop=4
set smarttab

"缩进，自动缩进（继承前一行的缩进）"
"set autoindent 命令打开自动缩进，是下面配置的缩写
"可使用autoindent命令的简写，即“:set ai”和“:set noai”
"还可以使用“:set ai sw=4”在一个命令中打开缩进并设置缩进级别
set ai
set cindent

"智能缩进"
set si

"自动换行”
set wrap

"设置软宽度"
set sw=4

"行内替换"
set gdefault

""""""""""""""""""""""""""""""""""
"""=>Vim 界面<="""
""""""""""""""""""""""""""""""""""
"增强模式中的命令行自动完成操作"
set wildmenu

"显示标尺"
set ruler

"设置命令行的高度"
set cmdheight=1

"显示行数"
set nu

"不要图形按钮"
set go=

"在执行宏命令时，不进行显示重绘；在宏命令执行完成后，一次性重绘，以便提高性能"
set lz

"使回格键（backspace）正常处理indent, eol, start等"
set backspace=eol,start,indent

"允许空格键和光标键跨越行边界"
set whichwrap+=<,>
",h,l"

"设置魔术"
set magic

"关闭遇到错误时的声音提示"
"关闭错误信息响铃"
set noerrorbells

"关闭使用可视响铃代替呼叫"
set novisualbell

"高亮显示匹配的括号([{和}])"
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）"
set mat=2

"光标移动到buffer的顶部和底部时保持3行距离"
set scrolloff=3

"搜索逐字符高亮"
set hlsearch
set incsearch

nnoremap <silent> <leader>l :nohlsearch<CR>

"搜索时不区分大小写"
"还可以使用简写（“:set ic”和“:set noic”）"
set ignorecase
"智能识别小写时不区分大小写,大写时区分
"必须要在ignorecase开的情况下才有用
set smartcase

"用浅色高亮显示当前行"
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"输入的命令显示出来，看的清楚"
set showcmd

""""""""""""""""""""""""""""""""""""
"""=>编码设置<="""
""""""""""""""""""""""""""""""""""""
"设置编码"
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"设置文件编码"
"防止乱码
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1

"设置终端编码"
set termencoding=utf-8

"设置语言编码"
set langmenu=zh_CN.UTF-8
set helplang=cn

"""""""""""""""""""""""""""""
"""=>其他设置<="""
"""""""""""""""""""""""""""""
"开启新行时使用智能自动缩进"
set smartindent
set cin
set showmatch

"在处理未保存或只读文件的时候，弹出确认"
set confirm

"隐藏工具栏"
set guioptions-=T

"隐藏菜单栏"
set guioptions-=m

"置空错误铃声的终端代码"
set vb t_vb=

"显示状态栏（默认值为1，表示无法显示状态栏）"
set laststatus=2
"设置状态栏显示的内容
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}}

"粘贴不换行问题的解决方法"
"set pastetoggle=<F9>


"文件类型自动检测，代码智能补全"
set completeopt=longest,preview,menu

"共享剪切板"
set clipboard+=unnamed

"从不备份"
set nobackup
set noswapfile

"自动保存"
set autowrite

" 跳转Window
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

"显示中文帮助"
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

"设置高亮相关项"
highlight Search ctermbg=black ctermfg=white guifg=white guibg=black

""""""""""""""""""""""""""""""""
"""=>在shell脚本开头自动增加解释器以及作者等版权信息<="""
""""""""""""""""""""""""""""""""
"新建.py,.cc,.sh,.java文件，自动插入文件头"
autocmd BufNewFile *.sh,*.cpp,*c,*.py exec "call SetTitle()"
"定义函数SetTitle，自动插入文件头"
func! SetTitle()
    if expand ("%:e") == 'cpp'
        call setline(1, "#include <iostream>")
        call setline(2, "")
        call setline(3, "using namespace std;")
        call setline(4, "")
        call setline(5, "int main(void)")
        call setline(6, "{")
        call setline(7, "")
        call setline(8, "    return 0;")
        call setline(9, "}")
    endif

    if expand ("%:e") == 'c'
        call setline(1, "#include <stdio.h>")
        call setline(2, "")
        call setline(3, "int main(void)")
        call setline(4, "{")
        call setline(5, "")
        call setline(6, "    return 0;")
        call setline(7, "}")
    endif
    if expand ("%:e") == 'sh'
        call setline(1, "#!/bin/bash")
        call setline(2, "#Author:shuai")
        call setline(3, "#Time:".strftime("%F %T"))
        call setline(4, "#Name:".expand("%"))
        call setline(5, "#Version:V1.0")
        call setline(6, "#Description:This is a production script.")
    endif
    if expand ("%:e") == 'py'
        call setline(1, "#!/usr/bin/env python3")
    endif

endfunc

"自动补全括号
""inoremap ' ''<ESC>i
""inoremap " ""<ESC>i
""inoremap ( ()<ESC>i
""inoremap [ []<ESC>i
""inoremap { {<CR>}<ESC>O

nmap <silent> <F4> :TagbarToggle<CR>
" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
"let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
"let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
"let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
"let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
"let g:NERDToggleCheckAllLines = 1

" 设置NerdTree
"map <F3> :NERDTreeMirror<CR>
"map <F3> :NERDTreeToggle<CR>

"光标
"set guicursor=n-c-v:ver50-ncvCursor
"set guicursor=n-c-v:block-nCursor,i-ci:ver30-iCu

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif

" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 8

" 任务结束时候响铃提醒
let g:asyncrun_bell = 1

function! QuickAbout()
    "if expand("%:e") == "py"
    "exec "normal \<c-w>\<c-w>"
    "q
    "else
    "call asyncrun#quickfix_toggle(6)
    "endif
    call asyncrun#quickfix_toggle(6)
endfunction

" 设置 F10 打开/关闭 Quickfix 窗口
nnoremap <silent> <F2> :colder<cr>
nnoremap <silent> <F3> :cnewer<cr>
nnoremap <silent> <F6> :call Compile()<cr>
nnoremap <silent> <F7> :call Run()<cr>
nnoremap <silent> <F8> :call QuickAbout()<cr>
nnoremap <silent> <F9> :call CompileAndRun()<cr>
nnoremap <silent> <c-m-n> :call CompileAndRun()<cr>

"nnoremap <silent> <F10> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
function RunPython()
    let mp = &makeprg
    let ef = &errorformat
    let exeFile = expand("%:t")
    setlocal makeprg=python \-u
    set efm=%C\ %.%#,%A\ \
endfunction
function! CompileAndRun()
    exec "w"
    chdir %:h
    if expand("%:e") == "cpp"
        if !isdirectory("build")
            :call mkdir("build")
        endif
        AsyncRun g++ -Wall -std=c++17 -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/build/$(VIM_FILENOEXT)" && $(VIM_FILEDIR)/build/$(VIM_FILENOEXT)
    elseif expand("%:e") == "c"
        if !isdirectory("build")
            :call mkdir("build")
        endif
        AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/build/$(VIM_FILENOEXT)" && $(VIM_FILEDIR)/build/$(VIM_FILENOEXT)
    elseif expand("%:e") == "sh"
        AsyncRun bash "$(VIM_FILEPATH)"
    elseif expand("%:e") == "py"
        AsyncRun python3 "$(VIM_FILEPATH)"
        ":PymodeRun
    elseif expand("%:e") == "java"
        "AsyncRun javac "$(VIM_FILEPATH)" -d "$(VIM_FILEDIR)/$(VIM_FILENOEXT).class" && java  "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"
        AsyncRun javac % && java -cp %:p:h %:t:r
    elseif expand("%:e") == "asm"
        ":call mkdir("build")
        AsyncRun nasm -f elf "$(VIM_FILEPATH)"  && ld -m elf_i386 -s -o "$(VIM_FILENOEXT)" "$(VIM_FILEDIR)/$(VIM_FILENOEXT).o" && $(VIM_FILEDIR)/$(VIM_FILENOEXT)
    elseif expand("%:e") == "html"
        exec "!google-chrome-stable %"
    elseif expand("%:e") == "js"
        ":call mkdir("build")
        AsyncRun node "$(VIM_FILEPATH)"
    endif
endfunction

function! Compile()
    exec "w"
    chdir %:h
    if expand("%:e") == "cpp"
        if !isdirectory("build")
            :call mkdir("build")
        endif
        AsyncRun g++ -Wall -std=c++17 -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/build/$(VIM_FILENOEXT)"
    elseif expand("%:e") == "c"
        if !isdirectory("build")
            :call mkdir("build")
        endif
        AsyncRun gcc -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/build/$(VIM_FILENOEXT)"
    elseif expand("%:e") == "java"
        "AsyncRun javac "$(VIM_FILEPATH)" -d "$(VIM_FILEDIR)/$(VIM_FILENOEXT).class"
        AsyncRun javac %
    elseif expand("%:e") == "asm"
        ":call mkdir("build")
        AsyncRun nasm -f elf "$(VIM_FILEPATH)"  && ld -m elf_i386 -s -o "$(VIM_FILENOEXT)" "$(VIM_FILEDIR)/$(VIM_FILENOEXT).o"
    endif
endfunction

function! Run()
    chdir %:h
    if expand("%:e") == "cpp"
        AsyncRun $(VIM_FILEDIR)/build/$(VIM_FILENOEXT)
    elseif expand("%:e") == "c"
        AsyncRun $(VIM_FILEDIR)/build/$(VIM_FILENOEXT)
    elseif expand("%:e") == "sh"
        AsyncRun bash "$(VIM_FILEPATH)"
    elseif expand("%:e") == "py"
        AsyncRun python3 "$(VIM_FILEPATH)"
        ":PymodeRun
    elseif expand("%:e") == "java"
        "java  "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"
        AsyncRun java -cp %:p:h %:t:r
    elseif expand("%:e") == "asm"
        ":call mkdir("build")
        AsyncRun $(VIM_FILEDIR)/$(VIM_FILENOEXT)
    elseif expand("%:e") == "html"
        exec "!google-chrome-stable %"
    endif
endfunction

"ale
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
let g:ale_linters = {
            \   'css': ['prettier'],
            \   'html': ['tidy'],
            \   'javascript': ['eslint'],
            \   'php': [''],
            \   'python': ['flake8'],
            \}


let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"設定跳轉的快捷鍵，可以跳轉到definition和declaration
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <silent> <leader>gv :YcmCompleter GetType<cr>
nnoremap <silent> <leader>gh :YcmCompleter GetDoc<cr>
"nmap <F4> :YcmDiags<CR>
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
            \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
            \ 'cs,lua,javascript': ['re!\w{2}'],
            \   'css': [ 're!^\s{4}', 're!:\s+'],
            \   'html': [ '</' ],
            \ }

let g:ycm_filetype_whitelist = {
            \ 'c':1,
            \ 'cpp':1,
            \ 'objc':1,
            \ 'objcpp':1,
            \ 'python':1,
            \ 'java':1,
            \ 'javascript':1,
            \ 'coffee':1,
            \ 'vim':1,
            \ 'go':1,
            \ 'cs':1,
            \ 'lua':1,
            \ 'perl':1,
            \ 'perl6':1,
            \ 'php':1,
            \ 'ruby':1,
            \ 'rust':1,
            \ 'erlang':1,
            \ 'asm':1,
            \ 'nasm':1,
            \ 'masm':1,
            \ 'tasm':1,
            \ 'asm68k':1,
            \ 'asmh8300':1,
            \ 'asciidoc':1,
            \ 'basic':1,
            \ 'vb':1,
            \ 'make':1,
            \ 'cmake':1,
            \ 'html':1,
            \ 'css':1,
            \ 'less':1,
            \ 'json':1,
            \ 'cson':1,
            \ 'typedscript':1,
            \ 'haskell':1,
            \ 'lhaskell':1,
            \ 'lisp':1,
            \ 'scheme':1,
            \ 'sdl':1,
            \ 'sh':1,
            \ 'zsh':1,
            \ 'bash':1,
            \ 'man':1,
            \ 'markdown':1,
            \ 'matlab':1,
            \ 'maxima':1,
            \ 'dosini':1,
            \ 'conf':1,
            \ 'config':1,
            \ 'zimbu':1,
            \ 'ps1':1,
            \ }
set noshowmode

set guifont=DejaVu\ Sans\ mono\ 11
let g:fullscreen = 0
function! ToggleFullscreen()
    if g:fullscreen == 1
        let g:fullscreen = 0
        let mod = "remove"
    else
        let g:fullscreen = 1
        let mod = "add"
    endif
    call system("wmctrl -ir " . v:windowid . " -b " . mod . ",fullscreen")
endfunction
map <silent> <F11> :call ToggleFullscreen()<CR>
au GuiEnter * set t_vb=
"let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
"
function! DebugProfile()
    if &filetype == 'cpp'
        exec "!cp ~world/.vim/debug_profile/cpp/.vimspector.json %:h"
    elseif &filetype == 'py'
        exec "!cp ~world/.vim/debug_profile/python/.vimspector.json %:h"
    endif
endfunction

nnoremap <leader>5 :call vimspector#Continue()<cr>
nnoremap <leader>3 :call vimspector#Stop()<cr>
nnoremap <leader>4 :call vimspector#Restart()<cr>
nnoremap <leader>6 :call vimspector#Pause()<cr>
nnoremap <leader>9 :call vimspector#ToggleBreakpoint()<cr>
nnoremap <leader>7 :call vimspector#ToggleBreakpoint( {trigger expr,hit count expr } )<cr>
nnoremap <leader>8 :call vimspector#AddFunctionBreakpoint( '<cexpr' )<cr>
nnoremap <leader>0 :call vimspector#StepOver()<cr>
nnoremap <leader>1 :call vimspector#StepInto()<cr>
nnoremap <leader>2 :call vimspector#StepOut()<cr>
nnoremap <leader>- :!g++ -std=c++17 -g %<cr><cr>
nnoremap <leader>= :call DebugProfile()<cr>


"packadd! vimspector
function! Menu()
    exec "tabnew | Startify"
endfunction

map <silent> <Leader>m :call Menu()<CR>

""" Configuration example
" Echo translation in the cmdlinewindow
nmap <silent> <Leader>t <Plug>Translate
vmap <silent> <Leader>t <Plug>TranslateV
" Display translation in a window
nmap <silent> <Leader>T <Plug>TranslateW
vmap <silent> <Leader>T <Plug>TranslateWV
" Replace the text with translation
nmap <silent> <Leader>r <Plug>TranslateR
vmap <silent> <Leader>r <Plug>TranslateRV
" Translate the text in clipboard
nmap <silent> <Leader>x <Plug>TranslateX

"let g:translator_history_enable = v:true
let g:translator_source_lang = 'auto'
let g:translator_target_lang = 'zh'
"let g:translator_default_engines = 'youdao'
"let g:translator_history_enable = v:true
" Text highlight of translator window
if match(g:translator_target_lang, 'zh')
    let g:translator_default_engines = get(g:, 'translator_default_engines', ['youdao'])
else
    let g:translator_default_engines = get(g:, 'translator_default_engines', ['google'])
endif
hi def link TranslatorQuery             Identifier
hi def link TranslatorDelimiter         Special
hi def link TranslatorExplain           Statement

" Background of translator window border
hi def link TranslatorNF                NormalFloat
hi def link TranslatorBorderNF          NormalFloat

nmap <leader>h :tabnew ~world/.vim/doc/myVimHelp.txt<CR>
"nmap <leader>H :help myVimHelp.txt<CR>
nmap <leader>H :tabnew /data/home/world/.vim/plugged/vim-snippets/UltiSnips/<CR>
map <D-s> :w<CR>
nmap <leader>L :tabnew<CR>

"C-M-i自动格式化代码
noremap <C-M-i> :Autoformat<CR>
let g:autoformat_verbosemode=1
"我比较喜欢 google 风格的代码
"let g:formatdef_clangformat_google = '"clang-format -style=Google"'
"let g:formatters_c = ['clangformat_google']
"autocmd FileType python,cpp let g:autoformatpython_enabled = 1
let g:formatdef_allman = '"astyle --style=allman --pad-oper"'
let g:formatters_cpp = ['allman']
let g:formatters_c = ['allman']
"-----------------------美化标签栏-----------------------
"定义颜色
hi SelectTabLine term=Bold cterm=Bold gui=Bold ctermbg=None
hi SelectPageNum cterm=None ctermfg=Red ctermbg=None
hi SelectWindowsNum cterm=None ctermfg=DarkCyan ctermbg=None

hi NormalTabLine cterm=Underline ctermfg=Black ctermbg=LightGray
hi NormalPageNum cterm=Underline ctermfg=DarkRed ctermbg=LightGray
hi NormalWindowsNum cterm=Underline ctermfg=DarkMagenta ctermbg=LightGray

function! MyTabLabel(n, select)
    let label = ''
    let buflist = tabpagebuflist(a:n)
    for bufnr in buflist
        if getbufvar(bufnr, "&modified")
            let label = '+'
            break
        endif
    endfor

    let winnr = tabpagewinnr(a:n)
    let name = bufname(buflist[winnr - 1])
    if name == ''
        "为没有名字的文档设置个名字
        if &buftype == 'quickfix'
            let name = '[Quickfix List]'
        else
            let name = '[No Name]'
        endif
    else
        "只取文件名
        let name = fnamemodify(name, ':t')
    endif

    let label .= name
    return label
endfunction

function! MyTabLine()
    let s = ''
    for i in range(tabpagenr('$'))
        " 选择高亮
        let hlTab = ''
        let select = 0
        if i + 1 == tabpagenr()
            let hlTab = '%#SelectTabLine#'
            " 设置标签页号 (用于鼠标点击)
            let s .= hlTab . "[%#SelectPageNum#%T" . (i + 1) . hlTab
            let select = 1
        else
            let hlTab = '%#NormalTabLine#'
            " 设置标签页号 (用于鼠标点击)
            let s .= hlTab . "[%#NormalPageNum#%T" . (i + 1) . hlTab
        endif

        " MyTabLabel() 提供标签
        let s .= ' %<%{MyTabLabel(' . (i + 1) . ', ' . select . ')} '

        "追加窗口数量
        let wincount = tabpagewinnr(i + 1, '$')
        if wincount > 1
            if select == 1
                let s .= "%#SelectWindowsNum#" . wincount
            else
                let s .= "%#NormalWindowsNum#" . wincount
            endif
        endif
        let s .= hlTab . "]"
    endfor

    " 最后一个标签页之后用 TabLineFill 填充并复位标签页号
    let s .= '%#TabLineFill#%T'

    " 右对齐用于关闭当前标签页的标签
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999XX'
    endif

    return s
endfunction
set tabline=%!MyTabLine()


"rainbow
"au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1

nmap <leader>e :tabnew ~world/.vim/init.vim<CR>
nmap <leader>R :source $MYVIMRC<CR>

" 使用 ;e 切换显示文件浏览，使用 ;a 查找到当前文件位置
let g:maplocalleader='\'
nnoremap <silent> <LocalLeader>e
            \ :chdir %:h<cr>
            \ :<C-u>Defx -resume -toggle -buffer-name=tab`tabpagenr()` <CR>
nnoremap <silent> <LocalLeader>a
            \ :chdir %:h<cr>
            \ :<C-u>Defx -resume -buffer-name=tab`tabpagenr()` -search=`expand('%:p')`<CR>



autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    "Define mappings
    nnoremap <silent><buffer><expr> <CR>
                \ defx#is_directory() ?
                \ defx#do_action('open_tree') :
                \ defx#do_action('multi', ['drop'])
    nnoremap <silent><buffer><expr> c
                \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
                \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
                \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
                \ defx#do_action('open')
    nnoremap <silent><buffer><expr> E
                \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P
                \ defx#do_action('preview','pedit')
    nnoremap <silent><buffer><expr> o
                \ defx#is_directory() ?
                \ defx#do_action('open_tree') :
                \ defx#do_action('multi', ['drop'])
    nnoremap <silent><buffer><expr> K
                \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
                \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
                \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> C
                \ defx#do_action('toggle_columns',
                \                'mark:indent:icon:filename:type:size:time')
    nnoremap <silent><buffer><expr> S
                \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
                \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
                \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
                \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
                \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
                \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
                \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
                \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> h
                \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
                \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
                \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
                \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
                \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
                \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
                \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>
                \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
                \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
                \ defx#do_action('change_vim_cwd')
endfunction

"insert mode use jk to instead <esc>
"inoremap jk <esc>
"
"
""""""""""""""""""""""""""""""
"Leaderf settings
""""""""""""""""""""""""""""""
"文件搜索
nnoremap <silent> <c-p> :Leaderf file<CR>

"历史打开过的文件
nnoremap <silent> <Leader>M :Leaderf mru<CR>

"Buffer
nnoremap <silent> <Leader>B :Leaderf buffer<CR>

"函数搜索（仅当前文件里）
nnoremap <silent> <Leader>F :Leaderf function<CR>

"模糊搜索，很强大的功能，迅速秒搜
nnoremap <silent> <Leader>rg :Leaderf rg<CR>


set relativenumber

inoremap <c-d> <esc>ddi
nnoremap <leader>q :q<cr>
nnoremap <leader>Q :qa<cr>
"nnoremap <leader>wq :wq<cr>
"nnoremap <leader>wQ :wqa<cr>
"nnoremap <leader>ww :w !sudo tee % > /dev/null<cr>
"nnoremap <leader>qc :tabclose<cr>

let $NVIM_TUI_ENABLE_TRUE_COLOR=1


inoremap <c-s> <esc>:w<cr>a
"nnoremap <leader><space> za

"echodoc底行显示参数
let g:echodoc_enable_at_startup = 1
"----------------------------------------------------------------------
" ALT+N 切换 tab
"----------------------------------------------------------------------
noremap <silent><m-1> :tabn 1<cr>
noremap <silent><m-2> :tabn 2<cr>
noremap <silent><m-3> :tabn 3<cr>
noremap <silent><m-4> :tabn 4<cr>
noremap <silent><m-5> :tabn 5<cr>
noremap <silent><m-6> :tabn 6<cr>
noremap <silent><m-7> :tabn 7<cr>
noremap <silent><m-8> :tabn 8<cr>
noremap <silent><m-9> :tabn 9<cr>
noremap <silent><m-0> :tabn 10<cr>
inoremap <silent><m-1> <ESC>:tabn 1<cr>
inoremap <silent><m-2> <ESC>:tabn 2<cr>
inoremap <silent><m-3> <ESC>:tabn 3<cr>
inoremap <silent><m-4> <ESC>:tabn 4<cr>
inoremap <silent><m-5> <ESC>:tabn 5<cr>
inoremap <silent><m-6> <ESC>:tabn 6<cr>
inoremap <silent><m-7> <ESC>:tabn 7<cr>
inoremap <silent><m-8> <ESC>:tabn 8<cr>
inoremap <silent><m-9> <ESC>:tabn 9<cr>
inoremap <silent><m-0> <ESC>:tabn 10<cr>

let i=2
"runtime macros/matchit.vim
"添加路径方便gf文件
set path+=/usr/include/c++/10.2.0

"多光标插件设置
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-l>'           " replace C-n
let g:VM_maps['Find Subword Under'] = '<C-l>'           " replace visual C-n
let g:VM_mouse_mappings    = 1
let g:VM_theme             = 'iceblue'

let g:VM_maps = {}
let g:VM_maps["Undo"]      = 'u'
let g:VM_maps["Redo"]      = '<C-r>'

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
                return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

function! g:UltiSnips_Reverse()
    call UltiSnips#JumpBackwards()
    if g:ulti_jump_backwards_res == 0
        return "\<C-P>"
    endif

    return ""
endfunction


if !exists("g:UltiSnipsJumpForwardTrigger")
    let g:UltiSnipsJumpForwardTrigger = "<c-n>"
endif
if !exists("g:UltiSnipsJumpBackwardTrigger")
    let g:UltiSnipsJumpBackwardTrigger="<c-p>"
endif
au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger     . " <C-R>=g:UltiSnips_Complete()<cr>"
au InsertEnter * exec "inoremap <silent> " .     g:UltiSnipsJumpBackwardTrigger . " <C-R>=g:UltiSnips_Reverse()<cr>"
" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"
inoremap <C-j> <esc>I
inoremap <C-k> <esc>A


nnoremap <F5> :UndotreeToggle<CR>

" these "Ctrl mappings" work well when Caps Lock is mapped to Ctrl
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

augroup neomake_hook
    au!
    autocmd User NeomakeJobFinished call TestFinished()
    autocmd User NeomakeJobStarted call TestStarted()
augroup END
" make test commands execute using dispatch.vim
"let test#strategy = "dispatch"
" use the jest-vim-reporter to shorten the jest testoutput
let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
" use neomake for async running of tests
let test#strategy = "neomake"
" do not open the test run results, can be changed to show them
let g:neomake_open_list = 0

"" initially empty status
let g:testing_status = ''
" Start test
function! TestStarted() abort
    let g:testing_status = 'Test ⌛'
endfunction


" Show message when all tests are passing
function! TestFinished() abort
    let context = g:neomake_hook_context
    if context.jobinfo.exit_code == 0
        let g:testing_status = 'Test ✅'
    endif
    if context.jobinfo.exit_code == 1
        let g:testing_status = 'Test ❌'
    endif
endfunction

function! TestStatus() abort
    return g:testing_status
endfunction

autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()
let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

let g:lightline = {
            \ }

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

let g:lightline  = {}
let g:lightline = {
            \ 'colorscheme': 'selenized_dark',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
            \   'right':  [ [ 'lineinfo' ], [ 'percent' ],
            \            [ 'fileformat', 'fileencoding', 'filetype' ] ,  [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ]
            \ },
            \ 'tabline': {
            \   'left': [ ['tabs'] ],
            \   'right': [ ['bufnum'] ]
            \ },
            \ 'component': {
            \   'readonly': '%{&filetype=="help"?"":&readonly?"\ue0a2":""}',
            \   'modified': '%{&filetype=="help"?"":&modified?"\ue0a0":&modifiable?"":"-"}',
            \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
            \ },
            \ 'component_function': {
            \   'filetype': 'MyFiletype',
            \   'fileformat': 'MyFileformat',
            \ },
            \ 'component_visible_condition': {
            \   'readonly': '(&filetype!="help"&& &readonly)',
            \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
            \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
            \ },
            \ 'component_expand': {
            \   'gitbranch': 'gitbranch#name',
            \   'buffers': 'lightline#bufferline#buffers',
            \  'linter_checking': 'lightline#ale#checking',
            \  'linter_infos': 'lightline#ale#infos',
            \  'linter_warnings': 'lightline#ale#warnings',
            \  'linter_errors': 'lightline#ale#errors',
            \  'linter_ok': 'lightline#ale#ok',
            \ },
            \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
            \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
            \ 'component_type': {
            \   'buffers': 'tabsel',
            \     'linter_checking': 'right',
            \     'linter_infos': 'right',
            \     'linter_warnings': 'warning',
            \     'linter_errors': 'error',
            \     'linter_ok': 'right',
            \ } }

nnoremap <leader>tm :exec RunTestVerbose()<CR>

function! RunTestVerbose()
    let g:test#javascript#jest#options = ''
    :TestNearest -strategy=neovim
    let g:test#javascript#jest#options = '--reporters jest-vim-reporter'
endfunction

"K查看cpp文档
autocmd FileType cpp setlocal keywordprg=cppman
autocmd FileType py setlocal keywordprg=pydoc
autocmd Filetype java set makeprg=javac\ %
"autocmd Filetype md Goyo


autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '\'<CR>
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=1 noshowmode noruler
            \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler
set timeoutlen=500
let g:which_key_hspace = 5
"let g:which_key_max_size = 5
"let g:which_key_position = 'topleft'
"let g:which_key_use_floating_win = 1

highlight default link WhichKey          Function
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Keyword
highlight default link WhichKeyDesc      Identifier

highlight default link WhichKeyFloating Pmenu

nnoremap <silent> ] :<c-u>WhichKey ']'<cr>
nnoremap <silent> [ :<c-u>WhichKey '['<cr>

noremap <c-z> u
inoremap <c-z> <esc>ua
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

let g:html_indent_style1 = "inc"

call plug#begin('~/.vim/plugged')
"Fuzzy file
"Plug 'kien/ctrlp.vim'
Plug 'yggdroot/leaderf'
"status bar
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"start menu
Plug 'mhinz/vim-startify'
"bleam in for, if ...
Plug 'yggdroot/indentline'
"completor
Plug 'https://gitee.com/mirrors/youcompleteme', { 'do': './install.py --clang-completer --system-libclang' }
"outline
Plug 'majutsushi/tagbar'
"comment
Plug 'scrooloose/nerdcommenter'
"auto generate tags
Plug 'ludovicchabant/vim-gutentags'
"compile and run windows
Plug 'skywind3000/asyncrun.vim'
"async inspector
Plug 'w0rp/ale'
Plug 'shougo/echodoc'
Plug 'puremourning/vimspector'
"bracket
Plug 'jiangmiao/auto-pairs'
"themes
"Plug 'morhetz/gruvbox'
"Plug 'tomasr/molokai'
"Plug 'w0ng/vim-hybrid'
"Plug 'rakr/vim-one'
"Plug 'whatyouhide/vim-gotham'
"Plug 'mhartington/oceanic-next'
"Plug 'romainl/flattened'
"Plug 'cocopon/iceberg.vim'
Plug 'rafi/awesome-vim-colorschemes'
"Plug 'altercation/solarized'
"translator
Plug 'voldikss/vim-translator'
"file tree
"Plug 'scrooloose/nerdtree'
if has('nvim')
    Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/defx.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'
"format code
Plug 'Chiel92/vim-autoformat'
"color bracket
Plug 'luochen1990/rainbow'
"look file
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'
"git
Plug 'tpope/vim-fugitive'
"terminal
Plug 'skywind3000/vim-terminal-help'
"c++ highlight
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'jackguo380/vim-lsp-cxx-highlight'
"参数底行提示
Plug 'Shougo/echodoc.vim'
"[b,b],[a,a]等快捷操作
Plug 'tpope/vim-unimpaired'
"括号快速改变
Plug 'tpope/vim-surround'
"多光标
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"快速移动
Plug 'easymotion/vim-easymotion'
"自动补全代码部分
Plug 'SirVer/ultisnips'
"" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
"undo tree
Plug 'mbbill/undotree'
"test code
Plug 'vim-test/vim-test'
"term
Plug 'tpope/vim-dispatch'
"make
Plug 'neomake/neomake'
"line same as airline
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/vim-gitbranch'
Plug 'sainnhe/artify.vim'
"Python ide配置大全
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"check colorscheme
Plug 'vim-scripts/ScrollColors'
"vim and tmux motion
Plug 'christoomey/vim-tmux-navigator'
"wiki
"Plug 'vimwiki/vimwiki'
"Plug 'tpope/vim-vinegar'
"open file in right way
Plug 'EinfachToll/DidYouMean'
"can repeat surround and other plugin for .
Plug 'tpope/vim-repeat'
Plug 'glts/vim-magnum'
"转换进制
Plug 'glts/vim-radical'
"icons
Plug 'ryanoasis/vim-devicons'
"project manager
"Plug 'tpope/vim-projectionist'
"markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/goyo.vim'
Plug 'iamcco/mathjax-support-for-mkdp'
" If you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'junegunn/limelight.vim'
Plug 'liuchengxu/vim-which-key'
"html
Plug 'mattn/emmet-vim'
"javascript
Plug 'pangloss/vim-javascript'
"preview css color
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax'
call plug#end()

"
call defx#custom#option('_', {
            \ 'columns': 'indent:git:icons:filename',
            \ 'winwidth': 25,
            \ 'split': 'vertical',
            \ 'direction': 'topleft',
            \ 'show_ignored_files': 0,
            \ 'root_marker': '≡ ',
            \ 'ignored_files':
            \     '.mypy_cache,.pytest_cache,.git,.hg,.svn,.stversions'
            \   . ',__pycache__,.sass-cache,*.egg-info,.DS_Store,*.pyc,*.swp'
            \ })
