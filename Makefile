install:
        mkdir ~/.config/candybar
        cp modules.sh ~/.config/candybar
        cp config.sh ~/.config/candybar
        cp candybar.sh ~/.config/candybar
        sh ~/.config/candybar/config.sh
        echo Candybar installed. Please edit your dwm/tmux/zsh configuration file as in README.md
