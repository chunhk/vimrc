set nocompatible               " Be iMproved
filetype off                   " Required!

" Personal Settings

set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set hlsearch
set guitablabel=%t
set ignorecase
set wrapscan
set autochdir
colorscheme desert

let g:slimv_swank_clojure = '! gnome-terminal -x lein swank &' 
set vb t_vb=

" Call this in vim using :call Upwd()
function! Upwd()
  :lcd %:p:h
endfunction

" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc.vim', {
           \ 'build' : {
           \     'windows' : 'make -f make_mingw32.mak',
           \     'cygwin' : 'make -f make_cygwin.mak',
           \     'mac' : 'make -f make_mac.mak',
           \     'unix' : 'make -f make_unix.mak',
           \    },
           \ }

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
NeoBundle 'ervandew/supertab'
NeoBundle 'jnwhiteh/vim-golang'
"NeoBundle 'kevinw/pyflakes-vim'
NeoBundle 'Lokaltog/vim-easymotion'
"NeoBundle 'majutsushi/tagbar'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'Raimondi/delimitMate'
"NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'sjl/gundo.vim'
NeoBundle 'artur-shaik/vim-javacomplete2'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'Valloric/YouCompleteMe'

" Google codefmt
NeoBundle 'google/vim-maktaba'
NeoBundle 'google/vim-codefmt'
NeoBundle 'google/vim-glaive'

" vim-scripts repos
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'
"NeoBundle 'rails.vim'
NeoBundle 'taglist.vim'
NeoBundle 'slimv.vim'
NeoBundle 'upAndDown'
NeoBundle 'bufexplorer.zip'

 " Non github repos
"NeoBundle 'git://git.wincent.com/command-t.git'


 " Non git repos
"NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

" gundo settings
nnoremap <F5> :GundoToggle<CR>

autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Google codefmt
call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /home/ubuntu/software/jars/google-java-format-1.3-all-deps.jar"
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
augroup END
