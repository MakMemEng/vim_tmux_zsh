set shell=/bin/zsh      # Commandの際にzshを使用
set shiftwidth=4        # Indentの幅
set tabstop=4           # Tabに変換されるsize
set expandtab           # Tabの入力の際にスペース
set textwidth=0         # ワードラッピング無し
set autoindent          # 自動Indent  :set pasteで解除可能
set hlsearch            # Searchのhighlight
set clipboard=unnamed   # クリップボードへの登録
set number              # 行番号を追加
syntax on               # SyntaxをEnable

call plug#begin()
Plug 'ntk148v/vim-horizon'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'sheerun/vim-polyglot'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" vim-gitgutter Settings
let g:gitgutter_highlight_lines = 1

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" nnoremap <C-n> :NERDTree<CR>

if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
endif