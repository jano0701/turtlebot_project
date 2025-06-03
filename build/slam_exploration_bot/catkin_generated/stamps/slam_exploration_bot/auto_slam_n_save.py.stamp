#!/usr/bin/env python3

import rospy
import actionlib
import subprocess
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from tf.transformations import quaternion_from_euler

goals = [
    (1.0, 0.0, 0.0),
    (1.0, 1.0, 1.57),
    (0.0, 1.0, 3.14),
    (-1.0, 0.5, -1.57)
]

def send_goal(x, y, theta):
    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = x
    goal.target_pose.pose.position.y = y
    q = quaternion_from_euler(0, 0, theta)
    goal.target_pose.pose.orientation.x = q[0]
    goal.target_pose.pose.orientation.y = q[1]
    goal.target_pose.pose.orientation.z = q[2]
    goal.target_pose.pose.orientation.w = q[3]
    client.send_goal(goal)
    client.wait_for_result()

if __name__ == '__main__':
    rospy.init_node('auto_slam_n_save')
    client = actionlib.SimpleActionClient('move_base', MoveBaseAction)
    rospy.loginfo("Warte auf move_base Server...")
    client.wait_for_server()
    rospy.loginfo("Sende Ziele...")

    for g in goals:
        rospy.loginfo(f"Sende Ziel: {g}")
        send_goal(*g)
        rospy.sleep(2)

    rospy.loginfo("Alle Ziele erreicht. Speichere Karte...")

    # Karte speichern
    try:
        subprocess.run(["rosrun", "map_server", "map_saver", "-f", "/home/$USER/auto_map"], check=True)
        rospy.loginfo("🗺 Karte gespeichert unter /home/$USER/auto_map.pgm")
    except subprocess.CalledProcessError:
        rospy.logerr("❌ Fehler beim Speichern der Karte")
