#!/bin/sh

IN=$(solaar show | grep -A0 -m1 -i "battery:")
ARR_IN=(${IN// / })
LAST_ITEM=${ARR_IN[-2]}

if [[ ! $(solaar show | grep -xq -i "pro x") ]]; then
    echo "${LAST_ITEM::-1}"
    echo "${LAST_ITEM::-1}" > $HOME/scripts/mouseerrorstuff.txt
else
    echo "device not found"
fi
