
(cl:in-package :asdf)

(defsystem "romipi_fiducials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :romipi_msgs-msg
)
  :components ((:file "_package")
    (:file "GetPose" :depends-on ("_package_GetPose"))
    (:file "_package_GetPose" :depends-on ("_package"))
    (:file "GetVisible" :depends-on ("_package_GetVisible"))
    (:file "_package_GetVisible" :depends-on ("_package"))
    (:file "ResetVisible" :depends-on ("_package_ResetVisible"))
    (:file "_package_ResetVisible" :depends-on ("_package"))
  ))