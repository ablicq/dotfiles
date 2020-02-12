"             _           
"  _ ____   _(_)_ __ ___  
" | '_ \ \ / / | '_ ` _ \ 
" | | | \ V /| | | | | | |
" |_| |_|\_/ |_|_| |_| |_|
"
" neovim configuration file
" author: Aurélien Blicq

" map leader to ,
let mapleader = ","

""""""""""""""""""""""""""""""""""""""""""""
"	PLUGINS
""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
    " coc for autocomplete and more
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "" LanguageServer client for NeoVim.
    "Plug 'autozimu/LanguageClient-neovim', {
    "  \ 'branch': 'next',
    "  \ 'do': 'bash install.sh',
    "  \ }   
    " based on ultisnips
    Plug 'SirVer/ultisnips'

    " auto close parens, brackets, quotes, ...
    Plug 'jiangmiao/auto-pairs'
    
    " Tree view of files
    Plug 'scrooloose/nerdTree'

    " toggle comments
    Plug 'scrooloose/nerdcommenter'

    " Linter
    "Plug 'w0rp/ale'
    
    " airline + theming
    Plug 'chriskempson/base16-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'noah/vim256-color'
    

    " Formater
    Plug 'Chiel92/vim-autoformat'

    " highlight just yanked text
    Plug 'machakann/vim-highlightedyank'

    " fuzzy finder
    Plug 'junegunn/fzf'

    Plug 'kovetskiy/sxhkd-vim'

    Plug 'ap/vim-css-color'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""
"	GENERAL CONFIG
""""""""""""""""""""""""""""""""""""""""""""

syntax on
syntax enable

filetype plugin on
set omnifunc=syntaxcomplete#Complete

" colorscheme
let base16colorspace=256
set background=dark
colorscheme molokai

" better wildmenu
set wildmode=list:longest,full

" line numbers
set number
set relativenumber

" misc options
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

" Tab and Indent configuration
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" highlight current line
set cursorline

" writes/reads automatically at each buffer change
set autowrite
set autoread

" show hidden characters
set list listchars=tab:▸\ ,eol:¬,trail:·,precedes:←,extends:→,nbsp:␣

" better vertical movement for long lines
nnoremap j gj
nnoremap k gk

" Share global clipboard
set clipboard=unnamed

" always indent
set autoindent

" undo after closing end reopening file
set undofile
set undodir=/tmp

" bigger srooll jumps
set scrolljump=-15

" switch tabs easily
nnoremap <Left> :tabprevious<CR>
nnoremap <Right> :tabnext<CR>

" Make the 81st column stand out
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" formatoptions -> see documentation
set formatoptions=qronj1

" sort selected lines in alphabetical order
vnoremap <leader>s :'<,'>!sort -f<CR>

""""""""""""""""""""""""""""""""""""""""""""
"   PLUGINS CONFIG
""""""""""""""""""""""""""""""""""""""""""""

""" Ale
"let g:ale_echo_msg_error_str = 'E'
"let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"let g:ale_linters = {
"            \'python': ['pyls'],
"            \'sh': ['language_server']
"            \}

"" disable linting by vim-lsp plugin
""let g:lsp_diagnostics_enabled = 0
"let g:LanguageClient_serverCommands={
"            \'python': ['pyls'],
"            \'sh': ['bash-language-server', 'start']
"            \}

"" diagnostics display
"let g:ale_set_highlights = 0
"let g:ale_virtualtext_cursor = 1

"" Only run ale on save
"let g:ale_lint_on_enter = 1
"let g:ale_lint_on_save = 1 
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_insert_leave = 0

""" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_seti'
let g:airline_left_sep  = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'

""" Auto pairs
" let g:AutoPairsFlyMode = 1

""" Nerd Commenter
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

""" NCM2
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

""" UltiSnips
" c-j c-k for moving in snippet
" let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0

"""""""""""""""""""""""""""""""""""""""""""
"	KEY BINDINGS
"""""""""""""""""""""""""""""""""""""""""""

" use ctrl+n to toggle nerdtree
nmap <C-n> :NERDTreeToggle<CR>

" vim-autoformat
noremap <leader>a :Autoformat<CR>

nnoremap <leader><space> :nohlsearch<cr>

if executable('fzf')
    " launch fuzzy finding
    nnoremap <C-p> :FZF
endif

" make stuff
nnoremap <leader>m :let &makeprg=""<left>
nnoremap <leader>b :make<CR>

