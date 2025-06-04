#!/bin/bash

echo "🗑  Alte Karten gelöscht."
rm -f ~/catkin_ws/src/slam_exploration_bot/map/*.pgm
rm -f ~/catkin_ws/src/slam_exploration_bot/map/*.yaml

# Automatischer Start: Gazebo + Navigation + Exploration

export TURTLEBOT3_MODEL=burger
source /opt/ros/noetic/setup.bash
source ~/catkin_ws/devel/setup.bash

echo "🚀 Starte Gazebo (Simulation)..."
gnome-terminal --tab --title="Gazebo" -- bash -c "
    source /opt/ros/noetic/setup.bash;
    source ~/catkin_ws/devel/setup.bash;
    roslaunch turtlebot3_gazebo turtlebot3_world.launch;
    exec bash
"

sleep 5

echo "🧭 Starte Navigation (inkl. RViz)..."
gnome-terminal --tab --title="Navigation + RViz" -- bash -c "
    source /opt/ros/noetic/setup.bash;
    source ~/catkin_ws/devel/setup.bash;
    export TURTLEBOT3_MODEL=burger;
    roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=gmapping;
    exec bash
"

sleep 10

echo "🤖 Starte Exploration (Frontier)..."
gnome-terminal --tab --title="Frontier" -- bash -c "
    source /opt/ros/noetic/setup.bash;
    source ~/catkin_ws/devel/setup.bash;
    rosrun slam_exploration_bot frontier_exploration.py;
    exec bash
"

gnome-terminal --tab --title="Pure Pursuit" -- bash -c "
    source /opt/ros/noetic/setup.bash;
    source ~/catkin_ws/devel/setup.bash;
    rosrun slam_exploration_bot pure_pursuit.py;
    exec bash
"
sleep 10
# 3. Warten, bis Karte gespeichert ist
echo "🕐 Warte bis Karte gespeichert ist..."
while [ ! -f ~/catkin_ws/src/slam_exploration_bot/map/map.yaml ]; do
  sleep 1
done

echo "🗺️ Karte erkannt. Starte Navigation..."

echo "🛑 Beende alle Prozesse..."
# === Prozesse beenden ===
rosnode kill /turtlebot3_slam_gmapping
rosnode kill /pure_pursuit
rosnode kill /rviz
rosnode kill /frontier_exploration

sleep 8

killall -q -9 rviz
pkill -f pure_pursuit.py
pkill -f frontier_exploration

echo "🧭 Starte Navigation mit geladener Karte..."

sleep 10

# 4. Starte Navigation mit geladener Karte
gnome-terminal --tab --title="Navigation" -- bash -c "
    source /opt/ros/noetic/setup.bash;
    source ~/catkin_ws/devel/setup.bash;
    export TURTLEBOT3_MODEL=burger;
    roslaunch turtlebot3_navigation turtlebot3_navigation.launch map_file:=$HOME/catkin_ws/src/slam_exploration_bot/map/map.yaml; 
    exec bash
"

echo "✅ Alles gestartet!"
