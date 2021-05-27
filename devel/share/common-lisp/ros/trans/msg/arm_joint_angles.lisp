; Auto-generated. Do not edit!


(cl:in-package trans-msg)


;//! \htmlinclude arm_joint_angles.msg.html

(cl:defclass <arm_joint_angles> (roslisp-msg-protocol:ros-message)
  ((z0
    :reader z0
    :initarg :z0
    :type cl:float
    :initform 0.0)
   (x1
    :reader x1
    :initarg :x1
    :type cl:float
    :initform 0.0)
   (x2
    :reader x2
    :initarg :x2
    :type cl:float
    :initform 0.0)
   (x3
    :reader x3
    :initarg :x3
    :type cl:float
    :initform 0.0))
)

(cl:defclass arm_joint_angles (<arm_joint_angles>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arm_joint_angles>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arm_joint_angles)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name trans-msg:<arm_joint_angles> is deprecated: use trans-msg:arm_joint_angles instead.")))

(cl:ensure-generic-function 'z0-val :lambda-list '(m))
(cl:defmethod z0-val ((m <arm_joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trans-msg:z0-val is deprecated.  Use trans-msg:z0 instead.")
  (z0 m))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <arm_joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trans-msg:x1-val is deprecated.  Use trans-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'x2-val :lambda-list '(m))
(cl:defmethod x2-val ((m <arm_joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trans-msg:x2-val is deprecated.  Use trans-msg:x2 instead.")
  (x2 m))

(cl:ensure-generic-function 'x3-val :lambda-list '(m))
(cl:defmethod x3-val ((m <arm_joint_angles>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader trans-msg:x3-val is deprecated.  Use trans-msg:x3 instead.")
  (x3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arm_joint_angles>) ostream)
  "Serializes a message object of type '<arm_joint_angles>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arm_joint_angles>) istream)
  "Deserializes a message object of type '<arm_joint_angles>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arm_joint_angles>)))
  "Returns string type for a message object of type '<arm_joint_angles>"
  "trans/arm_joint_angles")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arm_joint_angles)))
  "Returns string type for a message object of type 'arm_joint_angles"
  "trans/arm_joint_angles")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arm_joint_angles>)))
  "Returns md5sum for a message object of type '<arm_joint_angles>"
  "9dfb18a64868d584f9a6327efbfbf276")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arm_joint_angles)))
  "Returns md5sum for a message object of type 'arm_joint_angles"
  "9dfb18a64868d584f9a6327efbfbf276")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arm_joint_angles>)))
  "Returns full string definition for message of type '<arm_joint_angles>"
  (cl:format cl:nil "float64 z0~%float64 x1~%float64 x2~%float64 x3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arm_joint_angles)))
  "Returns full string definition for message of type 'arm_joint_angles"
  (cl:format cl:nil "float64 z0~%float64 x1~%float64 x2~%float64 x3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arm_joint_angles>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arm_joint_angles>))
  "Converts a ROS message object to a list"
  (cl:list 'arm_joint_angles
    (cl:cons ':z0 (z0 msg))
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':x2 (x2 msg))
    (cl:cons ':x3 (x3 msg))
))
