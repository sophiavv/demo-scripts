#!/bin/bash

#programmed for linux system

#finds execution times of select events and saves to execution_times.txt

clear 

#setting up storyboard
export SB_PLUGINS=/home/sophia/Crank_Software/Storyboard_Engine/5.0.201703091128/linux-x86-opengles_2.0-x11-obj/plugins

export LD_LIBRARY_PATH=/home/sophia/Crank_Software/Storyboard_Engine/5.0.201703091128/linux-x86-opengles_2.0-x11-obj/lib

#events of interest
internal_app_init="Dispatch \\[gre\\.internalinit\\]"
screen_init="Display initialization complete"
screen_render="Dispatch \\[gre\\.screenshow\\.post\\]"

sbengine_path=/home/sophia/Crank_Software/Storyboard_Engine/5.0.201703091128/linux-x86-opengles_2.0-x11-obj/bin/sbengine

#example gapp_path: /home/sophia/storyboard_workspace/ButtonsAndSliders/ButtonsAndSliders.gapp

echo -n "Enter the gapp file path and press [ENTER]: "
echo -e "\n"
read gapp_file_path

#read the output from terminal and search for events 
timeout 3s $sbengine_path -vvvv $gapp_file_path | while read -r line ; do
	time=$(echo $line | grep "$internal_app_init\|$screen_init\|$screen_render") 
	if [ "$time" ];
	then
		echo "$time"		
		echo "$time" >> /home/sophia/Desktop/Crank/execution_times.txt
	fi
done





