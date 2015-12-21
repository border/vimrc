set nocompatible

" Set the leader
let mapleader = ','
set ts=4
set expandtab

" Setup Vundle
filetype off

" set the runtime path to include Vundle and initialize
" mkdir ~/.vim/bundle
" cd ~/.vim/bundle
" git clone https://github.com/gmarik/Vundle.vim.git 
" ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Golang
" https://github.com/fatih/vim-go
" :GoInstallBinaries to install errcheck, gocode, godef, goimports, golint, gotags
" – 执行:GoLint，运行golint在当前Go源文件上。
" – 执行:GoDoc，打开当前光标对应符号的Go文档。
" – 执行:GoVet，在当前目录下运行go vet在当前Go源文件上。
" – 执行:GoRun，编译运行当前main package。
" – 执行:GoBuild，编译当前包，这取决于你的源文件，GoBuild不产生结果文件。
" – 执行:GoInstall，安装当前包。
" – 执行:GoTest，测试你当前路径下地_test.go文件。
" – 执行:GoCoverage，创建一个测试覆盖结果文件，并打开浏览器展示当前包的情况。
" – 执行:GoErrCheck，检查当前包种可能的未捕获的errors。
" – 执行:GoFiles，显示当前包对应的源文件列表。
" – 执行:GoDeps，显示当前包的依赖包列表。
" – 执行:GoImplements，显示当前类型实现的interface列表。
" – 执行:GoRename [to]，将当前光标下的符号替换为[to]
Plugin 'fatih/vim-go'
" vim-go settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
"let g:go_fmt_command = "goimports"

" vim-go custom mappings
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)
au FileType go nmap <Leader>e <Plug>(go-rename)

Plugin 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" General
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

Bundle 'gtags.vim'
"gtags
":map <C-[> :Gtags<CR><CR>
":map <C-/> :Gtags -r<CR><CR>
":map <F10> :cclose<CR>
":map <F11> :cp<CR>
":map <F12> :cn<CR>

" fugitive.vim: A Git wrapper so awesome, it should be illegal.
Bundle 'tpope/vim-fugitive'

" Easy motion. A tutorial could be found here:
" http://net.tutsplus.com/tutorials/other/vim-essential-plugin-easymotion/
" Note: The default leader has been changed to <Leader><Leader>
" Type ,,w to see the magic happens.
Bundle 'Lokaltog/vim-easymotion'

" MiniBufExpl - Elegant buffer explorer 
" https://github.com/fholgado/minibufexpl.vim
"Bundle 'minibufexpl.vim'
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1

" Bundle 'jlanzarotta/bufexplorer'
" Buffer Explorer / Browser
" nead leader key, now leader key is ','
" To start exploring in the current window, use: >
"   ,be    or  \be   or   :BufExplorer
" To start exploring in a newly split horizontal window, use: >
"  ,bs     or  \bs   or   :BufExplorerHorizontalSplit
" To start exploring in a newly split vertical window, use: >
"  ,bv     or  \bv   or   :BufExplorerVerticalSplit
Bundle 'jlanzarotta/bufexplorer'
let g:bufExplorerFindActive=1        " Go to active window."
let g:bufExplorerShowDirectories=1   " Show directories."
let g:bufExplorerShowRelativePath=1  " Show relative paths."

" supertab
" Control + n
" tab + shift
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

"代码排版缩进标识
Bundle 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '¦'

" C/C++
" http://www.fortystones.com/vim-plugins-c-cplusplus-developer/
Bundle 'c.vim'
let g:C_UseTool_cmake = 'yes' 
let g:C_UseTool_doxygen = 'yes' 

" Markdown
Bundle 'monnand/vim-markdown'

" HTML
Bundle 'mattn/emmet-vim'

" Has Same Error with Golang
"Bundle 'Valloric/YouCompleteMe'
""youcompleteme  默认tab  s-tab 和自动补全冲突
" YCM settings
"let g:ycm_key_list_select_completion=['<c-n>']
""let g:ycm_key_list_previous_completion=['<c-p>']
"let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion = ['<Up>']
""let g:ycm_key_invoke_completion = '<C-Space>' -- MAC下需要替换位其他键

" --- taglist
Bundle 'taglist.vim'
nmap <silent><F8> :TlistToggle<CR>
imap <silent><F8> <C-o>:TlistToggle<CR>
let Tlist_Use_SingleClick = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1
let tlist_php_settings ='php;c:class;d:constant;f:function'

" Tagbar
Bundle 'majutsushi/tagbar'
nnoremap <silent><F7> :TagbarToggle<CR>
let g:tagbar_autofocus = 1

"自动补全单引号，双引号等
Bundle 'Raimondi/delimitMate'

" .po file
Bundle 'po.vim'

Bundle 'kien/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 40
let g:rbpt_loadcmd_toggle = 0

" --- vim-airline 
Bundle 'bling/vim-airline'
set ttimeoutlen=50
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''
let g:airline_linecolumn_prefix = ''
let g:airline_linecolumn_prefix = ''
let g:airline_linecolumn_prefix = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#virtualenv#enabled = 1

let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
    if g:airline_theme == 'wombat'
        for colors in values(a:palette.inactive)
            let colors[3] = 235
        endfor
    endif
endfunction


" All of your Plugins must be added before the following line
call vundle#end()            " required


