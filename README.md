two 🪜 access www

v2ray: https://github.com/yanue/V2rayU
shadowsocks: https://github.com/shadowsocks/ShadowsocksX-NG

# pre

1. Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> in China: https://mirrors.tuna.tsinghua.edu.cn/help/homebrew/

# .zshrc

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

```url
https://github.com/romkatv/powerlevel10k#manual-font-installation
```

4. Enable .zshrc

```sh
source .zshrc
```

# .vimrc configuration

1. Set up Vundle:

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

2. Install molokai color scheme

```sh
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.vim/colors/molokai.vim
```

3. Install Plugins:

```sh
vim +PluginInstall +qall
```

# .tmux.conf configuration

Refs:

Tmux Manual: http://man7.org/linux/man-pages/man1/tmux.1.html

Xterm_256color: https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg

Vim Pane: http://www.deanbodenham.com/learn/tmux-pane-colours.html
