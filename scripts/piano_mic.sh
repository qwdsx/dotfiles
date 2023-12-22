module1=$(pactl load-module module-null-sink media.class=Audio/Sink sink_name=my-combined-sink channel_map=stereo)
module2=$(pactl load-module module-null-sink media.class=Audio/Source/Virtual sink_name=my-virtualmic channel_map=front-left,front-right)

pactl unload-module "$module1"
pactl unload-module "$module2"