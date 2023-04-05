playlist=$(yt-dlp https://www.youtube.com/playlist?list=PLuZPZXDmytnFez6pV1ZXpFMauG6bwH-uz --get-title --flat-playlist)
echo "$playlist" > scripts/test.txt