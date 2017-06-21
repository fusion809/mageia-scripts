# Create GitHub directory
if ! [[ -d $HOME/GitHub/mine/scripts ]]; then
    mkdir $HOME/GitHub/mine/scripts
fi

# Get openssh, if not pre-installed and Zsh
if ! `which ssh >/dev/null 2>&1`; then
    sudo urpmi openssh
fi

if ! [[ -f /bin/zsh ]]; then
    sudo urpmi zsh
fi

if ! [[ -f /usr/bin/git ]]; then
    sudo urpmi git
fi

# Clone mageia-scripts repo
if ! [[ -d $HOME/GitHub/mine/scripts/mageia-scripts ]]; then
    git clone https://github.com/fusion809/mageia-scripts $HOME/GitHub/mine/scripts/mageia-scripts

    # Copy across
    cp -a $HOME/GitHub/mine/scripts/mageia-scripts/{Shell,.bashrc,.zshrc} $HOME/
    sudo cp -a $HOME/GitHub/mine/scripts/mageia-scripts/root/{Shell,.bashrc,.zshrc} /root/
else
    pushd $HOME/GitHub/mine/scripts/mageia-scripts
    git pull origin master
    popd

    # Copy across
    cp -a $HOME/GitHub/mine/scripts/mageia-scripts/{Shell,.bashrc,.zshrc} $HOME/
    sudo cp -a $HOME/GitHub/mine/scripts/mageia-scripts/root/{Shell,.bashrc,.zshrc} /root/
fi

if ! [[ -d $HOME/.oh-my-zsh ]]; then
    # git clone oh-my-zsh
    git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
else
    pushd $HOME/.oh-my-zsh
    git pull origin master
    popd
fi

if ! [[ -d $HOME/GitHub/mine/scripts/zsh-theme ]]; then
# Get my self-made zsh-themes
    git clone https://github.com/fusion809/zsh-theme $HOME/GitHub/mine/scripts/zsh-theme
    cp -a $HOME/GitHub/mine/scripts/zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
else
    pushd $HOME/GitHub/mine/scripts/zsh-theme
    git pull origin master
    popd
A
A
    cp -a $HOME/GitHub/mine/scripts/zsh-theme/*.zsh-theme $HOME/.oh-my-zsh/themes/
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting ]]; then
    # Get zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
fi

if ! [[ -d $HOME/.oh-my-zsh/plugins/zsh-history-substring-search ]]; then
    git clone https://github.com/zsh-users/zsh-history-substring-search $HOME/.oh-my-zsh/plugins/zsh-history-substring-search
fi

# Change default login shell to Zsh
chsh -s /bin/zsh
sudo chsh -s /bin/zsh
/bin/zsh
