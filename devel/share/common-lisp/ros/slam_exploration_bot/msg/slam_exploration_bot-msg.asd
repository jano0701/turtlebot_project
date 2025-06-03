
(cl:in-package :asdf)

(defsystem "slam_exploration_bot-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Frontier" :depends-on ("_package_Frontier"))
    (:file "_package_Frontier" :depends-on ("_package"))
    (:file "FrontierList" :depends-on ("_package_FrontierList"))
    (:file "_package_FrontierList" :depends-on ("_package"))
  ))