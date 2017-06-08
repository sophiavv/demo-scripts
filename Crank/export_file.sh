#!/bin/bash

#programmed for linux system

#exports .gde file to .gapp

storyboard_app_path=~/Crank_Software/Storyboard_Designer/Storyboard

#example file path: /home/sophia/storyboard_workspace/ButtonsAndSliders/ButtonsAndSliders.gde 
echo -n "Enter the file path and press [ENTER]: "
read gde_file_path

#find folder path
IFS='.' read -ra folder_path <<< "$gde_file_path"

#export gde to gapp
$storyboard_app_path -application com.crank.gdt.ui.gappexport model="$gde_file_path" output="${folder_path[0]}".gapp

# uncomment below to send data to execution_time.sh 
echo "${folder_path[0]}".gapp | /home/sophia/Desktop/Crank/execution_times.sh



