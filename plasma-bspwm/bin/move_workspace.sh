#!/bin/bash

M=$(bspc query -M any.focused)
bspc desktop -m $M
