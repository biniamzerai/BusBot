; Auto-generated. Do not edit!


(cl:in-package romipi_fiducials-srv)


;//! \htmlinclude GetPose-request.msg.html

(cl:defclass <GetPose-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetPose-request (<GetPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romipi_fiducials-srv:<GetPose-request> is deprecated: use romipi_fiducials-srv:GetPose-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romipi_fiducials-srv:name-val is deprecated.  Use romipi_fiducials-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPose-request>) ostream)
  "Serializes a message object of type '<GetPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPose-request>) istream)
  "Deserializes a message object of type '<GetPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPose-request>)))
  "Returns string type for a service object of type '<GetPose-request>"
  "romipi_fiducials/GetPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPose-request)))
  "Returns string type for a service object of type 'GetPose-request"
  "romipi_fiducials/GetPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPose-request>)))
  "Returns md5sum for a message object of type '<GetPose-request>"
  "33de2d9d4c2439babf9abf96b1e0a013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPose-request)))
  "Returns md5sum for a message object of type 'GetPose-request"
  "33de2d9d4c2439babf9abf96b1e0a013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPose-request>)))
  "Returns full string definition for message of type '<GetPose-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPose-request)))
  "Returns full string definition for message of type 'GetPose-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPose-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetPose-response.msg.html

(cl:defclass <GetPose-response> (roslisp-msg-protocol:ros-message)
  ((found
    :reader found
    :initarg :found
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetPose-response (<GetPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romipi_fiducials-srv:<GetPose-response> is deprecated: use romipi_fiducials-srv:GetPose-response instead.")))

(cl:ensure-generic-function 'found-val :lambda-list '(m))
(cl:defmethod found-val ((m <GetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romipi_fiducials-srv:found-val is deprecated.  Use romipi_fiducials-srv:found instead.")
  (found m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romipi_fiducials-srv:pose-val is deprecated.  Use romipi_fiducials-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPose-response>) ostream)
  "Serializes a message object of type '<GetPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'found) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPose-response>) istream)
  "Deserializes a message object of type '<GetPose-response>"
    (cl:setf (cl:slot-value msg 'found) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPose-response>)))
  "Returns string type for a service object of type '<GetPose-response>"
  "romipi_fiducials/GetPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPose-response)))
  "Returns string type for a service object of type 'GetPose-response"
  "romipi_fiducials/GetPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPose-response>)))
  "Returns md5sum for a message object of type '<GetPose-response>"
  "33de2d9d4c2439babf9abf96b1e0a013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPose-response)))
  "Returns md5sum for a message object of type 'GetPose-response"
  "33de2d9d4c2439babf9abf96b1e0a013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPose-response>)))
  "Returns full string definition for message of type '<GetPose-response>"
  (cl:format cl:nil "bool found~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPose-response)))
  "Returns full string definition for message of type 'GetPose-response"
  (cl:format cl:nil "bool found~%geometry_msgs/PoseStamped pose~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPose-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPose-response
    (cl:cons ':found (found msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPose)))
  'GetPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPose)))
  'GetPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPose)))
  "Returns string type for a service object of type '<GetPose>"
  "romipi_fiducials/GetPose")