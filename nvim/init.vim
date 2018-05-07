call plug#begin('~/.vim/plugged')
	Plug 'dracula/vim',{'as':'dracula'}
	Plug 'dhruvasagar/vim-table-mode'
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	let g:deoplete#enable_at_startup = 1
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'lervag/vimtex'
	Plug 'neomake/neomake'
	Plug 'junegunn/goyo.vim'
call plug#end()

set background=dark
colorscheme palenight
set number
set relativenumber
filetype plugin indent on
set autoindent 
set tabstop=4
set shiftwidth=4
set expandtab
set ai

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
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

"Split
set splitbelow
set splitright

" Replace all is now S
nnoremap S :%s//g<Left><Left>

" Open corresponding pdf
map <leader>p :!mupdf <c-r>%<backspace><backspace><backspace>pdf &<CR><CR>

" Autocompletion
"set wildmode=longest,list,full
"set wildmenu

inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
autocmd FileType tex,latex inoremap $ $$<Esc>i
autocmd FileType tex,latex inoremap $$ $$$$<Esc>hi
