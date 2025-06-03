#!/usr/bin/env python3
import rospy
import random
import os
import sys
import time

# Füge Skriptverzeichnis zum Python-Modulpfad hinzu
sys.path.insert(0, os.path.dirname(__file__))

from nav_msgs.msg import OccupancyGrid
from geometry_msgs.msg import PoseStamped
from std_srvs.srv import Empty
from nav_msgs.srv import GetMap
from geometry_msgs.msg import PoseWithCovarianceStamped

from frontier_search import FrontierSearch
from path_planner import PathPlanner


class AutoExplorer:
    def __init__(self):
        rospy.init_node("exploration_and_navigation")

        self.map_data = None
        self.goal_pub = rospy.Publisher("/move_base_simple/goal", PoseStamped, queue_size=1)
        self.map_sub = rospy.Subscriber("/map", OccupancyGrid, self.map_callback)

        self.frontier_search = FrontierSearch()
        self.path_planner = PathPlanner()

        # Warte kurz auf Verbindung
        rospy.sleep(2)

        rospy.loginfo("🔍 Starte Exploration...")
        rospy.Timer(rospy.Duration(5), self.check_frontiers)

    def map_callback(self, data):
        self.map_data = data

    def check_frontiers(self, event):
        if self.map_data is None:
            return

        # Aktuelle Roboter-Position (für echten Roboter müsstest du TF benutzen)
        robot_pose = (int(self.map_data.info.width / 2), int(self.map_data.info.height / 2))

        rospy.loginfo("📡 Suche nach Frontiers...")
        frontier_list, _ = self.frontier_search.search(
            self.map_data, robot_pose, include_frontier_cells=False
        )

        if not frontier_list.frontiers:
            rospy.loginfo("✅ Keine weiteren Frontiers – Karte vollständig!")
            self.save_map()
            rospy.signal_shutdown("Exploration abgeschlossen.")
            return

        # Ziel wählen (z. B. zufällige Frontier)
        goal_cell = random.choice(frontier_list.frontiers).centroid
        goal_point = PathPlanner.grid_to_world(self.map_data, (goal_cell.x, goal_cell.y))
        goal_pose = PoseStamped()
        goal_pose.header.frame_id = "map"
        goal_pose.pose.position = goal_point
        goal_pose.pose.orientation.w = 1.0  # Keine Rotation

        rospy.loginfo(f"🎯 Neues Ziel gesendet: ({goal_point.x:.2f}, {goal_point.y:.2f})")
        self.goal_pub.publish(goal_pose)

    def save_map(self):
        rospy.loginfo("💾 Speichere Karte...")
        try:
            os.system("rosrun map_server map_saver -f ~/catkin_ws/src/slam_exploration_bot/map/map")
            rospy.loginfo("✅ Karte gespeichert!")
        except Exception as e:
            rospy.logerr(f"❌ Fehler beim Speichern der Karte: {e}")


if __name__ == "__main__":
    try:
        explorer = AutoExplorer()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
