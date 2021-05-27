;; Auto-generated. Do not edit!


(when (boundp 'trans::output)
  (if (not (find-package "TRANS"))
    (make-package "TRANS"))
  (shadow 'output (find-package "TRANS")))
(unless (find-package "TRANS::OUTPUT")
  (make-package "TRANS::OUTPUT"))

(in-package "ROS")
;;//! \htmlinclude output.msg.html


(defclass trans::output
  :super ros::object
  :slots (_x_n _y_n _z_n ))

(defmethod trans::output
  (:init
   (&key
    ((:x_n __x_n) 0.0)
    ((:y_n __y_n) 0.0)
    ((:z_n __z_n) 0.0)
    )
   (send-super :init)
   (setq _x_n (float __x_n))
   (setq _y_n (float __y_n))
   (setq _z_n (float __z_n))
   self)
  (:x_n
   (&optional __x_n)
   (if __x_n (setq _x_n __x_n)) _x_n)
  (:y_n
   (&optional __y_n)
   (if __y_n (setq _y_n __y_n)) _y_n)
  (:z_n
   (&optional __z_n)
   (if __z_n (setq _z_n __z_n)) _z_n)
  (:serialization-length
   ()
   (+
    ;; float64 _x_n
    8
    ;; float64 _y_n
    8
    ;; float64 _z_n
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_n
       (sys::poke _x_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_n
       (sys::poke _y_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_n
       (sys::poke _z_n (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_n
     (setq _x_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_n
     (setq _y_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_n
     (setq _z_n (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get trans::output :md5sum-) "2928615e848c3a6d1204cc91f0148376")
(setf (get trans::output :datatype-) "trans/output")
(setf (get trans::output :definition-)
      "float64 x_n
float64 y_n
float64 z_n
")



(provide :trans/output "2928615e848c3a6d1204cc91f0148376")


