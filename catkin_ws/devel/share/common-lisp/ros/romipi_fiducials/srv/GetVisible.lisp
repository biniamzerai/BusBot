; Auto-generated. Do not edit!


(cl:in-package romipi_fiducials-srv)


;//! \htmlinclude GetVisible-request.msg.html

(cl:defclass <GetVisible-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetVisible-request (<GetVisible-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVisible-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVisible-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romipi_fiducials-srv:<GetVisible-request> is deprecated: use romipi_fiducials-srv:GetVisible-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVisible-request>) ostream)
  "Serializes a message object of type '<GetVisible-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVisible-request>) istream)
  "Deserializes a message object of type '<GetVisible-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVisible-request>)))
  "Returns string type for a service object of type '<GetVisible-request>"
  "romipi_fiducials/GetVisibleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVisible-request)))
  "Returns string type for a service object of type 'GetVisible-request"
  "romipi_fiducials/GetVisibleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVisible-request>)))
  "Returns md5sum for a message object of type '<GetVisible-request>"
  "2f1d9a0bc9140638857d0d5a5f8f9d13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVisible-request)))
  "Returns md5sum for a message object of type 'GetVisible-request"
  "2f1d9a0bc9140638857d0d5a5f8f9d13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVisible-request>)))
  "Returns full string definition for message of type '<GetVisible-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVisible-request)))
  "Returns full string definition for message of type 'GetVisible-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVisible-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVisible-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVisible-request
))
;//! \htmlinclude GetVisible-response.msg.html

(cl:defclass <GetVisible-response> (roslisp-msg-protocol:ros-message)
  ((visible_robots
    :reader visible_robots
    :initarg :visible_robots
    :type romipi_msgs-msg:NameList
    :initform (cl:make-instance 'romipi_msgs-msg:NameList)))
)

(cl:defclass GetVisible-response (<GetVisible-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetVisible-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetVisible-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romipi_fiducials-srv:<GetVisible-response> is deprecated: use romipi_fiducials-srv:GetVisible-response instead.")))

(cl:ensure-generic-function 'visible_robots-val :lambda-list '(m))
(cl:defmethod visible_robots-val ((m <GetVisible-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romipi_fiducials-srv:visible_robots-val is deprecated.  Use romipi_fiducials-srv:visible_robots instead.")
  (visible_robots m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetVisible-response>) ostream)
  "Serializes a message object of type '<GetVisible-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'visible_robots) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetVisible-response>) istream)
  "Deserializes a message object of type '<GetVisible-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'visible_robots) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetVisible-response>)))
  "Returns string type for a service object of type '<GetVisible-response>"
  "romipi_fiducials/GetVisibleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVisible-response)))
  "Returns string type for a service object of type 'GetVisible-response"
  "romipi_fiducials/GetVisibleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetVisible-response>)))
  "Returns md5sum for a message object of type '<GetVisible-response>"
  "2f1d9a0bc9140638857d0d5a5f8f9d13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetVisible-response)))
  "Returns md5sum for a message object of type 'GetVisible-response"
  "2f1d9a0bc9140638857d0d5a5f8f9d13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetVisible-response>)))
  "Returns full string definition for message of type '<GetVisible-response>"
  (cl:format cl:nil "romipi_msgs/NameList visible_robots~%~%~%~%================================================================================~%MSG: romipi_msgs/NameList~%# list of robot name strings~%string[] names~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetVisible-response)))
  "Returns full string definition for message of type 'GetVisible-response"
  (cl:format cl:nil "romipi_msgs/NameList visible_robots~%~%~%~%================================================================================~%MSG: romipi_msgs/NameList~%# list of robot name strings~%string[] names~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetVisible-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'visible_robots))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetVisible-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetVisible-response
    (cl:cons ':visible_robots (visible_robots msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetVisible)))
  'GetVisible-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetVisible)))
  'GetVisible-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetVisible)))
  "Returns string type for a service object of type '<GetVisible>"
  "romipi_fiducials/GetVisible")