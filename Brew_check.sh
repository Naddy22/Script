#!/bin/bash

# -- COLORS -- #
BLACK=\\033[30m # Black
RED=\\033[31m # Red
GREEN=\\033[32m # GREEN
YELLOW=\\033[33m # YELLOW
BLUE=\\033[34m # BLUE
PURPLE=\\033[35m # PURPLE
CYAN=\\033[36m # CYAN
WHITE=\\033[0m # WHITE
ITALIC=\\033[3m

if [ -x "$HOME/homebrew/bin/brew" ] || [ -x "$HOME/.brew/bin/brew" ];
then
	printf "$GREEN ✔︎$ITALIC Brew is already installed$WHITE$GREEN ✔︎$WHITE\n";
else
	printf "$RED ✗$ITALIC Brew not found$WHITE$RED ✗\n"; 
	read -p "Do you want to install brew? y/n: "  brewchoice;
	printf "$WHITE\n";
	if [ "$brewchoice" = "y" ];
	then
		rm -rf $HOME/.brew && git clone --depth=1 https://github.com/Homebrew/brew $HOME/.brew &&
		printf 'export PATH=$$HOME/.brew/bin:$$PATH' >> $HOME/.zshrc && source $HOME/.zshrc && brew update;
		printf "$GREEN ✔︎$ITALIC Brew successfully installed$WHITE$GREEN ✔︎$WHITE\n";
	else
		printf "Exit";
		exit 2;
	fi
fi
if [ -d "$HOME/homebrew/opt/cmake/bin" ] || [ -d "$HOME/.brew/opt/cmake/bin" ];
then
	printf "$GREEN ✔︎$ITALIC cmake is already installed$WHITE$GREEN ✔︎$WHITE\n";
else
	printf "$RED ✗$ITALIC cmake not found$WHITE$RED ✗\n";
	read -p "Do you want to install cmake? y/n: " cmakechoice;
	printf "$WHITE\n";
	if [ "$cmakechoice" = "y" ];
	then
		brew install cmake;
		printf "$GREEN ✔︎$ITALIC cmake successfully installed$WHITE$GREEN ✔︎$WHITE\n";
	else
		printf "Exit";
		exit 2;
	fi
fi
if [ -d "$HOME/homebrew/opt/glfw/lib" ] || [ -d "$HOME/.brew/opt/glfw/lib" ];
then
	printf "$GREEN ✔︎$ITALIC glfw is already installed$WHITE$GREEN ✔︎$WHITE\n";
else
	printf "$RED ✗$ITALIC glfw not found$WHITE$RED ✗\n";
	read -p "Do you want to install glfw? y/n: " glfwchoice;
	printf "$WHITE\n";
	if [ "$glfwchoice" = "y" ];
	then
		brew install glfw;
		printf "$GREEN ✔︎$ITALIC glfw successfully installed$WHITE$GREEN ✔︎$WHITE\n";
	else
		printf "Exit";
		exit 2;
	fi
fi