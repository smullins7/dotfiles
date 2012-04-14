for s in "bashrc" "bash_aliases" "gitconfig" "gitignore"  "hgrc" "screenrc" "vimrc"
do
  CMD="cp ./$s $HOME/.$s"
  echo $CMD
  $CMD
done

echo "Copying syntax for VIM"
mkdir -p $HOME/.vim/syntax
cp syntax/* $HOME/.vim/syntax/

echo "Installing pathogen for VIM"
mkdir -p $HOME/.vim/autoload $HOME/.vim/bundle
curl -so $HOME/.vim/autoload/pathogen.vim  https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

echo "Installing abolish for VIM"
cd $HOME/.vim/bundle
git clone git://github.com/tpope/vim-abolish.git
