#!/bin/bash	
# Dopisuje do ~/.bashrc linijkę source ~/dotfiles/bashrc	
# jeśli plik nie istnieje to go utworzy
if [ ! -f ~/.bashrc ]; then
	touch ~/.bashrc
fi

dopisane=`cat ~/.bashrc | grep dotfiles`

# dopisuje tylko jeśli polecenie nie zostało jeszcze wykonane
if [ "$dopisane" == "source ~/dotfiles/bashrc" ]; then
	echo "source ~/dotfiles/bashrc" >> ~/.bashrc
else
	echo "W pliku ~/.bashrc znajduje się już linia source ~/dotfiles/bashrc !"
fi

# przeładowanie pliku bashrc
source ~/.bashrc