:set number
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a

call plug#begin()
Plug 'https://github.com/tpope/vim-surround' " vim shortcuts for surrounding text with quotes, etc..
Plug 'vim-airline/vim-airline'  " vim statusbar
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-tree/nvim-web-devicons' " icons for directory tree
Plug 'nvim-tree/nvim-tree.lua'	" directory tree
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

" dashboard settings
" let g:dashboard_default_executive = 'fzf'
" :lua require('dashboard-nvim-configs')

" fzf settings
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-f> :Rg<CR>
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)


" nvim-tree settings
" :lua require('nvim-tree-configs')


" lua require('plugins')
:lua require('init')
