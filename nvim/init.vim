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
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'NoahTheDuke/vim-just'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'mbbill/undotree'

"Attempting LSP
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'

Plug 'VonHeikemen/lsp-zero.nvim', {'branch': 'v3.x'}

call plug#end()

" Theme
colorscheme OceanicNext

" NERDTREE config
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" NERDCommenter config
let NERDSpaceDelims=1
 
lua require('init')

