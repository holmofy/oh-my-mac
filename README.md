# Oh My Mac

## 1. Three 🪜 to access the World Wide Web

client:

* [FlClash](https://github.com/chen08209/FlClash)
* [clash-verge](https://github.com/clash-verge-rev/clash-verge-rev)

server:
* 搬瓦工VPS推出的专用代理服务just my socks，支持支付宝: https://justmysocks.net/members/aff.php?aff=15941

## 2. homebrew

Install [homebrew](https://brew.sh/)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

> 没有梯子的话最好用国内的镜像源，否则会很慢，安装完后可以在`.zshrc`中配置`export HOMEBREW_NO_AUTO_UPDATE=3`关闭brew仓库的自动更新

homebrew官方提供[BrewUI](https://github.com/Homebrew/BrewUI/)

---

## 4. zsh config

![zsh](https://raw.githubusercontent.com/holmofy/oh-my-mac/master/.screen-shot/zsh-screen-shot.gif)

### 4.1. Install [on-my-zsh](https://ohmyz.sh/)

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 4.2. Install oh-my-zsh themes(optional)

**1) [PowerLine10k](https://github.com/romkatv/powerlevel10k)**

Install
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Recommended font

Download these four ttf files:

* [MesloLGS NF Regular.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
* [MesloLGS NF Bold.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
* [MesloLGS NF Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
* [MesloLGS NF Bold Italic.ttf](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`.

> ref: https://github.com/romkatv/powerlevel10k#manual-font-installation

Activate PowerLine10k theme

Set `ZSH_THEME="powerlevel10k/powerlevel10k"` in `~/.zshrc`

**2) [spaceship-prompt](https://github.com/denysdovhan/spaceship-prompt)**

Install
```sh
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
```
Set `ZSH_THEME="spaceship"` in your `~/.zshrc`.

### 4.3. Install on-my-zsh plugin
```sh
brew install pygments
brew tap homebrew/command-not-found
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
```

### 4.4. Activate plugins

```sh
plugins=( [plugins...] history-substring-search)
```

eg:
```sh
plugins=(
    # alias
    common-aliases              # common alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/common-aliases
    git                         # git alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
    git-flow                    # git-flow alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-flow
    git-lfs                     # git-lfs alias: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git-lfs
    brew                        # homebrew alias: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/brew
    nmap                        # nmap alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/nmap
    tmux                        # tmux alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/tmux                                                       
    dash                        # dash alias: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/dash
    osx                         # osx utility alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx
    # alias utility
    alias-finder                # find alias: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/alias-finder
    you-should-use              # should use alias: https://github.com/MichaelAquilina/zsh-you-should-use#check-your-alias-usage
    # autocomplete
    zsh-completions             # Additional completion definitions for Zsh: https://github.com/zsh-users/zsh-completions
    adb                         # adb autocomplete: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/adb
    docker                      # docker autocomplete: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker
    docker-compose              # docker-compose autocomplete: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/docker-compose
    git-extras                  # git-extras autocomplete: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git-extras
    httpie                      # httpie autocomplete: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/httpie
    pip                         # pip autocomplete: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/pip
    compleat                    # Generate command-line completions using a simple DSL.
    # other feature
    command-not-found           # provide suggested packages: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/command-not-found
    colored-man-pages           # adds colors to man pages: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/colored-man-pages
    zsh-syntax-highlighting     # syntax highlighting: https://github.com/zsh-users/zsh-syntax-highlighting
    zsh-autosuggestions         # fish-like autosuggestions: https://github.com/zsh-users/zsh-autosuggestions
    history-substring-search    # fish-lisk history search: https://github.com/zsh-users/zsh-history-substring-search
    themes                      # change ZSH theme on the go: https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/themes
)
```

> * zsh build-in completion: https://github.com/zsh-users/zsh/blob/master/Completion/README
> * zsh custom completion: https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org

### 4.5. Enable .zshrc

```sh
source .zshrc
```

---

## 5. Vim Configuration

![oh-my-vim](https://raw.githubusercontent.com/holmofy/my-home-config/master/.screen-shot/vim-screen-shot.png)

### 5.1. Download .vimrc

```sh
curl https://raw.githubusercontent.com/holmofy/my-home-config/master/.vimrc > ~/.vimrc
```

### 5.2. Set up vim-plug:

refer to [vim-plug](https://github.com/junegunn/vim-plug#installation)

### 5.3. Install Plugins:

```sh
vim +PlugInstall +qall
```

> * 更牛逼的vim配置：https://github.com/SpaceVim/SpaceVim
> * 在VSCode中使用Vim：https://github.com/daipeihust/im-select
> * 在Idea中使用Vim：https://github.com/rieonke/idea-auto-switch-im

## 

---

## 7. Brew Formulae App

通过homebrew安装常用的命令行工具

```sh
brew install herdr      # AI时代为agent设计的终端复用器，替代tmux，https://github.com/herdrdev/herdr
brew install fzf        # 模糊搜索工具，https://github.com/junegunn/fzf
brew install shellcheck # 检查自己写的shell，https://github.com/koalaman/shellcheck
brew install hexedit    # 二进制编辑器
brew install bat        # 包含语法高亮的less，替代cat。bat=less+cat
brew install httpie     # 比curl友好的http客户端
brew install iperf3     # 网络性能测试工具
brew install htop       # 代替top: https://github.com/htop-dev/htop/
brew install ctop       # docker容器top
brew install jq         # json处理工具
# brew install tldr     # 命令行工具代码示例参考，比man和help直观: https://github.com/tldr-pages/tldr
brew install tlrc       # 改用rust重写了，[兼容tldr](https://github.com/tldr-pages/tlrc)
brew install navi       # 交互式命令行示例参考，比tldr有交互性
# 世界上最好的在线cheat文档: https://github.com/chubin/cheat.sh
curl https://cht.sh/:cht.sh | sudo tee /usr/local/bin/cht.sh && chmod +x /usr/local/bin/cht.sh
brew install lazydocker # 命令行的docker管理工具，非常适合linux这样没有docker desktop的平台
brew install mc         # midnight commander editor 仅次于vim和emacs的编辑器，比nano好用
brew install nmap       # 网络扫描工具
brew install sqlmap     # sql注入工具
brew install git-extras # git 扩展插件
brew install git-flow   # git flow工作流插件
brew install git-lfs    # git lfs大文件存储
brew install git-delta  # git diff工具 https://github.com/dandavison/delta
brew install lazygit    # git terminal ui
# db client
brew install mycli      # mysql client
brew install pgcli      # postgresql client
brew install xo/xo/usql # 支持大部分数据库的客户端
brew install innotop    # innotop
# zookeeper
brew tap let-us-go/zkcli               # A interactive Zookeeper client.
brew install zkcli                     # https://github.com/let-us-go/zkcli
# java
# brew install jenv       # jdk version manager, 推荐用mise替代
# brew install openjdk@8  # jdk8
# node
brew install nvm        # node.js版本管理, 推荐用mise替代
brew install scrcpy                    # https://github.com/Genymobile/scrcpy
# wifi tools
brew install aircrack-ng               # WiFi security auditing tools suite: https://github.com/aircrack-ng/aircrack-ng
brew install wifi-password             # current wifi password: https://github.com/rauchg/wifi-password
brew install hashcat                   # hash password recovery: https://github.com/hashcat/hashcat
brew install crunch                    # wordlist generator: https://github.com/crunchsec/crunch
```

other:
```sh
iredis: https://github.com/laixintao/iredis
kaf: https://github.com/birdayz/kaf
clickhouse-cli: https://github.com/hatarist/clickhouse-cli
```

more: 

* https://github.com/topics/terminal
* https://github.com/jlevy/the-art-of-command-line
* https://github.com/herrbischoff/awesome-macos-command-line
* https://github.com/agarrharr/awesome-cli-apps
* https://github.com/alebcay/awesome-shell
* https://formulae.brew.sh/analytics/install/365d/

---

## 8. GUI app

通过homebrew安装常用的GUI工具(🔑 表示开源软件)

```sh
brew install --cask keka               # 解压缩软件
brew install --cask hiddenbar          # 导航栏图标工具
brew install --cask zed                # AI时代的IDE
brew install --cask cc-switch          # LLM、Skills、MCP管理器
brew install --cask google-chrome      # 最好的浏览器
brew install --cask wechat             # 聊天工具
brew install --cask qqmusic            # 最喜欢的音乐软件
brew install --cask copytranslator     # 自助翻译神器，看论文的好帮手
brew install --cask drawio             # 画架构图必备，比plantuml直观 🔑
brew install --cask paintbrush         # 类似于windows上mspaint的画图工具 🔑
brew install --cask gifcapture         # 开源的一款gif录屏软件 🔑
brew install --cask gifox              # 氪金版的gif录屏软件，免费的有水印
brew install --cask gimp               # 像素图编辑器，开源版的Adobe Photoshop 🔑
brew install --cask inkscape           # 矢量图编辑器，开源版的Adobe Illustrator 🔑
brew install --cask typora             # 简洁的Markdown编辑器 🔑
brew install --cask imhex              # 二进制编辑器 🔑
brew install --cask tencent-lemon      # 腾讯开发的垃圾清理工具
brew install --cask iina               # 基于mpv的视频播放器 🔑
brew install --cask eul                # Mac监控软件，颜值比stats高 🔑
brew install --cask stats              # Mac状态监控，比eul样式多 🔑
brew install --cask switchhosts        # hosts文件管理工具，gasmask的替代品 🔑
brew install --cask v2rayu             # 🪜，ShadowsocksX替代品 🔑
brew install --cask lightproxy         # 阿里出品的一款http抓包工具，可以替代charles 🔑
brew install --cask proxyman           # 另一款好用的http抓包工具，不过有些功能要收费
brew install --cask docker             # 应用容器 🔑
brew install --cask orbstack           # 管理虚拟机与容器的应用，替代docker
# docker 阿里云镜像加速：https://cr.console.aliyun.com/cn-hangzhou/instances/mirrors
brew install --cask virtualbox         # virtualbox虚拟机
brew install --cask vagrant            # 虚拟机部署vagrantfile，类似于docker，不过是基于虚拟机的 🔑
brew install --cask motrix             # 下载工具🔑
brew install --cask dbx                # AI时代的统一DB管理工具🔑
brew install --cask rectangle          # 窗口管理工具🔑
brew install --cask picgo              # 统一图床工具
```

more: 
* https://github.com/serhii-londar/open-source-mac-os-apps
* https://formulae.brew.sh/analytics/cask-install/365d/

## 9. My Idea Color Scheme

[Download jar](https://github.com/holmofy/oh-my-mac/raw/master/MyCodeColor.jar)

import color Scheme: Preferences > Editor > Color Scheme > Import Scheme
