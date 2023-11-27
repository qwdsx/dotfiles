#!/bin/sh

TEMP="$(mktemp)"

dragon-drop -a -t -k > "${TEMP}"

for f in `cat "$TEMP"`; do
	echo "downloading $f"
	curl -s -O --output-dir "$HOME/ltr" "$f"
done

rm -f "${TEMP}" > /dev/null
