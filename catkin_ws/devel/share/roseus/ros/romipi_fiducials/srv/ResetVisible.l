;; Auto-generated. Do not edit!


(when (boundp 'romipi_fiducials::ResetVisible)
  (if (not (find-package "ROMIPI_FIDUCIALS"))
    (make-package "ROMIPI_FIDUCIALS"))
  (shadow 'ResetVisible (find-package "ROMIPI_FIDUCIALS")))
(unless (find-package "ROMIPI_FIDUCIALS::RESETVISIBLE")
  (make-package "ROMIPI_FIDUCIALS::RESETVISIBLE"))
(unless (find-package "ROMIPI_FIDUCIALS::RESETVISIBLEREQUEST")
  (make-package "ROMIPI_FIDUCIALS::RESETVISIBLEREQUEST"))
(unless (find-package "ROMIPI_FIDUCIALS::RESETVISIBLERESPONSE")
  (make-package "ROMIPI_FIDUCIALS::RESETVISIBLERESPONSE"))

(in-package "ROS")





(defclass romipi_fiducials::ResetVisibleRequest
  :super ros::object
  :slots ())

(defmethod romipi_fiducials::ResetVisibleRequest
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

(defclass romipi_fiducials::ResetVisibleResponse
  :super ros::object
  :slots ())

(defmethod romipi_fiducials::ResetVisibleResponse
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

(defclass romipi_fiducials::ResetVisible
  :super ros::object
  :slots ())

(setf (get romipi_fiducials::ResetVisible :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get romipi_fiducials::ResetVisible :datatype-) "romipi_fiducials/ResetVisible")
(setf (get romipi_fiducials::ResetVisible :request) romipi_fiducials::ResetVisibleRequest)
(setf (get romipi_fiducials::ResetVisible :response) romipi_fiducials::ResetVisibleResponse)

(defmethod romipi_fiducials::ResetVisibleRequest
  (:response () (instance romipi_fiducials::ResetVisibleResponse :init)))

(setf (get romipi_fiducials::ResetVisibleRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get romipi_fiducials::ResetVisibleRequest :datatype-) "romipi_fiducials/ResetVisibleRequest")
(setf (get romipi_fiducials::ResetVisibleRequest :definition-)
      "---

")

(setf (get romipi_fiducials::ResetVisibleResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get romipi_fiducials::ResetVisibleResponse :datatype-) "romipi_fiducials/ResetVisibleResponse")
(setf (get romipi_fiducials::ResetVisibleResponse :definition-)
      "---

")



(provide :romipi_fiducials/ResetVisible "d41d8cd98f00b204e9800998ecf8427e")


