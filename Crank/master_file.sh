#!/bin/bash

#programmed for linux system

#uncomment export_file.sh to pipe to automation_times.sh
#export and find execution times for each app

touch /home/sophia/Desktop/Crank/execution_times.txt

echo -e "Empty Content \n" > /home/sophia/Desktop/Crank/execution_times.txt
echo /home/sophia/storyboard_workspace/EmptyContent/EmptyContent.gde | /home/sophia/Desktop/Crank/export_file.sh

sleep 6s

echo -e "\n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo -e "ButtonsAndSliders (8 screens) \n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo /home/sophia/storyboard_workspace/ButtonsAndSliders/ButtonsAndSliders.gde | /home/sophia/Desktop/Crank/export_file.sh

sleep 6s

echo -e "\n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo -e "ThermostatIO (5 screens) \n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo /home/sophia/storyboard_workspace/ThermostatIO/ThermostatIO.gde | /home/sophia/Desktop/Crank/export_file.sh

sleep 6s

echo -e "\n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo -e "Circles \n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo /home/sophia/storyboard_workspace/Circles/Circles.gde | /home/sophia/Desktop/Crank/export_file.sh

sleep 6s

echo -e "\n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo -e "Scrollbar \n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo /home/sophia/storyboard_workspace/Scrollbar/Scrollbar.gde | /home/sophia/Desktop/Crank/export_file.sh

echo -e "\n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo -e "Virtual Keyboard \n" >> /home/sophia/Desktop/Crank/execution_times.txt
echo /home/sophia/storyboard_workspace/VirtualKeyboard/VirtualKeyboard.gde | /home/sophia/Desktop/Crank/export_file.sh

