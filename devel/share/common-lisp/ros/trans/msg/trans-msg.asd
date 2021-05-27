
(cl:in-package :asdf)

(defsystem "trans-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "out_position_angle_distance" :depends-on ("_package_out_position_angle_distance"))
    (:file "_package_out_position_angle_distance" :depends-on ("_package"))
    (:file "position_angle_distance" :depends-on ("_package_position_angle_distance"))
    (:file "_package_position_angle_distance" :depends-on ("_package"))
  ))