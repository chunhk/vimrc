set nocompatible               " Be iMproved
filetype off                   " Required!

" Personal Settings

set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
colorscheme desert

let g:slimv_swank_clojure = '! gnome-terminal -x lein swank &' 
set vb t_vb=

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundle 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

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


" vim-scripts repos
"NeoBundle 'L9'
"NeoBundle 'FuzzyFinder'
"NeoBundle 'rails.vim'
NeoBundle 'taglist.vim'
NeoBundle 'slimv.vim'
NeoBundle 'upAndDown'


 " Non github repos
"NeoBundle 'git://git.wincent.com/command-t.git'


 " Non git repos
"NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" ...

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

" Installation check.
if neobundle#exists_not_installed_bundles()
  echomsg 'Not installed bundles : ' .
        \ string(neobundle#get_not_installed_bundle_names())
  echomsg 'Please execute ":NeoBundleInstall" command.'
  "finish
endif
