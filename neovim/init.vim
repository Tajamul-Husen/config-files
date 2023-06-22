"====================================== PLUGINS =======================================
call plug#begin()
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'preservim/nerdtree' " NerdTree
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'voldikss/vim-floaterm' " floating terminal
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'  " autocomplete bracket pairs
Plug 'vim-scripts/ReplaceWithRegister' "replace text
Plug 'jdhao/better-escape.vim' "handle escaping remapping
call plug#end()

"==================================== INSTALLATION NOTES ======================================
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE


"==================================== leader key ======================================
let g:mapleader = "\<Space>"

" =================================== nerd tree ======================================
nnoremap <Leader>nf :NERDTreeFocus<CR>
nnoremap <Leader>nn :NERDTree<CR>
nnoremap <Leader>nt :NERDTreeToggle<CR>
nnoremap <Leader>nd :call CocActionAsync('jumpDefinition')<CR>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" New Tab : s "
" Navigate Left Tab : space + l "
" Navigate Right Tab : space + h "


"==========================================================================================
"================================== VIM FLOAT TERMINAL ====================================
"==========================================================================================

let g:floaterm_keymap_new = '<Leader>fn'
let g:floaterm_keymap_toggle = '<Leader>ft'
let g:floaterm_keymap_kill = '<Leader>fk'
let g:floaterm_keymap_prev   = '<Leader>fh'
let g:floaterm_keymap_next   = '<Leader>fl'
let g:floaterm_wintype = 'float' "float/split/vsplit

" tagbar for functions and variables info
nmap <F8> :TagbarToggle<CR>
"set completeopt-=preview " For No Previews

" coc tab selection
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" ===================================== air-line =============================================
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = ''
" let g:airline_symbols.maxlinenr = '☰'
" let g:airline_symbols.dirty='⚡'
" let g:airline_symbols.colnr = ' c:'
" let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0
" let g:webdevicons_enable_airline_statusline=0


"=================================== multiple cursor =========================================
let g:multi_cursor_use_default_mapping = 0
let g:multi_cursor_start_word_key      = '<Leader>m'
let g:multi_cursor_select_all_word_key = '<Leader>am'
let g:multi_cursor_start_key           = '<Leader>gm'
let g:multi_cursor_select_all_key      = '<Leader>gam'
let g:multi_cursor_next_key            = '<Leader>m'
let g:multi_cursor_prev_key            = '<Leader>b'
let g:multi_cursor_skip_key            = '<Leader>x'
let g:multi_cursor_quit_key            = '<Esc>'

"=================================== formatting code ========================================
noremap <F3> :Autoformat<CR>
" format line "
noremap <F4> :Autoformat<CR>
" format erorr messages "
let g:autoformat_verbosemode=1
" format upon save "
" au BufWrite * :Autoformat


" ==================================== Remappings ============================================
" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" Better tabbing
vnoremap < <gv
vnoremap > >gv
" Better tab navigation
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
" for escaping
tnoremap <Esc> <C-\><C-n>
" delete without yanking "
nnoremap <Leader>d "_d
xnoremap <Leader>d "_d
xnoremap <Leader>p "_dP
" clear search highlight "
nnoremap <C-n> :noh<return>
" visual block mode (vertical)
nnoremap <Leader>v <C-v>
" ctrl + backspace maps to alt + backspace
inoremap <M-BS> <C-w>
" esc mapping "
inoremap jk <Esc>
inoremap kj <Esc>


"==========================================================================================
"===================================== SETTINGS ===========================================
"==========================================================================================
set encoding=utf-8
set number
" set relativenumber
set autoindent
set tabstop=3
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=""                                " set mouse="",a - toggle mouse
syntax enable                               " Enables syntax highlighing
set hidden                                  " Required to keep multiple buffers open multiple buffers
set nowrap                                  " Display long lines as just one line
set noerrorbells
set visualbell
set clipboard=unnamedplus                   " Copy paste between vim and everything else
set nobackup                                " This is recommended by coc
set nowritebackup                           " This is recommended by coc
set ruler									" Show the cursor position all the time
set noswapfile                              " doesn't create swap files
set background=dark
set t_Co=256
set showmatch                               " highlights matching brackets
set incsearch                               " search as characters are entered
set hlsearch                                " highlights matching searches
set nowrap
set wildmenu
set wildmode=longest:list,full
set splitbelow                              " Horizontal splits will automatically be below
set splitright                              " Vertical splits will automatically be to the right
set backspace=indent,eol,start
set guicursor=i:ver25-iCursor               " cursor setting"
set nocompatible                            " Disable compatibility with vi which can cause unexpected issues.
filetype on                                 " Enable type file detection. Vim will be able to try to detect the type of file in use.
colorscheme jellybeans
" set cursorline                              " Highlight cursor line underneath the cursor horizontally.
" set cursorcolumn                            " Highlight cursor line underneath the cursor vertically.


if has('termguicolors')
	set termguicolors                       " enable true colors support
endif


" Set floating window border line color to cyan, and background to orange"
hi Comment cterm=bold gui=bold
hi FloatermBorder guibg=black guifg=orange
