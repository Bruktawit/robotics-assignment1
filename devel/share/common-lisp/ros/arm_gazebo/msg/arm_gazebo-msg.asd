
(cl:in-package :asdf)

(defsystem "arm_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joint_angles" :depends-on ("_package_joint_angles"))
    (:file "_package_joint_angles" :depends-on ("_package"))
    (:file "vector" :depends-on ("_package_vector"))
    (:file "_package_vector" :depends-on ("_package"))
  ))