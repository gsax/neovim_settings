" vim-plug settings {{{
"""""""""""""""""""""""
" Plugins {{{
"""""""""""""
" vim plugins path
call plug#begin('~/.local/share/nvim/bundle')

" vim-airline: lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'

" vim-airline: a collection of themes for vim-airline
Plug 'vim-airline/vim-airline-themes'

" vim-bbye: don't close splits when closing a buffer
Plug 'moll/vim-bbye'

" vim-characterize: shows unicode of a char
Plug 'tpope/vim-characterize'

" deoplete: dark powered asynchronous completion framework
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" deoplete-jedi: deoplete.nvim source for Python
Plug 'zchee/deoplete-jedi', { 'for': ['python'] }

" vim-esearch: Perform search in files easily
Plug 'eugen0329/vim-esearch'

" vim-fugitive: git for vim
Plug 'tpope/vim-fugitive'

" fzf: A command-line fuzzy finder written in Go
Plug 'junegunn/fzf', { 'dir': '~/.go/src/github.com/junegunn/fzf/' }

" vim-gitgutter: A Vim plugin which shows a git diff in the gutter
" (signcolumn) and stages/undoes hunks
Plug 'airblade/vim-gitgutter'

" vim-gnupg: transparent editing of PGP files
Plug 'jamessan/vim-gnupg'

" vim-grepper: helps you win at grep
Plug 'mhinz/vim-grepper'

" vim-hardtime: Plugin to help you stop repeating the basic movement keys
Plug 'takac/vim-hardtime'

" html5.vim: HTML5 omnicomplete and syntax
Plug 'othree/html5.vim'

" vim-man: View and grep man pages in vim
Plug 'vim-utils/vim-man'

" NERDCommenter: orgasmic comments
Plug 'scrooloose/nerdcommenter'

" NERDTree: a tree explorer plugin for vim
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" nerdtree-git-plugin: A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': 'NERDTreeToggle' }

" neomake: Async :make and linting framework for Neovim/Vim
Plug 'neomake/neomake'

" python-mode
Plug 'klen/python-mode', { 'for': ['python'] }

" rust: vim configuration for rust
Plug 'rust-lang/rust.vim', { 'for': ['rust'] }

" supertab: Perform all your vim insert mode completions with Tab
Plug 'ervandew/supertab'

" tabular: Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

" ultisnips: the ultimate snippet solution for vim
Plug 'SirVer/ultisnips'

" undotree: show the undotree
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
" }}}

" Color Schemes {{{
"""""""""""""""""""
" vim-atom-dark: A vim theme inspired by Atom's default dark theme
Plug 'gosukiwi/vim-atom-dark'

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
colorscheme atom-dark

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
" vim-airline
source ~/.config/nvim/config/airline.vim

" deoplete
source ~/.config/nvim/config/deoplete.vim

" fzf
source ~/.config/nvim/config/fzf.vim

" GnuPG
source ~/.config/nvim/config/gnupg.vim

" vim-hardtime
source ~/.config/nvim/config/hardtime.vim

" NERDCommenter
source ~/.config/nvim/config/nerdcommenter.vim

" NERDTree
source ~/.config/nvim/config/nerdtree.vim

" neomake
source ~/.config/nvim/config/neomake.vim

" python mode
source ~/.config/nvim/config/python-mode.vim

" ultisnips
source ~/.config/nvim/config/ultisnips.vim

" Undotree
source ~/.config/nvim/config/undotree.vim
" }}}

" vim:foldmethod=marker:foldlevel=0
