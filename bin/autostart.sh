#!/bin/bash
#bspc rule -a latte-dock layer=above state=floating border=off
#latte-dock %u &
xcompmgr &
/home/miltfra/bin/load_bg &
#/home/miltfra/bin/polystart &

if [ $(hostname) == "desktop" ]; then
	for i in {1..5}; do
		sleep 1
		bspc config -m ^1 left_padding 0
		bspc config -m ^2 left_padding 52
	done
fi
