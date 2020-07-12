" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

set wildignore+=*.pyc,*/env/*

call plug#begin('~/.vim/bundle')
Plug 'mohd-3/lightline.vim'
Plug 'wakatime/vim-wakatime'
Plug 'sickill/vim-monokai'
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'majutsushi/tagbar'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-eunuch'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jmcantrell/vim-virtualenv'
Plug 'mohd-3/python-syntax.vim'
Plug 'tomtom/tcomment_vim'
Plug 'preservim/nerdtree'
" Plug 'cohlin/vim-colorschemes'
Plug 'Vimjas/vim-python-pep8-indent'
call plug#end()

if $TERM == "xterm-256color"
    set t_Co=256
endif

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['yapf', 'isort']
\}

let g:ale_linters = { 
\   'python': ['pyls'],
\}

let g:ale_set_highlights = 0
syntax enable
set background=dark
colorscheme monokai
set clipboard=unnamedplus
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set noswapfile
set nobackup
set nowritebackup
set nowb
set backspace=indent,eol,start
set nomodeline
set number relativenumber
set showcmd
set laststatus=2
set updatetime=100
set wildmenu
set showmatch
set colorcolumn=80
set incsearch
set hlsearch
set ignorecase
set smartcase
set splitbelow
set splitright
set winminheight=0
set winminwidth=0


hi ColorColumn ctermbg=236 guibg=grey19
hi signcolumn ctermbg=235 guibg=grey17

let mapleader=","


nnoremap <silent> <leader>t :TagbarToggle<CR>
nnoremap <silent> <leader>u :UndotreeToggle<CR>
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nnoremap <silent> <leader>d :ALEGoToDefinition<CR>
nnoremap <silent> <leader>r :ALEFindReferences<CR>
nnoremap <silent> <leader>en :ALENext<CR>
nnoremap <silent> <leader>ef :ALEFix<CR>
nnoremap j gj
nnoremap k gk

nnoremap <silent> <leader>n :NERDTreeToggle<CR>
nnoremap B ^
nnoremap E $
nnoremap Y y$
inoremap jk <Esc>
nnoremap <silent> <leader>a :ZoomToggle<CR>

let @m = 'iclass (models.Model):jkbbbbbi'
let @v = 'iclass (APIView):jkbbbi'


function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
if has('persistent_undo')
    let path_to_undodir = expand('~/.vim/undo_dir/')
    if !isdirectory(path_to_undodir)
        silent call system('mkdir -p ' . path_to_undodir)
    endif
    let &undodir = path_to_undodir
    set undofile
endif


