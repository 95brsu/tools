#!/bin/bash

function logo {
  curl -s https://raw.githubusercontent.com/95brsu/tools/main/nuts.sh | bash
}

function line {
  echo "-------------------------------------------------"
}

function colors {
  GREEN="\e[1m\e[32m"
  RED="\e[1m\e[39m"
  NORMAL="\e[0m"
}


function install_go {
  wget -q -O go1.17.8.linux-amd64.tar.gz https://go.dev/dl/go1.17.8.linux-amd64.tar.gz
  rm -rf /usr/local/go && tar -C /usr/local -xzf go1.17.8.linux-amd64.tar.gz && rm go1.17.8.linux-amd64.tar.gz
  echo 'export GOROOT=/usr/local/go' >> $HOME/.bash_profile
  echo 'export GOPATH=$HOME/go' >> $HOME/.bash_profile
  echo 'export GO111MODULE=on' >> $HOME/.bash_profile
  echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> $HOME/.bash_profile && . $HOME/.bash_profile
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
