#!/bin/bash

# Automatisches SLAM & Mapping Setup

export TURTLEBOT3_MODEL=burger
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash

echo "🚀 Starte Gazebo..."
gnome-terminal --tab --title="Gazebo" -- bash -c \
"source /opt/ros/noetic/setup.bash; source ~/catkin_ws/devel/setup.bash; export TURTLEBOT3_MODEL=burger; roslaunch turtlebot3_gazebo turtlebot3_world.launch; exec bash"

sleep 5

echo "🧠 Starte Navigation (inkl. SLAM)..."
gnome-terminal --tab --title="Navigation" -- bash -c \
"source /opt/ros/noetic/setup.bash; source ~/catkin_ws/devel/setup.bash; export TURTLEBOT3_MODEL=burger; roslaunch turtlebot3_navigation turtlebot3_navigation.launch; exec bash"

sleep 10

echo "🤖 Starte automatisches Fahren + Kartenspeicherung..."
gnome-terminal --tab --title="Auto SLAM + Save" -- bash -c \
"source /opt/ros/noetic/setup.bash; source ~/catkin_ws/devel/setup.bash; rosrun turtlebot3_autoslam auto_slam_n_save.py; exec bash"

echo "✅ Alles wurde gestartet!"
