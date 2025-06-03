;; Auto-generated. Do not edit!


(when (boundp 'slam_exploration_bot::Frontier)
  (if (not (find-package "SLAM_EXPLORATION_BOT"))
    (make-package "SLAM_EXPLORATION_BOT"))
  (shadow 'Frontier (find-package "SLAM_EXPLORATION_BOT")))
(unless (find-package "SLAM_EXPLORATION_BOT::FRONTIER")
  (make-package "SLAM_EXPLORATION_BOT::FRONTIER"))

(in-package "ROS")
;;//! \htmlinclude Frontier.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass slam_exploration_bot::Frontier
  :super ros::object
  :slots (_size _centroid ))

(defmethod slam_exploration_bot::Frontier
  (:init
   (&key
    ((:size __size) 0)
    ((:centroid __centroid) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _size (round __size))
   (setq _centroid __centroid)
   self)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:centroid
   (&rest __centroid)
   (if (keywordp (car __centroid))
       (send* _centroid __centroid)
     (progn
       (if __centroid (setq _centroid (car __centroid)))
       _centroid)))
  (:serialization-length
   ()
   (+
    ;; int32 _size
    4
    ;; geometry_msgs/Point _centroid
    (send _centroid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _size
       (write-long _size s)
     ;; geometry_msgs/Point _centroid
       (send _centroid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _centroid
     (send _centroid :deserialize buf ptr-) (incf ptr- (send _centroid :serialization-length))
   ;;
   self)
  )

(setf (get slam_exploration_bot::Frontier :md5sum-) "f2457d72f7a7c5658c06f2ff1084acb2")
(setf (get slam_exploration_bot::Frontier :datatype-) "slam_exploration_bot/Frontier")
(setf (get slam_exploration_bot::Frontier :definition-)
      "int32 size
geometry_msgs/Point centroid

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :slam_exploration_bot/Frontier "f2457d72f7a7c5658c06f2ff1084acb2")


