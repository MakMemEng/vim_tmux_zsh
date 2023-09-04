-   ~/.zshrc
-   ~/.zshrc.pre-oh-my-zsh
-   ~/.config/nvim/init.vim
-   ~/.local/share/nvim/plugged
-   ~/.tmux.conf

# Zsh Install

-   `zsh --version`
-   `echo $SHELL`
-   `cat /etc/shells`
-   `sudo apt update && apt upgrade -y`
-   `sudo apt-get install zsh -y`
-   `chsh -s /bin/zsh`
-   `where zsh`

# Vim/NeoVim Command

### 移動 Command

-   `h` (左) `j` (下) `k` (上) `l` (右)
-   `:set number`: 行番号を表示
-   `:10`: 10 行目に移動
-   `0`: 先頭に移動
-   `$`: 行末に移動
-   `^`: インデントの先頭に移動
-   `{`: 段落ごとに上に移動
-   `}`: 段落ごとに下に移動
-   `[[`: セクションごとに上に移動
-   `]]`: セクションごとに下に移動
-   `:1` or `gg`: ファイルの先頭に移動
-   `G`: ファイルの最後に移動
-   `Ctrl + o`: 移動前に戻る

### 文字挿入

-   `i`: テキストのタイプ <ESC> カーソル位置に追加
-   `A`: テキストの追加 <ESC> 行末に追加
-   `o`: カーソルの下の行を開けて挿入モード
-   `O`: カーソルの上の行で挿入モード
-   `J`: 行の連結

### 削除

-   `x`: カーソルの下の文字を削除
-   `dw`: カーソル位置から次の単語までを削除
-   `de`: カーソル位置から単語の末尾までを削除
-   `d$`: カーソル位置から行の末尾までを削除
-   `dd`: 行全体を削除
-   `2dd`: 2 行削除

### Copy & Paste

-   `y`: テキストを yank(コピー)
-   `yy`: 一行コピー
-   `2yy`: 2 行コピー
-   `p`: 下にペースト
-   `P`: 現在行にペースト

### 検索

-   `/[文字列]`: 後方(下方向)に検索をかける, Enter で文字列を確定
-   `?[文字列]`: 前方(上方向)に検索をかける, Enter で文字列を確定
-   `*`: カーソル位置の単語を文字列を下方向に検索
-   `#`: カーソル位置の単語を文字列を上方向に検索
-   `g*`: カーソル位置の単語を含む文字列を,下方向に検索する
-   `g#`: カーソル位置の単語を含む文字列を, 上方向に検索する
-   `n`: 検索を行った後、順方向に次の検索結果に移動する。
-   `N`: 検索を行った後、逆方向に次の検索結果に移動する。
-   `\/etc\/php5`: 「`/etc/php5/`」という文字列を検索する
    -   「/」(スラッシュ)など特殊な意味を持つ文字列を検索
    -   その前にバックスラッシュ「\」を付けて検索

### 置換

-   `:%s/search/replace/g`: `search`を`replace`へ一括置換
-   `:%s/search/replace/gc`: 一つずつ確認しながら置換
-   `:%s;{置換前文字列};{置換後文字列};g`: 特殊文字を含む場合

### 取り消し

-   `u`: 前回の動作を取り消す(Undo)
-   `U`: 行全体の変更を取り消す
-   `Ctrl + R`: 取り消しの取り消し(Undo redo)

### 繰り返し

-   `.`: 直前のコマンドを再度実行
-   `2w`: モーションを繰り返すには数値を付与します

### Terminal Command(Normal Mode)

-   `:!python test.py`で Vim 上からコマンドを実行
-   `:!!`直前のコマンドを再度実行

# Vim Plugin managers

## vim plug

    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim \ --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

-   `:PlugStatus`
-   `:PlugInstall`
-   `:PlugUpdate`
-   `:PlugUpgrade`

### Vim horizon

### NERDTree

### fzf

### Vim-fugitive

### Vim-gitgutter

### Vim-commentary

### vim-polyglot

### coc.nvim

### Vim-go

# Tmux Command

-   `Ctrl + g d`: デタッチ
-   `tmux ls`: セッション一覧
-   `tmux a -t セッション名`: アタッチ
-   `tmux kill-server`: tmux の Shutdown
-   `Ctrl + g \`: 横(左右)に分割
-   `Ctrl + g -`: 縦(上下)に分割
-   `Ctrl + g x` or `Ctrl + g d`: Pane 破棄
-   `Ctrl + g z`: Pane 拡大/縮小
-   `Ctrl + g o`: 次の Pane に移動

-   `Ctrl + g c`: 新規 Window
-   `Ctrl + g n`: 次の Window
-   `Ctrl + g ,`: Window 名変更
-   `Ctrl + g [`->`移動(jklh)`->`y`->`enter`->`Cmd + v`: Copy & Paste
-   `Ctrl + g `:
-   `Ctrl + g `:
-   `Ctrl + g `:

# Zsh Command

-   `!(Command)`: 直近の Command 実行
-   `!source`: ex) `source ~/.zshrc`
-   `!!`: 直前のコマンドを実行
-   `Ctrl + r`: History の Command 検索

# Zsh Plugin

### z

Install:
`$ vim ~/.zshrc plugins=(... z)`
Usage:
`$ z plug`

### autojump -> M1 Mac does not work ?

### web-search

Install:
`$ vim ~/.zshrc`
`plugins=(... web-search)`
Usage:
`google <search word>`

### python

Install:
`$ vim ~/.zshrc plugins=(... python)`
Usage:
`$ pyclean`

### fzf

Install:
`$ brew install fzf`
`$ vim ~/.zshrc plugins=(... fzf)`
Usage:
`Control + T` or `fzf`
`Control + R` => `j` or `k`

### zsh-syntax-highlighting

Install:
`$ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git`
`$ ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting`
`$ vim ~/.zshrc`
`plugins=( ... zsh-syntax-highlighting)`
Usage:
`$ echo ‘hello’`

### zsh-autosuggestions

Install:
`$ git clone https://github.com/zsh-users/zsh-autosuggestions`
`${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions`
`$ vim ~/.zshrc`
`plugins=( ... zsh-autosuggestions)`

### Shpotify

### powerlevel10k

Install:
`git clone --depth=1 https://github.com/romkatv/powerlevel10k.git`
`${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
Install MesloLGS NF font and setup in iterm2/Warp
`$ vim ~/.zshrc`
`Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.`
`$ p10k configure`
`$ source ~/.p10k.zsh`
