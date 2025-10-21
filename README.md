# Mac Settings

## Table of Contents

- [Summary](#summary)
- [MacOS Setting](#macos-setting)
- [Packages](#packages)
- [Terminal](#terminal)

## Summary

사용하던 Mac OS 기기를 변경할 경우 사용 필요한 패키지들을 빠르게 설치하기 위한 리포지토리


## MacOS Setting
> 별도의 프로그램 없이 설정 가능한 OS 설정, 해당 설정들은 icloud를 통해 옮길 수 있으므로 생략

### Packages
> [My Homebrew Packages](./devtools/packages.txt)

```zsh
cd ./devtools
./install.sh # install brew & packages 
```

### Terminal

#### Oh My Zsh
> [Oh My Zsh](https://ohmyz.sh/)
```zsh
# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
#### Powerlevel10k
> [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
> [Nerd Font](https://www.nerdfonts.com/font-downloads): 일부 특수 문자들 때문에 nerd font를 사용해야 합니다.
>> * 한글 폰트에 친화적인 `D2CodingLigature Nerd Font`를 추천합니다.

```zsh
# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/Powerlevel10k
```
#### Plugins
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

```zsh
brew install zsh-autosuggestions

# .zshrc
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
```

- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

```zsh
brew install zsh-syntax-highlighting

# .zshrc
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
```

### Development

#### NVM (Node Version Manager)
> [nvm](https://github.com/nvm-sh/nvm)

```zsh
brew install nvm 

# .zshrc
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
```

#### Pyenv (Python Version Manager)
> [pyenv](https://github.com/pyenv/pyenv)

```zsh
brew install pyenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init - zsh)"' >> ~/.zshrc

```
