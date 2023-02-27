# A simple set of Dotfiles for TrustedAI

## Motivation

This is a set of dotfiles based loosely on the set of [fastai dotfiles](https://github.com/fastai/dotfiles). I have chosen to restructure them to be more zsh friendly because of [Apples migration from bash to zsh](https://support.apple.com/en-us/HT208050) and, because of licensing, including a very old version of bash that does not support all of the settings in the fastai bashrc. It is designed to support Mac and Linux OS environments, and to be fairly light weight. It is recommended that Windows users use [Windows Subsystem for Linux (WSL)](https://learn.microsoft.com/en-us/windows/wsl/install) that will give you a linux environment where you can then use this set of dotfiles. In this setup, the bash shell environment is mainly for linux where bash tends to be the default shell. The zsh shell does try to install some plugins, but is still fairly light weight.

Like the fastai version, this set of dotfiles is based on using [git to manage dotfiles](https://www.atlassian.com/git/tutorials/dotfiles) using a [Git bare repository](https://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/). It includes simple configurations for vim, zsh, git, ctags.

Jeremy Howard as a set of [youtube live coding videos](https://www.youtube.com/watch?v=56sIyFjihEc&list=PLfYUBJiXbdtSLBPJ1GMx-sQWf6iNhb8mM) where he shows how to setup a machine learning environment in different contexts. There is [forum discussion](https://forums.fast.ai/t/live-coding-aka-walk-thrus/96617) on each of the videos that gives more detail on the setup. If you are setting up a Linux machine or VM, [fastai fastsetup](https://github.com/fastai/fastsetup) has files they use to quickly configure a machine or WSL in windows.

### Differences between fastai dotfiles and this set of dotfiles

- Move vimrc from using Vundle as a plugin manager to minpac
- Creation of a seperate aliases file that can be shared between bash and zshrc
- Creation of a zshrc
- Homebrew for MacOS packages
- Homebrew for MacOS casks
- Some subdirectory refactoring using .local/bin
- Including a version of the [fastai dotfiles](https://github.com/fastai/fastsetup/blob/master/dotfiles.sh)

## Preliminaries

### Trust

I encourage you to have a look through the scripts in this repository before you run them. It is good practice not to run _any_ scripts unless you have an understanding of what they are doing.

### GitHub Setup

A convenient method for accessing git is through ssh instead of using the HTTPS interface. This involves generating a [ssh key pair](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and [adding that key pair](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) to your github account.

Generate ssh key pair for **this computer** replacing your email in the following command.

```bash
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Copy the newly generated **public key** and [add to GitHub account](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account).

```bash
pbcopy < ~/.ssh/id_ed25519.pub
```

When cloning from a github repository, select "ssh clone\* vs "HTTPS clone" from the dropdown. You can create a key pair for the cluster machines you will be doing development on. Jeremy Howard discusses [setting up ssh keys](https://youtu.be/0pWjZByJ3Lk?t=1455) and there is a [forum topic](https://forums.fast.ai/t/live-coding-2/96690).

### Fork the Dotfiles repository and clone the repository

It is **highly** recommended that you create your own copy of these dotfiles by [forking](https://docs.github.com/en/get-started/quickstart/fork-a-repo) the repository. This will allow you to create your own aliases and customize the dotfiles for different environments. After you have a

### Setup Homebrew

If you are developing AI apps under MacOS, [homebrew](https://brew.sh) is a convenient way to provide command line applications that are either older versions, or not provided in MacOS. To build software, homebrew requires that xcode command line tools be installed. The [free code camp](https://www.freecodecamp.org/news/install-xcode-command-line-tools/) has some extended instructions on how to do this. You can do this from the mac terminal

```bash
xcode-select --install
```

and then install homebrew using the homepage instructions:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Homebrew casks

### Micromamba
