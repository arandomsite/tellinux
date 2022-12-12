#!/bin/bash

main () {
  clear
  title="Tellinux - Home"
  echo -e "\e[1;32;40m$title\e[0m"
  echo "URL: (i.e. arandomsite)"
  read url
  giturl=${url//tellinux:}
  if [ -d "tellinux-site" ]; then
  	rm -rf tellinux-site
  fi
  git clone https://github.com/$giturl/tellinux-site
  clear
  content=$(sudo sed '1d' tellinux-site/index.txt)
  title=$(sudo head -1 tellinux-site/index.txt)
  echo -e "\e[1;32;40m$title\e[0m"
  echo "$content"
}

main
