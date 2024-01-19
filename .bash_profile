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



[ -f ~/.aliases ] && . ~/.aliases
