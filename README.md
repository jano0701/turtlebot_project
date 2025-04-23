# TurtleBot3 Simulation Project

Dieses Projekt simuliert den TurtleBot3 mithilfe von ROS Noetic und Gazebo.  
Ziel ist es, Navigation und Sensorik in einer virtuellen Welt zu testen.

## Inhalt
- 🐢 TurtleBot3 Steuerungspakete
- 🧠 Eigene ROS-Nodes (`mein_erstes_pkg`)
- 🌍 Gazebo-Simulation

## 🧠 Projektstart & Simulation mit TurtleBot3 in Gazebo

### Voraussetzungen
- Windows 10 oder 11
- **WSL2 mit Ubuntu 20.04**
- **ROS Noetic**
- VSCode (optional, empfohlen mit WSL-Extension)
- Dieses Repository wurde bereits geklont und vorbereitet.

---

### 🚀 Start der Simulation (ab PowerShell)

1. **PowerShell öffnen**
2. **Starte WSL (Ubuntu-Umgebung):**
   ```powershell
   wsl

# Im WSL-Terminal:

# Wechsle in deinen Catkin-Workspace
cd ~/catkin_ws

# Workspace (nur beim ersten Mal oder nach Änderungen) kompilieren
catkin_make_isolated

# ROS-Umgebung aktivieren
source devel_isolated/setup.bash

# TurtleBot3-Modell definieren (burger oder waffle)
export TURTLEBOT3_MODEL=burger

# Gazebo mit TurtleBot3 starten
roslaunch turtlebot3_gazebo turtlebot3_world.launch
