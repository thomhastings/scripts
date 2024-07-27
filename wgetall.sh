#!/bin/sh
# wgetall script
# (c) Thom Hastings 2012-2024 GNU GPL 3
# got sick and tired of googling "mp3 blogs and wget"
# TODO: allow multiple extension arguments (e.g. mp3,wav,flac)
if [[ "$1" == "" ]] ; then
  echo "Usage: ./wgetall.sh [EXT] [URL]     -- wgets all files of extension EXT from base URL."
  echo "e.g: ./wgetall.sh mp3 https://bootiemashup.com/best-of-bootie/2023/"
  exit
fi
wget -c -r -l1 -H -t1 -nd -N -np -A.$1 -erobots=off --user-agent="WhatsApp/2" "$2"
echo "w-got all .$1 from $2"
