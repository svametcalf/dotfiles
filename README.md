## DotFiles

This is a repo for my dotfiles. Pretty bare at this point. Uses DotBot for ease
of installation.

## Installation

1. Install zsh > 5.2
   ```sudo apt-get install build-essential ncurses-dev yodl```

   ```wget -q -O - http://sourceforge.net/projects/zsh/files/zsh/5.2/zsh-5.2.tar.gz/download | tar xvzf -```

   ```cd zsh-5.2/```

   ```"./Util/preconfig"```

   ```make```

   ```sudo make install```

   ```
   zsh --version
   -> 5.2
   ```

   ```which zsh | sudo tee -a /etc/shells```

   ```sudo chsh -s "$(which zsh)" "${USER}"```

2. Install oh-my-zsh
   ```sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"```

3. ```cd ~/.dotfiles && ./install```
