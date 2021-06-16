;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::FK)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'FK (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::FK")
  (make-package "ARM_GAZEBO::FK"))
(unless (find-package "ARM_GAZEBO::FKREQUEST")
  (make-package "ARM_GAZEBO::FKREQUEST"))
(unless (find-package "ARM_GAZEBO::FKRESPONSE")
  (make-package "ARM_GAZEBO::FKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::FKRequest
  :super ros::object
  :slots (_joint_angles _link_lengths ))

(defmethod arm_gazebo::FKRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:link_lengths __link_lengths) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   (setq _link_lengths __link_lengths)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:link_lengths
   (&optional __link_lengths)
   (if __link_lengths (setq _link_lengths __link_lengths)) _link_lengths)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint_angles
    (* 4    (length _joint_angles)) 4
    ;; float32[] _link_lengths
    (* 4    (length _link_lengths)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint_angles
     (write-long (length _joint_angles) s)
     (dotimes (i (length _joint_angles))
       (sys::poke (elt _joint_angles i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _link_lengths
     (write-long (length _link_lengths) s)
     (dotimes (i (length _link_lengths))
       (sys::poke (elt _link_lengths i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint_angles
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_angles (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_angles i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _link_lengths
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _link_lengths (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _link_lengths i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::FKResponse
  :super ros::object
  :slots (_actuator_pose ))

(defmethod arm_gazebo::FKResponse
  (:init
   (&key
    ((:actuator_pose __actuator_pose) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _actuator_pose __actuator_pose)
   self)
  (:actuator_pose
   (&optional __actuator_pose)
   (if __actuator_pose (setq _actuator_pose __actuator_pose)) _actuator_pose)
  (:serialization-length
   ()
   (+
    ;; float32[] _actuator_pose
    (* 4    (length _actuator_pose)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _actuator_pose
     (write-long (length _actuator_pose) s)
     (dotimes (i (length _actuator_pose))
       (sys::poke (elt _actuator_pose i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _actuator_pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuator_pose (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actuator_pose i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::FK
  :super ros::object
  :slots ())

(setf (get arm_gazebo::FK :md5sum-) "d6467ab67f7bb5808e8a16c59a3db1f1")
(setf (get arm_gazebo::FK :datatype-) "arm_gazebo/FK")
(setf (get arm_gazebo::FK :request) arm_gazebo::FKRequest)
(setf (get arm_gazebo::FK :response) arm_gazebo::FKResponse)

(defmethod arm_gazebo::FKRequest
  (:response () (instance arm_gazebo::FKResponse :init)))

(setf (get arm_gazebo::FKRequest :md5sum-) "d6467ab67f7bb5808e8a16c59a3db1f1")
(setf (get arm_gazebo::FKRequest :datatype-) "arm_gazebo/FKRequest")
(setf (get arm_gazebo::FKRequest :definition-)
      "float32[] joint_angles
float32[] link_lengths
---
float32[] actuator_pose
")

(setf (get arm_gazebo::FKResponse :md5sum-) "d6467ab67f7bb5808e8a16c59a3db1f1")
(setf (get arm_gazebo::FKResponse :datatype-) "arm_gazebo/FKResponse")
(setf (get arm_gazebo::FKResponse :definition-)
      "float32[] joint_angles
float32[] link_lengths
---
float32[] actuator_pose
")



(provide :arm_gazebo/FK "d6467ab67f7bb5808e8a16c59a3db1f1")


