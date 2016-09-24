set encoding=utf-8
set relativenumber
set number
set laststatus=2
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
autocmd FileType python set tabstop=4
set colorcolumn=+1
set cursorline              " highlight current line
set ignorecase
set smartcase
set showmatch
set hlsearch
set gdefault
set virtualedit=all

" colors
colorscheme molokai
set t_Co=256
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:airline_powerline_fonts = 1

inoremap <c-a> <esc>I
inoremap <c-e> <esc>A

" Return to the previously selected line in the file
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ execute 'normal! g`"zvzz' |
        \ endif
augroup END

" remove seach-highlights when pressing ,+<space>
let mapleader=","
noremap <leader><space> :noh<cr>: call clearmatches()<cr>

" Buffers, Backup & Co
set undodir=~/.vim/tmp/undo//
set backupdir=~/.vim/tmp/backup//
set directory=~/.vim/tmp/swap//
set backup
set noswapfile
set ruler
set history=10000
set undofile
set undoreload=10000
set title
set autoindent
set autoread
set lazyredraw
set mouse=a
" reload .vimrc on saving
au BufWritePost .vimrc so ~/.vimrc

" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
syntax on

let g:C_UseTool_cmake   = 'yes' 
let g:C_UseTool_doxygen = 'yes' 
let g:snipMate = get(g:, 'snipMate', {}) " Allow for vimrc re-sourcing
let g:snipMate.scope_aliases = {}
let g:airline#extensions#tabline#enabled = 1 "tampilkan tabline pada bagian atas
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:bufferline_echo = 0
autocmd VimEnter *
  \ let &statusline='%{bufferline#refresh_status()}'
   \ .bufferline#get_status_string()
   
autocmd InsertEnter * :set number
autocmd InsertLeave * :set number
    
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
" disable arrow key in insert mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" end
"inoremap  <Up>     <NOP>
"inoremap  <Down>   <NOP>
"inoremap  <Left>   <NOP>
"inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

let g:togglecursor_insert = 'underline'
