syntax enable                        " enable syntax processing. to see /usr/share/vim/vim80/syntax
syntax on                            " overrule my setting with the defaults

" for tmux pane active/inactive
highlight Normal ctermbg=none guibg=none

set encoding=UTF-8                   " vim encoding
set tabstop=4                        " number of visual spaces per TAB
set softtabstop=4                    " number of spaces in tab when editing
set shiftwidth=4                     " number of spaces to use for each step of autoindent
set expandtab                        " tabs are spaces

set number                           " show line numbers
set showcmd                          " show command in bottom bar
set hlsearch                         " highlight search result
set ruler                            " show line and column number
set laststatus=2                     " status line always(2),never(0),default(1)
set cursorline                       " highlight current line
"set cursorcolumn                     " highlight current column
set wildmenu                         " visual autocomplete for command menu
set lazyredraw                       " redraw only when we need to.

set foldmethod=syntax                " syntax highlighting items specify folds
set nofoldenable                     " all folds are open

filetype on                          " enable file type detection

"""""""""
"plugins"
"""""""""
set rtp+=~/.vim/bundle/Vundle.vim    " runtime path add Vundle Plugin Manager
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'        " let Vundle manage Vundle
Plugin 'tomasr/molokai'              " color theme
Plugin 'tpope/vim-sensible'          " Defaults everyone can agree on
Plugin 'scrooloose/nerdtree'         " file system explorer plugin for the Vim editor
Plugin 'itchyny/lightline.vim'       " Light Status Line
Plugin 'airblade/vim-gitgutter'      " A Vim plugin which shows a git diff in the 'gutter' 
Plugin 'majutsushi/tagbar'           " Vim plugin that displays tags in a window, ordered by scope 
Plugin 'skywind3000/asyncrun.vim'    " Run Async Shell Commands in Vim 8.0
    let g:asyncrun_open = 8
    let g:asyncrun_encs = 'utf-8'
Plugin 'mattn/emmet-vim'             " emmet for vim
    let g:user_emmet_mode='n'            "only enable normal mode functions.
    " Enable just for html/css
    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
Plugin 'jistr/vim-nerdtree-tabs'     " making NERDTree feel like a true panel, independent of tabs.
Plugin 'Xuyuanp/nerdtree-git-plugin' " A plugin of NERDTree showing git status
    let g:NERDTreeGitStatusIndicatorMapCustom = {
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎ ",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
        \ }
Plugin 'Chiel92/vim-autoformat'      " Provide easy code formatting in Vim by integrating existing code formatters.
Plugin 'Yggdroot/indentLine'         " A vim plugin to display the indention levels with thin vertical lines
call vundle#end()

" Theme needs to be set after plugin installation
colorscheme molokai                  " color theme. to see /usr/share/vim/vim80/colors
set background=dark                  " light background color
