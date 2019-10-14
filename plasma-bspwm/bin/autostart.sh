#!/bin/bash
#bspc rule -a latte-dock layer=above state=floating border=off
#latte-dock %u &
xcompmgr &
#/home/miltfra/bin/load_bg &
#/home/miltfra/bin/polystart &
$HOME/.config/wpg/wp_init.sh &
sleep 1
polybar -r left &
if [ $(hostname) == "desktop" ]; then
	for i in {1..3}; do
		sleep 1
		bspc config -m ^1 right_padding 56
		bspc config -m ^2 right_padding 0
		bpsc config -m ^1 left_padding 0
		bspc config -m ^1 left_padding 0
#		bspc config -m ^1 top_padding 25
	done
#	while :; do
#		sleep 1
#		bspc config -m ^1 right_padding 52
#	done
fi
