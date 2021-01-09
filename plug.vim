
call plug#begin('~/.local/share/nvim/plugged')

Plug 'udalov/kotlin-vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
Plug 'https://github.com/preservim/nerdtree'
" ^b to init
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
" command or ^p
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'jparise/vim-graphql'
Plug 'https://github.com/pangloss/vim-javascript.git'
" Plug 'zxqfl/tabnine-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ap/vim-css-color'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'w0ng/vim-hybrid'
"Plug 'rainglow/vim'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'hardcoreplayers/oceanic-material'
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'glepnir/galaxyline.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'drewtempelmeyer/palenight.vim'

Plug 'wadackel/vim-dogrun'
Plug 'jacoborus/tender.vim'
Plug 'ghifarit53/tokyonight-vim'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

Plug 'jcherven/jummidark.vim'
Plug 'relastle/bluewery.vim'
Plug 'eemed/sitruuna.vim'
Plug 'artanikin/vim-synthwave84'
Plug 'arzg/vim-colors-xcode'
Plug 'Rigellute/rigel'
Plug 'sainnhe/sonokai'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'morgsmccauley/vim-react-native-snippets'
Plug 'mxw/vim-jsx'

Plug 'preservim/nerdcommenter'
Plug 'neomake/neomake'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim' " Code Jumpto and definition/documentation


" Auto resize
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

Plug 'ChristianChiarulli/codi.vim'

Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

Plug 'junegunn/vim-easy-align'

Plug 'tpope/vim-dadbod'

call plug#end()

