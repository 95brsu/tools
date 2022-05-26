#!/bin/bash

function logo {
  curl -s https://raw.githubusercontent.com/95brsu/tools/main/nuts.sh | bash
}

function line {
  echo "-------------------GO----------------------------"
}

function colors {
  GREEN="\e[1m\e[32m"
  RED="\e[1m\e[39m"
  NORMAL="\e[0m"
}


function install_go {
 ver="1.17.2"
 cd $HOME
 wget "https://golang.org/dl/go$ver.linux-amd64.tar.gz"
 sudo rm -rf /usr/local/go
 sudo tar -C /usr/local -xzf "go$ver.linux-amd64.tar.gz"
 rm "go$ver.linux-amd64.tar.gz"
 echo "export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin" >> ~/.bash_profile
 source ~/.bash_profile
 go version
  }
  

colors

line
logo
line
echo -e "${RED}Начинаем установку GO ${NORMAL}"
line
install_go
line

echo -e "${RED}GO установлен! Извините за внимание! ${NORMAL}"
