" vim-plug settings
"""""""""""""""""""
" vim plugins path
call plug#begin('~/.local/share/nvim/bundle')

" ctrlp.vim: fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'

" jedi.vim: a python autocompletion
Plug 'davidhalter/jedi-vim', { 'for': ['python'] }

" scratch.vim: flexbile scratch buffer
Plug 'gsax/scratch.vim'

" vim-gnupg: transparent editing of PGP files
Plug 'jamessan/vim-gnupg'

" vim-virtualenv: vim plugin for working with python virtualenvs
Plug 'jmcantrell/vim-virtualenv'

" python-mode
Plug 'klen/python-mode', { 'for': ['python'] }

" tagbar: class browser
Plug 'majutsushi/tagbar'

" undotree: show the undotree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" vim-bbye: don't close splits when closing a buffer
Plug 'moll/vim-bbye'

" gruvbox: nice colors
Plug 'morhetz/gruvbox'

" ag.vim: interface to ag (The Silver Searcher)
Plug 'rking/ag.vim'

" rust: vim configuration for rust
Plug 'rust-lang/rust.vim'

" NERDCommenter: orgasmic comments
Plug 'scrooloose/nerdcommenter'

" NERDTree: a tree explorer plugin for vim
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" syntastic: syntax checker
Plug 'scrooloose/syntastic', { 'for': ['perl', 'python', 'rust'] }

" dein: dark powered vim plugin manager
"Plug 'Shougo/dein.vim'

" denite: dark powered asynchronous unite all interfaces
"Plug 'Shougo/denite.nvim'

" deoplete: dark powered asynchronous completion framework
"Plug 'Shougo/deoplete.nvim'

" vimproc: interactive command execution in vim
"Plug 'Shougo/vimproc.vim'

" ultisnips: the ultimate snippet solution for vim
Plug 'SirVer/ultisnips'

" molokai: nice colors
Plug 'tomasr/molokai'

" vim-characterize: shows unicode of a char
Plug 'tpope/vim-characterize'

" vim-fugitive: git for vim
Plug 'tpope/vim-fugitive'

" vim-repeat: enable repeating with .
Plug 'tpope/vim-repeat'

" vim-surround: easy surround things
Plug 'tpope/vim-surround'

" vim-airline: lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" vim-airline: a collection of themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" YouCompleteMe: fast autocompletion
Plug 'Valloric/YouCompleteMe'

" vim-easytags: automatic ctags creation, depends on vim-misc
Plug 'xolox/vim-misc' | Plug 'xolox/vim-easytags'

call plug#end()


" Programming Section
"""""""""""""""""""""
scriptencoding utf-8

" automatically give executable permissions if file begins with #! and
" contains '/bin/' in the path
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile>


" Misc Section
""""""""""""""
" set colorscheme
colorscheme molokai

" keep some lines distance to the top and bottom
set scrolloff=2


" Plugin Configuration
""""""""""""""""""""""
" CtrlP
source ~/.config/nvim/config/ctrlp.vim

" GnuPG
source ~/.config/nvim/config/vim-gnupg.vim

" jedi-vim
source ~/.config/nvim/config/jedi-vim.vim

" NERDCommenter
source ~/.config/nvim/config/nerdcommenter.vim

" NERDTree
source ~/.config/nvim/config/nerdtree.vim

" python mode
source ~/.config/nvim/config/python-mode.vim

" scratchbuffer
source ~/.config/nvim/config/scratch.vim

" Tagbar
source ~/.config/nvim/config/tagbar.vim

" Undotree
source ~/.config/nvim/config/undotree.vim

" vim-airline
source ~/.config/nvim/config/vim-airline.vim

" YouCompleteMe
source ~/.config/nvim/config/YouCompleteMe.vim
