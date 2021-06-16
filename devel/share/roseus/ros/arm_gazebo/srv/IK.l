;; Auto-generated. Do not edit!


(when (boundp 'arm_gazebo::IK)
  (if (not (find-package "ARM_GAZEBO"))
    (make-package "ARM_GAZEBO"))
  (shadow 'IK (find-package "ARM_GAZEBO")))
(unless (find-package "ARM_GAZEBO::IK")
  (make-package "ARM_GAZEBO::IK"))
(unless (find-package "ARM_GAZEBO::IKREQUEST")
  (make-package "ARM_GAZEBO::IKREQUEST"))
(unless (find-package "ARM_GAZEBO::IKRESPONSE")
  (make-package "ARM_GAZEBO::IKRESPONSE"))

(in-package "ROS")





(defclass arm_gazebo::IKRequest
  :super ros::object
  :slots (_joint_angles _link_lengths _positions ))

(defmethod arm_gazebo::IKRequest
  (:init
   (&key
    ((:joint_angles __joint_angles) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:link_lengths __link_lengths) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_angles __joint_angles)
   (setq _link_lengths __link_lengths)
   (setq _positions __positions)
   self)
  (:joint_angles
   (&optional __joint_angles)
   (if __joint_angles (setq _joint_angles __joint_angles)) _joint_angles)
  (:link_lengths
   (&optional __link_lengths)
   (if __link_lengths (setq _link_lengths __link_lengths)) _link_lengths)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint_angles
    (* 4    (length _joint_angles)) 4
    ;; float32[] _link_lengths
    (* 4    (length _link_lengths)) 4
    ;; float32[] _positions
    (* 4    (length _positions)) 4
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
     ;; float32[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::IKResponse
  :super ros::object
  :slots (_target_positions ))

(defmethod arm_gazebo::IKResponse
  (:init
   (&key
    ((:target_positions __target_positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _target_positions __target_positions)
   self)
  (:target_positions
   (&optional __target_positions)
   (if __target_positions (setq _target_positions __target_positions)) _target_positions)
  (:serialization-length
   ()
   (+
    ;; float32[] _target_positions
    (* 4    (length _target_positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _target_positions
     (write-long (length _target_positions) s)
     (dotimes (i (length _target_positions))
       (sys::poke (elt _target_positions i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _target_positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_positions i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass arm_gazebo::IK
  :super ros::object
  :slots ())

(setf (get arm_gazebo::IK :md5sum-) "e5b84018aa5ae0eae79db10fc2c3a626")
(setf (get arm_gazebo::IK :datatype-) "arm_gazebo/IK")
(setf (get arm_gazebo::IK :request) arm_gazebo::IKRequest)
(setf (get arm_gazebo::IK :response) arm_gazebo::IKResponse)

(defmethod arm_gazebo::IKRequest
  (:response () (instance arm_gazebo::IKResponse :init)))

(setf (get arm_gazebo::IKRequest :md5sum-) "e5b84018aa5ae0eae79db10fc2c3a626")
(setf (get arm_gazebo::IKRequest :datatype-) "arm_gazebo/IKRequest")
(setf (get arm_gazebo::IKRequest :definition-)
      "float32[] joint_angles
float32[] link_lengths
float32[] positions
---
float32[] target_positions
")

(setf (get arm_gazebo::IKResponse :md5sum-) "e5b84018aa5ae0eae79db10fc2c3a626")
(setf (get arm_gazebo::IKResponse :datatype-) "arm_gazebo/IKResponse")
(setf (get arm_gazebo::IKResponse :definition-)
      "float32[] joint_angles
float32[] link_lengths
float32[] positions
---
float32[] target_positions
")



(provide :arm_gazebo/IK "e5b84018aa5ae0eae79db10fc2c3a626")


