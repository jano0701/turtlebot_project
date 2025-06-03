from pathlib import Path

# Inhalt der README.md-Datei
readme_content = """
# 🐢 TurtleBot3 Simulation Project

Dieses Projekt simuliert den **TurtleBot3** mithilfe von **ROS Noetic** und **Gazebo**.  
Ziel ist es, ein autonomes Fahrzeug mit SLAM-Funktionalität zu entwickeln,
das sich selbstständig in einer simulierten Umgebung bewegen, kartieren und navigieren kann.
---

## 📂 Inhalt

- 🐢 **TurtleBot3** Steuerungspakete
- 🧠 Eigene ROS-Nodes (`slam_exploration_bot`)
- 🌍 Gazebo-Simulation
- 🧰 ROS Mes
- 🗺️ SLAM zur Kartenerstellung (`turtlebot3_slam`)
- 🔍 Autonome Exploration (`slam_exploration_bot/scripts`)

---

## ⚙️ Voraussetzungen

- Windows 10 oder 11
- [WSL2](https://docs.microsoft.com/windows/wsl/install) mit **Ubuntu 20.04**
- [ROS Noetic](http://wiki.ros.org/noetic)
- [VSCode](https://code.visualstudio.com/) (optional, empfohlen mit WSL-Extension)
- Dieses Repository wurde bereits lokal geklont

---

## 🚀 Projektstart & Simulation ausführen

### 1. Öffne PowerShell und starte WSL:

```powershell
wsl
```
### 2. Führe folgende Schritte im WSL-Terminal aus:

```powershell
# Wechsle in den Catkin-Workspace
cd ~/catkin_ws

# Kompiliere den Workspace (nur beim ersten Mal oder nach Änderungen)
catkin_make_isolated

# ROS-Umgebung aktivieren
source devel_isolated/setup.bash

# TurtleBot3-Modell setzen (wahlweise burger oder waffle)
export TURTLEBOT3_MODEL=burger

# Starte die Gazebo-Simulation
roslaunch turtlebot3_gazebo turtlebot3_world.launch
```
