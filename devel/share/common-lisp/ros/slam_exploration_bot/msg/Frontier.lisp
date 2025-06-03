; Auto-generated. Do not edit!


(cl:in-package slam_exploration_bot-msg)


;//! \htmlinclude Frontier.msg.html

(cl:defclass <Frontier> (roslisp-msg-protocol:ros-message)
  ((size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (centroid
    :reader centroid
    :initarg :centroid
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Frontier (<Frontier>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Frontier>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Frontier)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_exploration_bot-msg:<Frontier> is deprecated: use slam_exploration_bot-msg:Frontier instead.")))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <Frontier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_exploration_bot-msg:size-val is deprecated.  Use slam_exploration_bot-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'centroid-val :lambda-list '(m))
(cl:defmethod centroid-val ((m <Frontier>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_exploration_bot-msg:centroid-val is deprecated.  Use slam_exploration_bot-msg:centroid instead.")
  (centroid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Frontier>) ostream)
  "Serializes a message object of type '<Frontier>"
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'centroid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Frontier>) istream)
  "Deserializes a message object of type '<Frontier>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'centroid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Frontier>)))
  "Returns string type for a message object of type '<Frontier>"
  "slam_exploration_bot/Frontier")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Frontier)))
  "Returns string type for a message object of type 'Frontier"
  "slam_exploration_bot/Frontier")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Frontier>)))
  "Returns md5sum for a message object of type '<Frontier>"
  "f2457d72f7a7c5658c06f2ff1084acb2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Frontier)))
  "Returns md5sum for a message object of type 'Frontier"
  "f2457d72f7a7c5658c06f2ff1084acb2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Frontier>)))
  "Returns full string definition for message of type '<Frontier>"
  (cl:format cl:nil "int32 size~%geometry_msgs/Point centroid~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Frontier)))
  "Returns full string definition for message of type 'Frontier"
  (cl:format cl:nil "int32 size~%geometry_msgs/Point centroid~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Frontier>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'centroid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Frontier>))
  "Converts a ROS message object to a list"
  (cl:list 'Frontier
    (cl:cons ':size (size msg))
    (cl:cons ':centroid (centroid msg))
))
