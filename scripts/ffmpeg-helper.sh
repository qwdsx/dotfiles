
input="$1"
start="$2"
end="$3"

ffmpeg -ss "$start" -i "$input" -c copy -to "$end" "$input-cut".wmv
