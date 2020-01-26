;; Auto-generated. Do not edit!


(when (boundp 'romipi_fiducials::GetPose)
  (if (not (find-package "ROMIPI_FIDUCIALS"))
    (make-package "ROMIPI_FIDUCIALS"))
  (shadow 'GetPose (find-package "ROMIPI_FIDUCIALS")))
(unless (find-package "ROMIPI_FIDUCIALS::GETPOSE")
  (make-package "ROMIPI_FIDUCIALS::GETPOSE"))
(unless (find-package "ROMIPI_FIDUCIALS::GETPOSEREQUEST")
  (make-package "ROMIPI_FIDUCIALS::GETPOSEREQUEST"))
(unless (find-package "ROMIPI_FIDUCIALS::GETPOSERESPONSE")
  (make-package "ROMIPI_FIDUCIALS::GETPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass romipi_fiducials::GetPoseRequest
  :super ros::object
  :slots (_name ))

(defmethod romipi_fiducials::GetPoseRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass romipi_fiducials::GetPoseResponse
  :super ros::object
  :slots (_found _pose ))

(defmethod romipi_fiducials::GetPoseResponse
  (:init
   (&key
    ((:found __found) nil)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _found __found)
   (setq _pose __pose)
   self)
  (:found
   (&optional __found)
   (if __found (setq _found __found)) _found)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; bool _found
    1
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _found
       (if _found (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _found
     (setq _found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass romipi_fiducials::GetPose
  :super ros::object
  :slots ())

(setf (get romipi_fiducials::GetPose :md5sum-) "33de2d9d4c2439babf9abf96b1e0a013")
(setf (get romipi_fiducials::GetPose :datatype-) "romipi_fiducials/GetPose")
(setf (get romipi_fiducials::GetPose :request) romipi_fiducials::GetPoseRequest)
(setf (get romipi_fiducials::GetPose :response) romipi_fiducials::GetPoseResponse)

(defmethod romipi_fiducials::GetPoseRequest
  (:response () (instance romipi_fiducials::GetPoseResponse :init)))

(setf (get romipi_fiducials::GetPoseRequest :md5sum-) "33de2d9d4c2439babf9abf96b1e0a013")
(setf (get romipi_fiducials::GetPoseRequest :datatype-) "romipi_fiducials/GetPoseRequest")
(setf (get romipi_fiducials::GetPoseRequest :definition-)
      "string name
---
bool found
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get romipi_fiducials::GetPoseResponse :md5sum-) "33de2d9d4c2439babf9abf96b1e0a013")
(setf (get romipi_fiducials::GetPoseResponse :datatype-) "romipi_fiducials/GetPoseResponse")
(setf (get romipi_fiducials::GetPoseResponse :definition-)
      "string name
---
bool found
geometry_msgs/PoseStamped pose


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :romipi_fiducials/GetPose "33de2d9d4c2439babf9abf96b1e0a013")


