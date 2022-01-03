#/bin/bash

# Check to see is git command line installed in this machine
isGitAvailable="$(git --version)"
if [[ $isGitAvailable == *"version"* ]]; then
  echo "git is installed"
else
  echo "git is not installed"
  exit 1
fi

# Copy necessary dot/config files
sudo cp -r $HOME/.config/{nvim,zsh,alacritty,awesome,fontconfig,neofetch,picom} .

# Check git status
gitStat="$(git status | grep -i "modified")"
# echo "${gitStat}"

# Push if there are any changes
if [[ $gitStat == *"modified"* ]]; then
  echo "pushing"
fi

git add .
git commit -m "New backup `date +'%Y-%m-%d %H:%M:%S'`"
git push origin main
