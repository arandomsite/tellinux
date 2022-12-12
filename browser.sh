#!/bin/bash

main () {
  clear
  title="Tellinux - Home"
  echo -e "\e[1;32;40m$title\e[0m"
  echo "URL: (i.e. arandomsite)"
  read url
  giturl=${url//tellinux:}
  if [ -d "tellinux" ]; then
  	rm -rf tellinux
  fi
  git clone https://github.com/$giturl/tellinux-site
  clear
  title=cat tellinux-site/README.md
  echo $title
}
main
