;; Auto-generated. Do not edit!


(when (boundp 'romipi_fiducials::GetVisible)
  (if (not (find-package "ROMIPI_FIDUCIALS"))
    (make-package "ROMIPI_FIDUCIALS"))
  (shadow 'GetVisible (find-package "ROMIPI_FIDUCIALS")))
(unless (find-package "ROMIPI_FIDUCIALS::GETVISIBLE")
  (make-package "ROMIPI_FIDUCIALS::GETVISIBLE"))
(unless (find-package "ROMIPI_FIDUCIALS::GETVISIBLEREQUEST")
  (make-package "ROMIPI_FIDUCIALS::GETVISIBLEREQUEST"))
(unless (find-package "ROMIPI_FIDUCIALS::GETVISIBLERESPONSE")
  (make-package "ROMIPI_FIDUCIALS::GETVISIBLERESPONSE"))

(in-package "ROS")



(if (not (find-package "ROMIPI_MSGS"))
  (ros::roseus-add-msgs "romipi_msgs"))


(defclass romipi_fiducials::GetVisibleRequest
  :super ros::object
  :slots ())

(defmethod romipi_fiducials::GetVisibleRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass romipi_fiducials::GetVisibleResponse
  :super ros::object
  :slots (_visible_robots ))

(defmethod romipi_fiducials::GetVisibleResponse
  (:init
   (&key
    ((:visible_robots __visible_robots) (instance romipi_msgs::NameList :init))
    )
   (send-super :init)
   (setq _visible_robots __visible_robots)
   self)
  (:visible_robots
   (&rest __visible_robots)
   (if (keywordp (car __visible_robots))
       (send* _visible_robots __visible_robots)
     (progn
       (if __visible_robots (setq _visible_robots (car __visible_robots)))
       _visible_robots)))
  (:serialization-length
   ()
   (+
    ;; romipi_msgs/NameList _visible_robots
    (send _visible_robots :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; romipi_msgs/NameList _visible_robots
       (send _visible_robots :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; romipi_msgs/NameList _visible_robots
     (send _visible_robots :deserialize buf ptr-) (incf ptr- (send _visible_robots :serialization-length))
   ;;
   self)
  )

(defclass romipi_fiducials::GetVisible
  :super ros::object
  :slots ())

(setf (get romipi_fiducials::GetVisible :md5sum-) "2f1d9a0bc9140638857d0d5a5f8f9d13")
(setf (get romipi_fiducials::GetVisible :datatype-) "romipi_fiducials/GetVisible")
(setf (get romipi_fiducials::GetVisible :request) romipi_fiducials::GetVisibleRequest)
(setf (get romipi_fiducials::GetVisible :response) romipi_fiducials::GetVisibleResponse)

(defmethod romipi_fiducials::GetVisibleRequest
  (:response () (instance romipi_fiducials::GetVisibleResponse :init)))

(setf (get romipi_fiducials::GetVisibleRequest :md5sum-) "2f1d9a0bc9140638857d0d5a5f8f9d13")
(setf (get romipi_fiducials::GetVisibleRequest :datatype-) "romipi_fiducials/GetVisibleRequest")
(setf (get romipi_fiducials::GetVisibleRequest :definition-)
      "---
romipi_msgs/NameList visible_robots



================================================================================
MSG: romipi_msgs/NameList
# list of robot name strings
string[] names

")

(setf (get romipi_fiducials::GetVisibleResponse :md5sum-) "2f1d9a0bc9140638857d0d5a5f8f9d13")
(setf (get romipi_fiducials::GetVisibleResponse :datatype-) "romipi_fiducials/GetVisibleResponse")
(setf (get romipi_fiducials::GetVisibleResponse :definition-)
      "---
romipi_msgs/NameList visible_robots



================================================================================
MSG: romipi_msgs/NameList
# list of robot name strings
string[] names

")



(provide :romipi_fiducials/GetVisible "2f1d9a0bc9140638857d0d5a5f8f9d13")


