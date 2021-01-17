# Oh My Mac

## Three 🪜 to access the World Wide Web

client:

* [shadowsocks](https://github.com/search?q=shadowsocks)
* [v2ray](https://github.com/search?q=v2ray)
* [trojan](https://github.com/search?q=trojan)

server:
* 搬瓦工VPS推出的专用代理服务just my socks，支持支付宝: https://justmysocks.net/members/aff.php?aff=15941

> 永久有效的优惠码：JMS9272283，使用方法参考：https://bwgjms.com/post/justmysocks-coupon-code/
> 
> 没有🪜的程序员效率会低很多倍的。

## set git proxy for github

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

## homebrew

1. Install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## zsh config

![zsh](https://raw.githubusercontent.com/holmofy/oh-my-mac/master/.screen-shot/zsh-screen-shot.gif)

### 1. Install on-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Install on-my-zsh plugin
```
brew install pygments
brew tap homebrew/command-not-found
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

### 3. Install PowerLine10k Recommended font

Download these four ttf files:

* [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
* [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
* [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
* [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.

> ref: https://github.com/romkatv/powerlevel10k#manual-font-installation

### 4. Activate PowerLine10k theme

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`

### 5. Activate plugins

```sh
plugins=( [plugins...] history-substring-search)
```

eg:
```sh
plugins=(
    git                         # git alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
    command-not-found           # provide suggested packages: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
    common-aliases              # common alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases
    zsh-syntax-highlighting     # syntax highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
    zsh-autosuggestions         # fish-like autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
    history-substring-search    # fish-lisk history search: https://github.com/zsh-users/zsh-history-substring-search
    you-should-use              # check and should use alias: https://github.com/MichaelAquilina/zsh-you-should-use#check-your-alias-usage
)
```

### 6. Enable .zshrc

```sh
source .zshrc
```

## .vimrc configuration

![vim](https://raw.githubusercontent.com/holmofy/my-home-config/master/.screen-shot/vim-screen-shot.png)

### 1. Download .vimrc

```sh
curl https://raw.githubusercontent.com/holmofy/my-home-config/master/.vimrc > ~/.vimrc
```

### 2. Set up Vundle:

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

### 3. Install molokai color scheme

```sh
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.vim/colors/molokai.vim
```

### 4. Install Plugins:

```sh
vim +PluginInstall +qall
```

> 更牛逼的vim配置：https://github.com/SpaceVim/SpaceVim

## tmux configuration

### 1. Install tmux

```sh
brew install tmux
```

### 2. Install Tmux Plugin Manager(tpm)

```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### 3. Add Configuration

```sh
curl https://raw.githubusercontent.com/holmofy/oh-my-mac/master/.tmux.conf > .tmux.conf
```

> Refs:
> * Tmux Manual: http://man7.org/linux/man-pages/man1/tmux.1.html
> * Xterm_256color: https://upload.wikimedia.org/wikipedia/commons/1/15/Xterm_256color_chart.svg
> * Vim Pane: http://www.deanbodenham.com/learn/tmux-pane-colours.html

## Brew Formulae app

```sh
brew install mycli      # mysql client
brew install htop       # 代替top: https://github.com/htop-dev/htop/
brew install glances    # 代替htop: https://github.com/nicolargo/glances
brew install tldr       # 命令行工具代码示例参考，比man和help直观: https://github.com/tldr-pages/tldr
brew install jenv       # jdk version manager
brew install openjdk@8  # jdk8
sudo ln -sfn /usr/local/opt/openjdk@8/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-8.jdk
jenv add /usr/local/opt/openjdk@8/
brew install cppman     # cpp manual
brew install mc         # midnight commander editor 仅次于vim和emacs的编辑器，比nano好用
brew install icdiff     # 更高级的diff工具: https://github.com/jeffkaufman/icdiff
git difftool --extcmd icdiff
```

> 好用的命令：pbcopy/pbpaste
> ```sh
> echo 'Hello World!' | pbcopy   # 将命令输出复制到mac系统剪贴板
> echo `pbpaste`                 # 使用系统剪贴板的内容

## GUI app

```sh
brew install --cask sublime-text       # 轻量小巧的编辑器
brew install --cask visual-studio-code # 微软开源的一款超强大的编辑器
brew install --cask typora             # 简洁的Markdown编辑器
brew install --cask google-chrome      # 最好的浏览器
brew install --cask tencent-lemon      # 腾讯开发的垃圾清理工具
brew install --cask switchhosts        # hosts文件管理工具，gasmask的替代品
brew install --cask v2rayu             # 🪜，ShadowsocksX替代品
brew install --cask wechat             # 聊天工具
brew install --cask qqmusic            # 最喜欢的音乐软件
brew install --cask lightproxy         # 阿里出品的一款http抓包工具，可以替代charles
brew install --cask proxyman           # 另一款好用的http抓包工具，不过有些功能要收费
brew install --cask gifcapture         # 开源的一款gif录屏软件
brew install --cask gifox              # 氪金版的gif录屏软件，免费的有水印
brew install --cask hacker-menu        # Hacker News客户端
brew install --cask docker             # 应用容器
# docker 阿里云镜像加速：https://cr.console.aliyun.com/cn-hangzhou/instances/mirrors
```
