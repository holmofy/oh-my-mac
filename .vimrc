syntax enable                        " enable syntax processing. to see /usr/share/vim/vim82/syntax
syntax on                            " overrule my setting with the defaults
filetype on                          " enable file type detection
filetype plugin on                   " enable loading the plugin files for specific file types

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
set wildmenu                         " visual autocomplete for command menu
set lazyredraw                       " redraw only when we need to.

set foldmethod=syntax                " syntax highlighting items specify folds
set nofoldenable                     " all folds are open

"""""""""
"key map"
"""""""""


"""""""""
"plugins"
"""""""""
" Specify a directory for plugins
call plug#begin('~/.vim/bundle')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI
" color theme
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
" file icon
Plug 'ryanoasis/vim-devicons'
    " adding the flags to NERDTree
    let g:webdevicons_enable_nerdtree = 1
    " whether or not to show the nerdtree brackets around flags
    let g:webdevicons_conceal_nerdtree_brackets = 1
" lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"    let g:airline_theme = 'simple'
    let g:airline_theme='onedark'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'default'
" A Vim plugin for visually displaying indent levels in code
Plug 'nathanaelkane/vim-indent-guides'
" A vim plugin to display the indention levels with thin vertical lines
" Plug 'Yggdroot/indentLine'
"         let g:indentLine_char_list = ['¦', '┆', '┊']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git
" A Git wrapper so awesome, it should be illegal, That's why it's called Fugitive.
Plug 'tpope/vim-fugitive'
" A Vim plugin which shows a git diff in the 'gutter' 
Plug 'airblade/vim-gitgutter'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fuzzy
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
" An efficient fuzzy finder that helps to locate files, buffers, mrus, gtags, etc. on the fly for both vim and neovim.
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
    let g:Lf_ShortcutF = '<C-P>'
    let g:Lf_WindowPosition = 'popup'
    let g:Lf_PreviewInPopup = 1
    let g:Lf_ShortcutF = "<leader>ff"
    noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
    noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
    noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
    noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

    noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
    noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
    " search visually selected text literally
    xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
    noremap go :<C-U>Leaderf! rg --recall<CR>

    " should use `Leaderf gtags --update` first
    let g:Lf_GtagsAutoGenerate = 0
    let g:Lf_Gtagslabel = 'native-pygments'
    noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
    noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
    noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
    noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
    noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""
" completion and snippet
" languge server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" snippet engine
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" html edit utility
Plug 'mattn/emmet-vim',{'for':['html','jsx','react','vue','css','less','scss','sass']}
    let g:user_emmet_mode='n'            "only enable normal mode functions.
" comment
Plug 'preservim/nerdcommenter'

"""""""""""""""""""""""""""""""""""""""""""""""""
" syntax highlight and checher
" A solid language pack for Vim.
Plug 'sheerun/vim-polyglot'
" Asynchronous Lint Engine
Plug 'dense-analysis/ale'
    let g:ale_linters = {
        \   'javascript': ['eslint'],
        \}
    
""""""""""""""""""""""""""""""""""""""""""""""""
" code formatter
"Plug 'Chiel92/vim-autoformat'
Plug 'sbdchd/neoformat'


""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
" file system explorer plugin for the Vim editor
Plug 'scrooloose/nerdtree'
    " Start NERDTree when Vim starts with a directory argument.
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
        \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
    " Open the existing NERDTree on each new tab.
    autocmd BufWinEnter * silent NERDTreeMirror
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
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

""""""""""""""""""""""""""""""""""""""""""""""
" etc
" Defaults everyone can agree on
Plug 'tpope/vim-sensible'
" Run Async Shell Commands in Vim 8.0
Plug 'skywind3000/asyncrun.vim'
    let g:asyncrun_open = 8
    let g:asyncrun_encs = 'utf-8'
" format engine
" Vim motion on speed!
Plug 'easymotion/vim-easymotion'
" Multiple cursors plugin for vim/neovim
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Instant Markdown previews from Vim
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'}

" The fancy start screen for Vim.
Plug 'mhinz/vim-startify'

" Vim plugin that shows keybindings in popup
Plug 'liuchengxu/vim-which-key'
    let g:mapleader = "\<Space>"
    let g:maplocalleader = ','
    nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
    nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

call plug#end()

" Theme needs to be set after plugin installation
colorscheme onedark                  " color theme. to see /usr/share/vim/vim80/colors
set background=dark                  " light background color
