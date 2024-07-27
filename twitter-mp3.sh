#!/bin/sh
# youtube-mp3 script
# (c) Thom Hastings 2024 GNU GPL 3
# got sick and tired of googling "yt-dlp mp3"
# TODO: script out getting the initial m3u URL from Twitter spaces
if [[ "$1" == "" ]] ; then
  echo "Usage: ./twitter-mp3.sh [URL] [OUT] -- downloads URL via yt-dlp as OUT.mp3"
  echo
  echo "                                       NOTE: To get Twitter Spaces, open browser Developer Tools and go to the Network tab. Filter for 'm3u' and start the stream. Use that URL."
  exit
fi
yt-dlp -x --audio-format mp3 --audio-quality 0 -o "$2.mp3" "$1"
echo "downloaded $2.mp3"