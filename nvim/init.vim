" Default Vim variables
set number
set tabstop=8
set shiftwidth=8
set expandtab
set termguicolors
set colorcolumn=90

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'dyng/ctrlsf.vim'
Plug 'mhartington/oceanic-next'
Plug 'fcpg/vim-fahrenheit'
Plug 'adigitoleo/vim-mellow', { 'tag': '*' }
Plug 'morhetz/gruvbox'
Plug 'NoahTheDuke/vim-just'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'NLKNguyen/papercolor-theme'
Plug 'nightsense/carbonized'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }

call plug#end()
 
" Theme
syntax enable
colorscheme OceanicNext
" transparent bg
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
" For Vim<8, replace EndOfBuffer by NonText
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE

" NERDTREE config
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" NERDCommenter config
let NERDSpaceDelims=1
 
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

map tn :tabnew

map ff :Telescope find_files
map fg :Telescope live_grep
map fb :Telescope buffers
map fh :Telescope help_tags

