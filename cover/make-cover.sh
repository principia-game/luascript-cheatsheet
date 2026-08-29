#!/bin/bash

magick -density 300 ../out/cheatsheet.pdf -verbose -background white -flatten cheatsheet.png

inkscape cover.svg -o cover.png

magick cover.png -crop 1361x1080+230+0 cover_itch_icon.png
magick cover.png -crop 1920x720+0+140 cover_itch_banner.png
