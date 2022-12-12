#!/bin/bash

main () {
  clear
  title="Tellinux - Home"
  echo -e "\e[1;32;40m$title\e[0m"  
  url
}

url () {
echo "---
URL: (i.e. arandomsite)"
  read url
  giturl=${url%/*}
  urlPath="${url#*/}"
  if [[ ${url} != *"/"* ]]; then
  	urlPath="index.txt"
  fi
  if [ -d "tellinux-site" ]; then
  	rm -rf tellinux-site
  fi
  git clone https://github.com/$giturl/tellinux-site
  site
}

site () {
clear
  content=$(sudo sed '1d' tellinux-site/$urlPath)
  title=$(sudo head -1 tellinux-site/$urlPath)
  echo -e "\e[1;32;40m$title\e[0m"
  echo "$content"
  url
}

main
