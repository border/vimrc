set nocompatible

set background=dark

" Set the leader
let mapleader = ','

" Setup Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" General
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

Bundle 'spf13/vim-colors'

" fugitive.vim: A Git wrapper so awesome, it should be illegal.
Bundle 'tpope/vim-fugitive'

" Easy motion. A tutorial could be found here:
" http://net.tutsplus.com/tutorials/other/vim-essential-plugin-easymotion/
" Note: The default leader has been changed to <Leader><Leader>
" Type ,,w to see the magic happens.
Bundle 'Lokaltog/vim-easymotion'

" MiniBufExpl - Elegant buffer explorer 
" https://github.com/fholgado/minibufexpl.vim
Bundle 'minibufexpl.vim'
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1

" supertab
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Powerline
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'unicode'

"代码排版缩进标识
Bundle 'Yggdroot/indentLine'
let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 0
let g:indentLine_char = '¦'


"主题 solarized
Bundle 'altercation/vim-colors-solarized'
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"

"主题 molokai
Bundle 'tomasr/molokai'
let g:molokai_original = 1

" 修改主题和颜色展示
"colorscheme solarized
"set background=dark
"set t_Co=256

"colorscheme molokai
"colorscheme desert"

if !has('gui_running')
    let g:solarized_termtrans=1

    if (&t_Co >= 256 || $TERM == 'xterm-256color')
        " Do nothing, it handles itself.
    else
        " Make Solarized use 16 colors for
        " Terminal support
        let g:solarized_termcolors=16
    endif
endif


" Go
" We are using cespare's modification,
" which uses bradfitz's goimports instead of gofmt.
"
" With goimports, you can add missing imports automatically.
"
" To install goimport:
"   go get github.com/bradfitz/goimports
Bundle 'cespare/vim-golang'

" To install gocode:
"   go get github.com/nsf/gocode
Bundle 'undx/vim-gocode'
set shiftwidth=4
set expandtab
set tabstop=4
set softtabstop=4

" Markdown
Bundle 'monnand/vim-markdown'

" HTML
Bundle 'mattn/zencoding-vim'

"迄今为止用到的最好的自动VIM自动补全插件
Bundle 'Valloric/YouCompleteMe'
""youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
""let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']


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

" color scheme
Bundle 'molokai'

" erlang
Bundle 'jimenezrick/vimerl'

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


" ---------------- Some general hack --------------
filetype plugin indent on
syntax on

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

"Enable folding, I find it very useful
set nofen
set fdl=0

set wildmenu   "显示补全列表
set wildmode=longest:full   "补全行为设置

" tags https://github.com/lyosha/ctags-go
set tags+=.,./tags;/

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

" Python indent
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" Go tags
" To install gotags:
"     go get -u github.com/jstemmer/gotags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Translator information
let g:po_translator = "Jiang Bian <borderj@gmail.com>"
let g:po_lang_team = "Chinese (Simplified)"

" Let's gofmt it before saving it
autocmd BufWritePre *.go :Fmt

" golint
" To install golint:
"   go get github.com/golang/lint/golint
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
