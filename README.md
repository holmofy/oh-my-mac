# Three 🪜 to access the World Wide Web

client:
* v2rayU(支持vmess、ss协议): https://github.com/yanue/V2rayU
* ShadowsocksX-NG-R(支持SS订阅): https://github.com/qinyuhang/ShadowsocksX-NG-R/releases
* ShadowsocksX-NG(SS客户端): https://github.com/shadowsocks/ShadowsocksX-NG

server:
* 搬瓦工VPS推出的专用代理服务just my socks，支持支付宝: https://justmysocks.net/members/aff.php?aff=15941

> 永久有效的优惠码：JMS9272283，使用方法参考：https://bwgjms.com/post/justmysocks-coupon-code/
> 
> 没有🪜的程序员效率会低很多倍的。

# homebrew

1. Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# .zshrc

![zsh](https://raw.githubusercontent.com/holmofy/my-home-config/master/.screen-shot/zsh-screen-shot.png)

1. Install on-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

2. Install on-my-zsh plugin
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

3. Install PowerLine10k Recommended font

Download these four ttf files:

* [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
* [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
* [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
* [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.

> ref: https://github.com/romkatv/powerlevel10k#manual-font-installation

4. Enable .zshrc

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
