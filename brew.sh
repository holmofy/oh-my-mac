HOMEBREW_URL=https://mirrors.ustc.edu.cn/brew.git
HOMEBREW_CORE_URL=https://mirrors.ustc.edu.cn/homebrew-core.git
HOMEBREW_CASK_URL=https://mirrors.ustc.edu.cn/homebrew-cask.git

echo "brew git remote ==>"
cd "$(brew --repo)" && git remote -v
git remote set-url origin $HOMEBREW_URL

echo "core git remote ==>"
cd "$(brew --repo homebrew/core)" && git remote -v
git remote set-url origin $HOMEBREW_CORE_URL

echo "cask git remote ==>"
cd "$(brew --repo homebrew/cask)" && git remote -v
git remote set-url origin $HOMEBREW_CASK_URL
