call pathogen#infect()
filetype plugin indent on
call pathogen#helptags()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
set nocompatible              " be iMproved, required
filetype off                  " required

"syntastic settings begin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"syntastic settings end


"start commands withtatus line to something usefulone ; stroke instead of ;+shift
nnoremap ; :
nnoremap q; q:
syntax enable
set termguicolors
set background=dark
set nocompatible
set nobackup
set nowritebackup
set noswapfile
set cursorline
set showmatch "when your cursor moves over a parenthesis-like character, the matching one will be highlighted as well
set history=100
set ruler ""always show cursor
set showcmd ""show incomplete commands
set hidden ""make sure undo history is kept for files in buffer.
filetype plugin on
colorscheme gruvbox
set modifiable
"ctrl p settings
set runtimepath^=~/.vim/bundle/ctrlp.vim
map <leader>y :CtrlPBuffer<cr>
map <leader>' :NERDTreeToggle
"ctrl p settings
"syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']
"syntastic ended

filetype plugin indent on    " required
let g:jsx_ext_required = 0
syntax on
set t_Co=256
let g:javascript_plugin_jsdoc = 1
let g:jsx_ext_required = 0
set wildmenu
set relativenumber
set number
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
vnoremap . :normal .<cr>
set hlsearch
set paste
set ignorecase
set smartcase
set incsearch
set autoindent
set colorcolumn=80
set ruler
set tabstop=2
set expandtab
set shiftwidth=2
" highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·
" get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100
" always show status bar
set laststatus=2
au VimEnter * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'
au VimLeave * !xmodmap -e 'clear Lock' -e 'keycode 0x42 = Caps_Lock'
"secally by visual line
nnoremap j gj
nnoremap k gk
"set the status line to something useful
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" hide the toolbar
set guioptions-=T

" utf encoding
set encoding=utf-8

" autoload files that have changed outside of vim
set autoread

" jump to last cursor
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif
set undofile " Maintain undo history between sessions.
set undodir=~/.vim/undodir " Dir for undo history.
set linebreak " Wrap lines at better places
" set-up ctrlp to include hidden files in its search
let g:ctrlp_show_hidden=1
" disable ctrlp's feature where it tries to intelligently work out the current
" working directory to search within
let g:ctrlp_working_path_mode=0

" don't let ctrlp take over the screen!
let g:ctrlp_max_height=30

" remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e
set wildmode=list:longest
