# TurtleBot3 Simulation Project

Dieses Projekt simuliert den TurtleBot3 mithilfe von ROS Noetic und Gazebo.  
Ziel ist es, Navigation und Sensorik in einer virtuellen Welt zu testen.

## Inhalt
- 🐢 TurtleBot3 Steuerungspakete
- 🧠 Eigene ROS-Nodes (`mein_erstes_pkg`)
- 🌍 Gazebo-Simulation

## Nutzung
```bash
cd ~/catkin_ws
catkin_make_isolated
source devel_isolated/setup.bash
export TURTLEBOT3_MODEL=burger
roslaunch turtlebot3_gazebo turtlebot3_world.launch
