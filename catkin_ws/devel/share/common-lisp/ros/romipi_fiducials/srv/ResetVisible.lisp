; Auto-generated. Do not edit!


(cl:in-package romipi_fiducials-srv)


;//! \htmlinclude ResetVisible-request.msg.html

(cl:defclass <ResetVisible-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetVisible-request (<ResetVisible-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetVisible-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetVisible-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romipi_fiducials-srv:<ResetVisible-request> is deprecated: use romipi_fiducials-srv:ResetVisible-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetVisible-request>) ostream)
  "Serializes a message object of type '<ResetVisible-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetVisible-request>) istream)
  "Deserializes a message object of type '<ResetVisible-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetVisible-request>)))
  "Returns string type for a service object of type '<ResetVisible-request>"
  "romipi_fiducials/ResetVisibleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetVisible-request)))
  "Returns string type for a service object of type 'ResetVisible-request"
  "romipi_fiducials/ResetVisibleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetVisible-request>)))
  "Returns md5sum for a message object of type '<ResetVisible-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetVisible-request)))
  "Returns md5sum for a message object of type 'ResetVisible-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetVisible-request>)))
  "Returns full string definition for message of type '<ResetVisible-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetVisible-request)))
  "Returns full string definition for message of type 'ResetVisible-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetVisible-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetVisible-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetVisible-request
))
;//! \htmlinclude ResetVisible-response.msg.html

(cl:defclass <ResetVisible-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ResetVisible-response (<ResetVisible-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResetVisible-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResetVisible-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romipi_fiducials-srv:<ResetVisible-response> is deprecated: use romipi_fiducials-srv:ResetVisible-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResetVisible-response>) ostream)
  "Serializes a message object of type '<ResetVisible-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResetVisible-response>) istream)
  "Deserializes a message object of type '<ResetVisible-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResetVisible-response>)))
  "Returns string type for a service object of type '<ResetVisible-response>"
  "romipi_fiducials/ResetVisibleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetVisible-response)))
  "Returns string type for a service object of type 'ResetVisible-response"
  "romipi_fiducials/ResetVisibleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResetVisible-response>)))
  "Returns md5sum for a message object of type '<ResetVisible-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResetVisible-response)))
  "Returns md5sum for a message object of type 'ResetVisible-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResetVisible-response>)))
  "Returns full string definition for message of type '<ResetVisible-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResetVisible-response)))
  "Returns full string definition for message of type 'ResetVisible-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResetVisible-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResetVisible-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ResetVisible-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ResetVisible)))
  'ResetVisible-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ResetVisible)))
  'ResetVisible-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResetVisible)))
  "Returns string type for a service object of type '<ResetVisible>"
  "romipi_fiducials/ResetVisible")