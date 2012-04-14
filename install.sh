for s in "bashrc" "bash_aliases" "gitconfig" "gitignore"  "hgrc" "screenrc" "vimrc"
do
  CMD="cp ./$s $HOME/.$s"
  echo $CMD
  $CMD
done
