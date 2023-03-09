:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:hi MsgArea guifg=#44fcfc

" NOTE: more plugins are installed using Packer, check CWD/lua/plugins.lua
call plug#begin()
Plug 'https://github.com/tpope/vim-surround' " vim shortcuts for surrounding text with quotes, etc..
Plug 'vim-airline/vim-airline'  " vim statusbar
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-tree/nvim-web-devicons' " icons for directory tree
Plug 'nvim-tree/nvim-tree.lua'	" directory tree
" Plug 'https://github.com/glepnir/dashboard-nvim' " dashboard, here bc Packer has trouble updating plugin? 
Plug 'mhinz/vim-startify'  " start screen, works with dashboard 
Plug 'https://github.com/tpope/vim-commentary' " code comments
Plug 'https://github.com/ap/vim-css-color' " preview css color while editting
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " syntax highting
Plug 'sheerun/vim-polyglot'  " language packages for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}	" autocompletion
Plug 'https://github.com/preservim/tagbar'  " file structure preview, scopes methods within namespaces
Plug 'romgrk/barbar.nvim'  " tab bars for navigating between files
Plug 'mg979/vim-visual-multi', {'branch': 'master'}  " multi line cursor edit
Plug 'dkarter/bullets.vim'  " for automating numbered list generating in files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fuzzy finder for vim, search in files and entire dirs
Plug 'junegunn/fzf.vim'
Plug 'Mofiqul/dracula.nvim'  " theme for nvim
Plug 'dense-analysis/ale'  " linting for nvim
Plug 'https://github.com/tpope/vim-fugitive' " git plugin
call plug#end()


" airline settings
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" airline theme
let g:airline_theme='onedark'

" airline git integration
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1

" highlighting theme settings
syntax enable
colorscheme dracula

if (has("termguicolors"))
  set termguicolors
endif 

" bulletes.vim settings
let g:bullets_enabled_file_types = [
    \ 'markdown',
    \ 'text',
    \ 'gitcommit',
    \ 'scratch'
    \]


" fzf settings
nnoremap <silent> <C-e> :Files<CR>
nnoremap <silent> <C-A-f> :Rg<CR>
nnoremap <C-f> /
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

" barbar settings
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
nnoremap <silent>    <A-w> <Cmd>BufferClose<CR>

" startify settings
nnoremap <A-s> <Cmd>SSave<CR>
let g:startify_session_persistence=1
let g:startify_session_autoload=1

let g:startify_lists = [
  \ { 'type': 'commands',  'header': ['   Commands']       },
  \ { 'type': 'sessions',  'header': ['   Sessions']       },
  \ { 'type': 'files',     'header': ['   MRU']            }
  \ ]

let g:startify_commands = [
\ ['Vim Reference', 'h ref'],
\ ['Find Files By Path', ':Files'],
\ ['Find Files By Content', ':Rg'],
\ ]

let g:startify_custom_header = startify#center([
  \'                 ▄████████▄         ',
  \'               ▄█▀▒▒▒▒▒▒▒▀██▄       ',
  \'           ▄█▀▒▒▒▒▒▒▄▒▒▒▒▒▒▐█▌      ',
  \'         ▄█▒▒▒▒▒▒▒▒▒▒▀█▒▒▒▄██       ',
  \'       ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▀▒▒▒█▄     ',
  \'     ▄█▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒█▄   ',
  \'     ▄█▒▒▒▄██████▄▒▒▒▒▄█████▄▒▒▒▒█  ',
  \'     █▒▒▒█▀░░░░░▀█ ▒▒▒█▀░░░░▀█▒▒▒█  ',
  \'     █▒▒▒█░░▄░░░░▀████▀░░░▄░░█▒▒▒█  ',
  \'   ▄███▄▒█▄░▐▀▄░░░░░░░░░▄▀▌░▄█▒▒███▄',
  \'   █▀░░█▄▒█░▐▐▀▀▄▄▄ ▄▄▄▀▀▌▌░█▒▒█░░▀█',
  \'   █░░░░█▒█░▐▐  ▄▄ █ ▄▄  ▌▌░█▒█░░░░█',
  \'   █░▄░░█▒█░▐▐▄ ▀▀ █ ▀▀ ▄▌▌░█▒█░░▄░█',
  \'   █░░█░█▒█░░▌▄█▄▄▀ ▀▄▄█▄▐░░█▒█░█░░█',
  \'   █▄░█████████▀░░▀▄▀░░▀█████████░▄█',
  \'   ██▀░░▄▀░░▀░░▀▄░░░▄▀░░▀░░▀▄░░▀██  ',
  \'   ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██',
  \'   █░▄░░░░░░░░░░░░░░░░░░░░░░░░░░░▄░█',
  \'   █░▀█▄░░░░░░░░░░░░░░░░░░░░░░░▄█▀░█',
  \'   █░░█▀███████████████████████▀█░░█',
  \'   █░░█    █   █   █   █   █    █░░█',
  \'   █░░░▀█▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄▄█▄▄█▀░░░█',
  \'   ▀█░░▀█▄█    █   █   █   █▄█▀░░░█▀  ',
  \'    ▀█░░░▀▀█▄▄ █   █   █▄▄█▀▀░░░░█▀  ',
  \'     ▀█░░░░░▀▀█████████▀▀░░░░░░█▀    ',
  \'      ▀█░░░░░░░▄░░░░░░░▄░░░░░░█▀    ',
  \'        ▀██▄░░░▀▀▀▀▀▀▀▀▀░░░▄██▀      ',
  \'          ▀██▄▄░░░░░░░▄▄██▀        ',
  \'             ▀▀███████▀▀            ',
\])

" lua require('plugins')
:lua require('init')
