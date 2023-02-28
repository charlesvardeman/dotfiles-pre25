#!/usr/bin/env bash
# Very simple zsh plugin install
# Based off the usefull blog post
# https://dev.to/hbenvenutti/using-zsh-without-omz-4gch

### ZSH HOME
export ZSH=$HOME/.zsh

# Make the base directories
[ ! -d "$ZSH" ] && mkdir -p $ZSH
[ ! -d "$ZSH/themes" ] && mkdir -p $ZSH/themes
[ ! -d "$ZSH/plugins" ] && mkdir -p $ZSH/plugins
 
git -C $ZSH/themes  clone git@github.com:spaceship-prompt/spaceship-prompt.git
git -C $ZSH/plugins clone git@github.com:zdharma-zmirror/fast-syntax-highlighting.git
git -C $ZSH/plugins clone git@github.com:zsh-users/zsh-autosuggestions.git

git -C $ZSH/plugins clone git@github.com:zsh-users/zsh-completions.git
git -C $ZSH/plugins clone git@github.com:jeffreytse/zsh-vi-mode
