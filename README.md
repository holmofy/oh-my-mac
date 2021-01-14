# Three 🪜 to access the World Wide Web

client:

* [shadowsocks](https://github.com/search?q=shadowsocks)
* [v2ray](https://github.com/search?q=v2ray)
* [trojan](https://github.com/search?q=trojan)

server:
* 搬瓦工VPS推出的专用代理服务just my socks，支持支付宝: https://justmysocks.net/members/aff.php?aff=15941

> 永久有效的优惠码：JMS9272283，使用方法参考：https://bwgjms.com/post/justmysocks-coupon-code/
> 
> 没有🪜的程序员效率会低很多倍的。

# set git proxy for github

```sh
# 设置代理，<port>是代理软件的开放端口
git config --global https.proxy http://127.0.0.1:<port>
git config --global https.proxy https://127.0.0.1<port>

# 重置
git config --global --unset http.proxy
git config --global --unset https.proxy
```

> * Configure Git to use a proxy: https://gist.github.com/evantoli/f8c23a37eb3558ab8765
> * git 设置和取消代理: https://gist.github.com/laispace/666dd7b27e9116faece6

# homebrew

1. Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# zsh config

![zsh](https://raw.githubusercontent.com/holmofy/my-home-config/master/.screen-shot/zsh-screen-shot.png)

**1. Install on-my-zsh**

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

**2. Install on-my-zsh plugin**
```
brew tap homebrew/command-not-found
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

**3. Install PowerLine10k Recommended font**

Download these four ttf files:

* [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
* [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
* [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
* [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.

> ref: https://github.com/romkatv/powerlevel10k#manual-font-installation

**4. Activate PowerLine10k theme**

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`

**5. Activate plugins**

```sh
plugins=( [plugins...] history-substring-search)
```

eg:
```sh
plugins=(
    you-should-use              # should use alias: https://github.com/MichaelAquilina/zsh-you-should-use#check-your-alias-usage
    git                         # git alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
    command-not-found           # provide suggested packages: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
    common-aliases              # common alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases
    zsh-interactive-cd          # fish-like interactive cd: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/zsh-interactive-cd
    zsh-syntax-highlighting     # syntax highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
    zsh-autosuggestions         # fish-like autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
    history-substring-search    # fish-lisk history search: https://github.com/zsh-users/zsh-history-substring-search
)
```

**6. Enable .zshrc**

```sh
source .zshrc
```

# .vimrc configuration

![vim](https://raw.githubusercontent.com/holmofy/my-home-config/master/.screen-shot/vim-screen-shot.png)

1. Download .vimrc

```sh
curl https://raw.githubusercontent.com/holmofy/my-home-config/master/.vimrc > ~/.vimrc
```

2. Set up Vundle:

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

3. Install molokai color scheme

```sh
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.vim/colors/molokai.vim
```

4. Install Plugins:

```sh
vim +PluginInstall +qall
```

# .tmux.conf configuration

Refs:

Tmux Manual: http://man7.org/linux/man-pages/man1/tmux.1.html

Xterm_256color: https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

Vim Pane: http://www.deanbodenham.com/learn/tmux-pane-colours.html
