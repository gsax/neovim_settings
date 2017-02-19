" vim-plug settings {{{
"""""""""""""""""""""""
" Plugins {{{
"""""""""""""
" vim plugins path
call plug#begin('~/.local/share/nvim/bundle')

" vim-gitgutter: A Vim plugin which shows a git diff in the gutter
" (signcolumn) and stages/undoes hunks
Plug 'airblade/vim-gitgutter'

" vim-bufferline: super simple vim plugin to show the list of buffers in the
" command bar
"Plug 'bling/vim-bufferline'

" neotags: Tag highlight in neovim
"Plug 'c0r73x/neotags.nvim'

" ctrlp.vim: fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'

" jedi.vim: a python autocompletion
Plug 'davidhalter/jedi-vim', { 'for': ['python'] }

" supertab: Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" vim-esearch: Perform search in files easily
"Plug 'eugen0329/vim-esearch'

" scratch.vim: flexbile scratch buffer
Plug 'gsax/scratch.vim'

" tabular: Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" vim-gnupg: transparent editing of PGP files
Plug 'jamessan/vim-gnupg'

" vim-virtualenv: vim plugin for working with python virtualenvs
Plug 'jmcantrell/vim-virtualenv'

" python-mode
Plug 'klen/python-mode', { 'for': ['python'] }

" tagbar: class browser
"Plug 'majutsushi/tagbar'

" undotree: show the undotree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" vim-grepper: helps you win at grep
Plug 'mhinz/vim-grepper'

" vim-bbye: don't close splits when closing a buffer
Plug 'moll/vim-bbye'

" neomake: Async :make and linting framework for Neovim/Vim
Plug 'neomake/neomake'

" YCM-Generator: Generates config files for YouCompleteMe
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" sparkup: A parser for a condensed HTML format
"Plug 'rstacruz/sparkup'

" rust: vim configuration for rust
Plug 'rust-lang/rust.vim'

" NERDCommenter: orgasmic comments
Plug 'scrooloose/nerdcommenter'

" NERDTree: a tree explorer plugin for vim
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" syntastic: syntax checker
"Plug 'scrooloose/syntastic', { 'for': ['perl', 'python', 'rust'] }

" dein: dark powered vim plugin manager
"Plug 'Shougo/dein.vim'

" denite: dark powered asynchronous unite all interfaces
"Plug 'Shougo/denite.nvim'

" deoplete: dark powered asynchronous completion framework
Plug 'Shougo/deoplete.nvim'

" vimproc: interactive command execution in vim
"Plug 'Shougo/vimproc.vim'

" ultisnips: the ultimate snippet solution for vim
"Plug 'SirVer/ultisnips'

" vim-hardtime: Plugin to help you stop repeating the basic movement keys
Plug 'takac/vim-hardtime'

" vim-characterize: shows unicode of a char
Plug 'tpope/vim-characterize'

" vim-fugitive: git for vim
Plug 'tpope/vim-fugitive'

" vim-repeat: enable repeating with .
"Plug 'tpope/vim-repeat'

" vim-surround: easy surround things
"Plug 'tpope/vim-surround'

" vim-autoclose:
"Plug 'Townk/vim-autoclose'

" vim-airline: lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" vim-airline: a collection of themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" YouCompleteMe: fast autocompletion
"Plug 'Valloric/YouCompleteMe'

" vim-easytags: automatic ctags creation, depends on vim-misc
"Plug 'xolox/vim-misc' | Plug 'xolox/vim-easytags'

" nerdtree-git-plugin: A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'

" deoplete-jedi: deoplete.nvim source for Python
Plug 'zchee/deoplete-jedi'

" GoldenView: Always have a nice view for vim split windows
"Plug 'zhaocai/GoldenView.Vim'
" }}}

" Color Schemes {{{
"""""""""""""""""""
" NeoSolarized: A fixed solarized colorscheme for better truecolor support
Plug 'iCyMind/NeoSolarized'

" tender: A 24bit colorscheme for Vim, Airline and Lightline
Plug 'jacoborus/tender.vim'

" onedark: A dark Vim color scheme inspired by Atom's One Dark syntax theme
Plug 'joshdick/onedark.vim'

" FlatColor: FlatColor vim colorscheme
Plug 'MaxSt/FlatColor'

" oceanic: Oceanic Next theme for neovim
Plug 'mhartington/oceanic-next'

" gruvbox: Retro groove color scheme for Vim
Plug 'morhetz/gruvbox'

" badwolf: A Vim color scheme
Plug 'sjl/badwolf'

" molokai: Molokai color scheme for Vim
Plug 'tomasr/molokai'

" vim-gotham: Code never sleeps in Gotham City
Plug 'whatyouhide/vim-gotham'

" krxt:
Plug 'https://bitbucket.org/kb/vim-colorscheme-krxt.git'

call plug#end()
" }}}
" }}}


" Programming Section {{{
"""""""""""""""""""""""""
scriptencoding utf-8

" automatically give executable permissions if file begins with #! and
" contains '/bin/' in the path
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod a+x <afile>
" }}}


" Misc Section {{{
""""""""""""""""""
" set colorscheme
colorscheme molokai

" highlight the current line the cursor is in
set cursorline

" keep some lines distance to the top and bottom
set scrolloff=2

" activate TrueColor support
if (has("termguicolors"))
	set termguicolors
endif
" }}}


" Plugin Configuration {{{
""""""""""""""""""""""""""
" CtrlP
source ~/.config/nvim/config/ctrlp.vim

" deoplete
source ~/.config/nvim/config/deoplete.vim

" GoldenView
"source ~/.config/nvim/config/GoldenView.vim

" GnuPG
source ~/.config/nvim/config/vim-gnupg.vim

" jedi-vim
source ~/.config/nvim/config/jedi-vim.vim

" neomake
source ~/.config/nvim/config/neomake.vim

" NERDCommenter
source ~/.config/nvim/config/nerdcommenter.vim

" NERDTree
source ~/.config/nvim/config/nerdtree.vim

" python mode
source ~/.config/nvim/config/python-mode.vim

" scratchbuffer
source ~/.config/nvim/config/scratch.vim

" Tagbar
"source ~/.config/nvim/config/tagbar.vim

" Undotree
source ~/.config/nvim/config/undotree.vim

" vim-airline
source ~/.config/nvim/config/vim-airline.vim

" vim-hardtime
source ~/.config/nvim/config/vim-hardtime.vim

" YouCompleteMe
"source ~/.config/nvim/config/YouCompleteMe.vim
" }}}

" vim:foldmethod=marker:foldlevel=0
