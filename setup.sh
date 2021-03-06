#! /bin/bash

sites=("discord.com/login" "web.whatsapp.com")

firefoxSearch(){
  links=("$@")
  for link in "${links[@]}"
  do
      firefox "$link"
  done
}

if ping -q -c 1 -W 1 8.8.8.8 >/dev/null; then
  firefoxSearch "${sites[@]}" 
else
  echo "Device is not connected to the internet"
fi
