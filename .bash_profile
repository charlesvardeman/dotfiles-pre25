export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1='\u@\h:\[\e[01;32m\]\w\[\e[0m\]\$ '
export EDITOR='vim'
export CLICOLOR=1

# Set a reasonable path
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH

# If homebrew exists, add it to our path
if [ -f /opt/homebrew/bin/brew ]; then
    export PATH=/opt/homebrew/bin:$PATH
fi


# Check for quarto on macos
if [ -f /Applications/quarto/bin/quarto ]; then
    export PATH=$PATH:/Applications/quarto/bin
fi



export MODULAR_HOME="/Users/cvardema/.modular"
export PATH="/Users/cvardema/.modular/pkg/packages.modular.com_mojo/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cvardema/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cvardema/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/cvardema/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cvardema/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/Users/cvardema/miniforge3/etc/profile.d/mamba.sh" ]; then
    . "/Users/cvardema/miniforge3/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
