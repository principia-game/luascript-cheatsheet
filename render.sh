#!/bin/bash

mkdir -p out/

weasyprint cheatsheet.html out/cheatsheet.pdf

okular out/cheatsheet.pdf &

declare -A replacements
replacements=(
	["icon-callbacks.svg"]="icon-callbacks_w.svg"
	["icon-cam.svg"]="icon-cam_w.svg"
	["icon-creature.svg"]="icon-creature_w.svg"
	["icon-entity.svg"]="icon-entity_w.svg"
	["icon-game.svg"]="icon-game_w.svg"
	["icon-this.svg"]="icon-this_w.svg"
	["icon-world.svg"]="icon-world_w.svg"
	["lualogo.svg"]="lualogo_bw.svg"
	["principia.png"]="principia_bw.png"
)

sed_expr=""
for old in "${!replacements[@]}"; do
    new=${replacements[$old]}
    sed_expr+="s/$old/$new/g;"
done

sed -e "$sed_expr" cheatsheet.html > cheatsheet_grey.html

weasyprint cheatsheet_grey.html out/cheatsheet_grey.pdf -s style_grey.css

okular out/cheatsheet_grey.pdf &
