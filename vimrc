""set nocompatible              " be iMproved, required
""filetype off                  " required

" set the runtime path to include Vundle and initialize

""set rtp+=~/.vim/bundle/vundle/
""call vundle#rc()

" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required

""Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos

""Bundle 'Valloric/YouCompleteMe'

" ...

""filetype plugin indent on     " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

"":let mapleader = "<"
""nnoremap <leader>z :YcmCompleter GoToDefinitionElseDeclaration<CR>
""let g:ycm_autoclose_preview_window_after_completion=1

set pastetoggle=<F2>
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
