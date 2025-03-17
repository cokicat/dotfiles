" Source default config
source $VIMRUNTIME/defaults.vim

" Appearance
set nowrap
set number
set showmatch
set laststatus=2

" Syntax
syntax on
filetype on

" Indent
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4

" Search
set ignorecase
set smartcase
set hlsearch
set history=1000

" Backup
set backup
set backupdir=~/.vim/backups

" Use Tab or Shift-Tab for word completion
inoremap <expr> <Tab> col('.') > 1 && getline('.')[col('.')-2] =~ '\k' ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> col('.') > 1 && getline('.')[col('.')-2] =~ '\k' ? "\<C-p>" : "\<Tab>"
