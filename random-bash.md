# Random Bash

A collection of random, yet helpful things I've had to do with Bash.

## Atom

### Export a list of all packages and versions

```bash
apm list --installed-bare | sort > package-list.txt
```

## Homebrew

### Export a list of all packages

```bash
brew list | sort > packages.txt
```

### Export a list of all casks

```bash
brew cask list | sort > casks.txt
```

### Export Brewfile

```bash
brew bundle dump
```

### Update software installed by a cask

```bash
brew upgrade --cask dbeaver-community
```

## zsh

### Install Powerlevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
