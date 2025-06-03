;; Auto-generated. Do not edit!


(when (boundp 'slam_exploration_bot::FrontierList)
  (if (not (find-package "SLAM_EXPLORATION_BOT"))
    (make-package "SLAM_EXPLORATION_BOT"))
  (shadow 'FrontierList (find-package "SLAM_EXPLORATION_BOT")))
(unless (find-package "SLAM_EXPLORATION_BOT::FRONTIERLIST")
  (make-package "SLAM_EXPLORATION_BOT::FRONTIERLIST"))

(in-package "ROS")
;;//! \htmlinclude FrontierList.msg.html


(defclass slam_exploration_bot::FrontierList
  :super ros::object
  :slots (_frontiers ))

(defmethod slam_exploration_bot::FrontierList
  (:init
   (&key
    ((:frontiers __frontiers) ())
    )
   (send-super :init)
   (setq _frontiers __frontiers)
   self)
  (:frontiers
   (&rest __frontiers)
   (if (keywordp (car __frontiers))
       (send* _frontiers __frontiers)
     (progn
       (if __frontiers (setq _frontiers (car __frontiers)))
       _frontiers)))
  (:serialization-length
   ()
   (+
    ;; slam_exploration_bot/Frontier[] _frontiers
    (apply #'+ (send-all _frontiers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; slam_exploration_bot/Frontier[] _frontiers
     (write-long (length _frontiers) s)
     (dolist (elem _frontiers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; slam_exploration_bot/Frontier[] _frontiers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frontiers (let (r) (dotimes (i n) (push (instance slam_exploration_bot::Frontier :init) r)) r))
     (dolist (elem- _frontiers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get slam_exploration_bot::FrontierList :md5sum-) "88ec557839bec196cc2b3b90ef57f3e8")
(setf (get slam_exploration_bot::FrontierList :datatype-) "slam_exploration_bot/FrontierList")
(setf (get slam_exploration_bot::FrontierList :definition-)
      "slam_exploration_bot/Frontier[] frontiers

================================================================================
MSG: slam_exploration_bot/Frontier
int32 size
geometry_msgs/Point centroid

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :slam_exploration_bot/FrontierList "88ec557839bec196cc2b3b90ef57f3e8")


