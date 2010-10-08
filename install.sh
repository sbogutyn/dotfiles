#!/bin/bash	
# Dopisuje do ~/.bashrc linijkę source ~/dotfiles/bashrc	
# jeśli plik nie istnieje to go utworzy
if [ ! -f ~/.bashrc ]; then
	touch ~/.bashrc
fi

echo "source ~/dotfiles/bashrc" >> ~/.bashrc