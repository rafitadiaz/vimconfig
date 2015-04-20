# Installer for my vim bundles and stuff
# This installation includes a lot of stuff to developers: 
# Scripting syntax checking, list, nerdTree, tComments, etc...

dpkg -l | grep nox

if [ $? -eq 1 ] 
then
	echo "You don't seem to have vim-nox installed. Install it first!"
	exit 1
fi

rm -f ~/.vimrc
ln -s ~/.vim/vimrc ~/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u ~/.vim/bundles.vim +BundleInstall +q

