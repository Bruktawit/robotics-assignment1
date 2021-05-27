;; Auto-generated. Do not edit!


(when (boundp 'trans::arm_joint_angles)
  (if (not (find-package "TRANS"))
    (make-package "TRANS"))
  (shadow 'arm_joint_angles (find-package "TRANS")))
(unless (find-package "TRANS::ARM_JOINT_ANGLES")
  (make-package "TRANS::ARM_JOINT_ANGLES"))

(in-package "ROS")
;;//! \htmlinclude arm_joint_angles.msg.html


(defclass trans::arm_joint_angles
  :super ros::object
  :slots (_z0 _x1 _x2 _x3 ))

(defmethod trans::arm_joint_angles
  (:init
   (&key
    ((:z0 __z0) 0.0)
    ((:x1 __x1) 0.0)
    ((:x2 __x2) 0.0)
    ((:x3 __x3) 0.0)
    )
   (send-super :init)
   (setq _z0 (float __z0))
   (setq _x1 (float __x1))
   (setq _x2 (float __x2))
   (setq _x3 (float __x3))
   self)
  (:z0
   (&optional __z0)
   (if __z0 (setq _z0 __z0)) _z0)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:x2
   (&optional __x2)
   (if __x2 (setq _x2 __x2)) _x2)
  (:x3
   (&optional __x3)
   (if __x3 (setq _x3 __x3)) _x3)
  (:serialization-length
   ()
   (+
    ;; float64 _z0
    8
    ;; float64 _x1
    8
    ;; float64 _x2
    8
    ;; float64 _x3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _z0
       (sys::poke _z0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x2
       (sys::poke _x2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x3
       (sys::poke _x3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _z0
     (setq _z0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x1
     (setq _x1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x2
     (setq _x2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x3
     (setq _x3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get trans::arm_joint_angles :md5sum-) "9dfb18a64868d584f9a6327efbfbf276")
(setf (get trans::arm_joint_angles :datatype-) "trans/arm_joint_angles")
(setf (get trans::arm_joint_angles :definition-)
      "float64 z0
float64 x1
float64 x2
float64 x3
")



(provide :trans/arm_joint_angles "9dfb18a64868d584f9a6327efbfbf276")


