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

" Go
" We are using cespare's modification,
" which uses bradfitz's goimports instead of gofmt.
"
" With goimports, you can add missing imports automatically.
"
" To install goimport:
"   go get github.com/bradfitz/goimports
Bundle 'cespare/vim-golang'

" To install godef:
"   go get code.google.com/p/rog-go/exp/cmd/godef
Bundle 'dgryski/vim-godef'

" To install gocode:
"   go get github.com/nsf/gocode
Bundle 'undx/vim-gocode'

" Markdown
Bundle 'monnand/vim-markdown'

" HTML
Bundle 'mattn/zencoding-vim'

" Tagbar
Bundle 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>

" .po file
Bundle 'po.vim'

" color scheme
Bundle 'molokai'

" erlang
Bundle 'jimenezrick/vimerl'

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
