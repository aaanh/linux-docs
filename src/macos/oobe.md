# macOS Out-of-the-Box Experience

## Convenience Script

> TBA

## Manual

### Set up `homebrew`

>  This also installs xcode command line tools

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


### Set up `oh-my-zsh`

1. Install via official script

    ```sh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    ```

2. Configure theme

    ```sh
    sed -i 's/robbyrussell/apple/g' ~/.zshrc
    ```

3. Set up `zsh-syntax-highlighting`

    ```sh
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
    echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"
    ```