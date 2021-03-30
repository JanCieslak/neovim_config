" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    
    " Fuzzy search
    Plug 'junegunn/fzf', { 'dir': '~/fzf', 'do': './install -all' }
    Plug 'junegunn/fzf.vim'
    
    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'
    Plug 'ryanoasis/vim-devicons'

    " Stable version of coc
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Keeping up to date with master
    " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
   
    " intellisense
    "Plug 'oblitum/youcompleteme'
    "Plug 'rust-lang/rust.vim'

    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/completion-nvim'
    Plug 'nvim-lua/diagnostic-nvim'
    "Plug 'neovim/nvim-lsp'

    " snippets
    Plug 'honza/vim-snippets'

    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Terminal
    Plug 'voldikss/vim-floaterm'

    " NERD commenter
    Plug 'preservim/nerdcommenter'

    " Which key
    " Plug 'liuchengxu/vim-which-key'

call plug#end()
