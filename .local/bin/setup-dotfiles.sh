cd
shopt -s expand_aliases
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"
echo ".cfg" >> .gitignore
read -e -p "Please paste a HTTPS link to your dotfiles repository (or press enter to use defaults): " DOTFILES_URL
[[ -z $DOTFILES_URL ]] && DOTFILES_URL=git@github.com:charlesvardeman/dotfiles.git
git clone --bare $DOTFILES_URL .cfg/
config checkout
config config --local status.showUntrackedFiles no
# Only install if it isn't already there:
if [ ! -d "$HOME/.vim/pack/minpac/opt/minpac" ]; then
  echo 'Installing minpac...'
  mkdir -p $HOME/.vim/pack/minpac/opt
  git clone https://github.com/k-takata/minpac.git ~/.vim/pack/minpac/opt/minpac && echo '✔ Success!'
else
  echo '✔ minpac is already installed.'
fi                                                                            
echo "source ~/.bashrc.local" >> ~/.bashrc
grep -q 'source ~/.bashrc' ~/.bash_profile 2&> 1 || echo "source ~/.bashrc" >> ~/.bash_profile;
. ~/.bashrc





[[ -z $NAME  ]] && read -e -p "Enter your name (for git configuration): " NAME
[[ -z $EMAIL ]] && read -e -p "Enter your email (for git configuration): " EMAIL
[[ $NAME  ]] && git config --global user.name "$NAME"
[[ $EMAIL ]] && git config --global user.email "$EMAIL"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

cd -
