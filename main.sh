#!/bin/bash
clear
printf "


▗▄▄▖ ▄ ▄▄▄▄  █  ▄ ▄   ▄     ▗▄▄▖ █ █  ▐▌ ▄▄▄ ▐▌   
▐▌ ▐▌▄ █   █ █▄▀  █   █     ▐▌ ▐▌█ ▀▄▄▞▘▀▄▄  ▐▌   
▐▛▀▘ █ █   █ █ ▀▄  ▀▀▀█     ▐▛▀▘ █      ▄▄▄▀ ▐▛▀▚▖
▐▌   █       █  █ ▄   █     ▐▌   █           ▐▌ ▐▌
                   ▀▀▀                            
                                                  
                                                  
"


echo "Have you installed all requirements? (Y or y)"
read ans


if [ $ans == "y" ] || [ $ans == "Y" ]; then
	echo "Okay!"
else 
	sudo pacman -Sy hyprland hyprlock hyprpaper hypridle kitty wofi cava btop flameshot wiremix bluetui
	git clone https://aur.archlinux.org/waybar-cava.git
	cd waybar-cava
	makepkg -si
	cd ..
	git clone https://aur.archlinux.org/wifitui.git
	cd wifitui
	makepkg -si
	cd ..
fi


echo "Do you wanna install PinkyPlushHyprland by JQx? (Y or y)"
read y

if [ $y == "Y" ] || [ $y == "y" ]; then
	echo "run"
	cp -riv configs/* ~/.config/
	cp -riv Sources-hyprland ~/Pictures
	cp -riv utilities ~/
else 
	echo "Thanks!"
fi