" ---------------- Programming Language --------------
syntax enable 
au BufRead,BufNewFile *.go set filetype=go

" ---------------- Some general hack --------------
filetype plugin indent on

"Auto indent
set ai

""Smart indet
set si

"C-style indeting
set cindent

""Wrap lines
set wrap

" Turn backup off
set nobackup
set nowb
set noswapfile

set ignorecase

"Enable folding, I find it very useful
set nofen
set fdl=0

set wildmenu   "显示补全列表
set wildmode=longest:full   "补全行为设置

" tags https://github.com/lyosha/ctags-go
set tags+=.,./tags;/
" Ctrl + ]           --转到函数定义           [ctags跳转]
" Ctrl + T           --返回调用函数           [ctags跳转]
" g Ctrl+]           --列出可选跳转列表       [ctags跳转]

" Easily change my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Easily quote something
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>l

" do not use <esc>
inoremap jk <esc>
vnoremap jk <esc>

" Tips:
" - normal mode, :Vex[plore] :Ex[plore] :Sex[plore]

" movement mapping. See LVSH (Learn VIM Script the Hardway) 15.1
onoremap p i(

"
" Set status line
if has('statusline')
	set laststatus=2

	" Broken down into easily includeable segments
	set statusline=%<%f\ " Filename
	set statusline+=%w%h%m%r " Options
	set statusline+=\ [%{&ff}/%Y] " filetype
	set statusline+=\ [%{getcwd()}] " current dir
	set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif

set nu			" Line number
"set rnu			" relative Line number
set foldenable		" auto fold code
set ignorecase		" Ignore case when searching
set hlsearch		" highlite search
set showmatch		" show matching {}/()

set pastetoggle=<F12>	" pastetoggle

" Yank from the cursor to the end of the line
nnoremap Y y$

"Have the mouse enabled all the time:
set mouse=a

"Set mapleader
let mapleader = ","
let g:mapleader = ","
"Fast saving
nmap <leader>w :w!<cr>
"Fast Quit
map <leader>q :q<cr>
"Undolist 
map <leader>u :undolist<cr>
"Open Files Dir
map <leader>f :Ex<cr>
"Remap VIM 0
map 0 ^
"Switch to current dir
map <leader>cd :cd %:p:h<cr>
inoremap ;; <Esc>
nmap :X :x
nmap :W :w
nmap :Q :q
nmap :qa :quitall
nmap :QA :quitall

" -------------------------------------------

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Set FileEncodeing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fileencodings=utf-8,cp936,big5,latin1
an 20.4109 &Edit.-SEP6- <Nop>
an 20.4109.10 &Edit.Encoding.&GBK :set encoding=utf-8<CR>
an 20.4109.11 &Edit.Encoding.&Big5 :set encoding=big5<CR>
an 20.4109.12 &Edit.Encoding.&UTF-8 :set encoding=utf-8<CR>
an 20.4119.10 &Edit.Fileencodings.&GBK :set fileencodings=gbk<CR>
an 20.4119.11 &Edit.Fileencodings.&Big5 :set fileencodings=big5<CR>
an 20.4119.12 &Edit.Fileencodings.&UTF-8 :set fileencodings=utf-8<CR>
an 20.4139 &Edit.gb  convert.gb->big5 :%!autogb -i gb -o big5<CR>
an 20.4139 &Edit.gb  convert.gb->utf8 :%!autogb -i gb -o utf8<CR>
an 20.4149 &Edit.big5  convert.big5->gb :%!autogb -i big5 -o gb<CR>
an 20.4149 &Edit.big5  convert.big5->utf8 :%!autogb -i big5 -o utf8<CR>
an 20.4159 &Edit.utf8  convert.utf8->gb :%!autogb -i utf8 -o gb<CR>
an 20.4159 &Edit.utf8  convert.utf8->big5 :%!autogb -i utf8 -o big5<CR>

if has("multi_byte")
    " Set fileencoding priority
    if getfsize(expand("%")) > 0
        set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,latin1
    else
        set fileencodings=cp936,big5,euc-jp,euc-kr,latin1
    endif

    " CJK environment detection and corresponding setting
    if v:lang =~ "^zh_CN"
        " Use cp936 to support GBK, euc-cn == gb2312
        set encoding=gb2312
        set termencoding=utf-8
        set fileencoding=utf-8
    elseif v:lang =~ "^zh_TW"
        " cp950, big5 or euc-tw
        " Are they equal to each other?
        set encoding=big5
        set termencoding=big5
        set fileencoding=big5
    elseif v:lang =~ "^ko"
        " Copied from someone's dotfile, untested
        set encoding=euc-kr
        set termencoding=euc-kr
        set fileencoding=euc-kr
    elseif v:lang =~ "^ja_JP"
        " Copied from someone's dotfile, unteste
        set encoding=euc-jp
        set termencoding=euc-jp
        set fileencoding=euc-jp
    endif
    " Detect UTF-8 locale, and replace CJK setting if needed
    if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
        set encoding=utf-8
        set termencoding=utf-8
        set fileencoding=utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with multi_byte"
endif

set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

"Tab configuration
map <leader>tn :tabnext<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
try
    set switchbuf=usetab
    set stal=2
catch
endtry

" Translator information
let g:po_translator = "Jiang Bian <borderj@gmail.com>"
let g:po_lang_team = "Chinese (Simplified)"

" set clipboard=unnamed
set clipboard=unnamed
