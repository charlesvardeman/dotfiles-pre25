# Macbook Pro Setup 12-2024

Basic setup of Macbook for 2024.
- Based on [My Minimal MacBook Pro Setup Guide](https://eugeneyan.com/writing/mac-setup/)

## Changes from previous setup.
Previous dotfiles relied on conda and miniconda for providing python environments. The new dotfile shift to using uv to manage python environments for development.

## Basic Developer Setup
- **Homebrew** (essential setup for everything else)

```
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add brew to default shell path
echo >> /Users/cvardema/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/cvardema/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# check for updates
brew update
```
- **Terminal:** Generally use built in mac terminal, however it has not been updated in a long while. The new AI driven terminal is [Warp](https://www.warp.dev/).

```
brew install --cask warp
brew install --cask font-inconsolata-for-powerline
brew install --cask font-cascadia-code
brew install --cask font-fira-code
brew install --cask font-iosevka-nerd-font
brew install --cask font-monaspace
```


- **Shell:**

- **Docker:** We need docker be able to run docker containers for a bunch of tasks

```
brew install --cask docker
```
