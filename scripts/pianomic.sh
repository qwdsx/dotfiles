pactl load-module module-null-sink media.class=Audio/Sink sink_name=my-combined-sink channel_map=stereo
pactl load-module module-null-sink media.class=Audio/Source/Virtual sink_name=my-virtualmic channel_map=front-left,front-right
