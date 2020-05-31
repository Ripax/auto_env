#!/bin/bash -e
# Setenv v1.0
# Powered by HTMLDigger
# Credits goes to HTMLdigger

trap 'printf "\n";stop' 2

banner() {
clear
printf "\e[1;92m  ╦ ╦╔╦╗╔╦╗╦  ╔╦╗┬┌─┐┌─┐┌─┐┬─┐   \e[0m\n"
printf "\e[1;92m  ╠═╣ ║ ║║║║   ║║││ ┬│ ┬├┤ ├┬┘\e[0m\n"
printf "\e[1;92m |╩ ╩ ╩ ╩ ╩╩═╝═╩╝┴└─┘└─┘└─┘┴└─\e[0m\n"

printf " \e[1;77m www.htmldigger.in \e[0m \n"
}

#Fail safe for original user sources.list in case setup was interrupted in middle last time
file="/home/rion/MyWorks/bash/bin/duck"
if [ -f "$file" ]
then
echo "Setup Detected that your previous run was interrupted in middle , fixing your original repositories list ."
sleep 4s
# rm -f /etc/apt/sources.list
# mv /etc/apt/sources.list.fatrat /etc/apt/sources.list
echo "Your Original repository list was recovered. ;) ..... beginning setup"
echo ""
echo "Cleaning previous repositories cache & updating your repository ."
# sudo apt-get clean && apt-get update -y
sleep 3s
else
echo "else command."
fi 