#!/usr/bin/env python3
import rospy
from std_msgs.msg import String

def hallo_node():
    pub = rospy.Publisher('hallo_topic', String, queue_size=10)
    rospy.init_node('hallo_node', anonymous=True)
    rate = rospy.Rate(0.5)  # 0.5 Hz = alle 2 Sekunden

    while not rospy.is_shutdown():
        nachricht = "Hallo von Jano aus ROS!"
        rospy.loginfo(nachricht)
        pub.publish(nachricht)
        rate.sleep()

if __name__ == '__main__':
    try:
        hallo_node()
    except rospy.ROSInterruptException:
        pass

# Testst TArik

#whedgwlegzdlewgdli
