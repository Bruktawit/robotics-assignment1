; Auto-generated. Do not edit!


(cl:in-package arm_gazebo-srv)


;//! \htmlinclude FK-request.msg.html

(cl:defclass <FK-request> (roslisp-msg-protocol:ros-message)
  ((joint_angles
    :reader joint_angles
    :initarg :joint_angles
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (link_lengths
    :reader link_lengths
    :initarg :link_lengths
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FK-request (<FK-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FK-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FK-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<FK-request> is deprecated: use arm_gazebo-srv:FK-request instead.")))

(cl:ensure-generic-function 'joint_angles-val :lambda-list '(m))
(cl:defmethod joint_angles-val ((m <FK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:joint_angles-val is deprecated.  Use arm_gazebo-srv:joint_angles instead.")
  (joint_angles m))

(cl:ensure-generic-function 'link_lengths-val :lambda-list '(m))
(cl:defmethod link_lengths-val ((m <FK-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:link_lengths-val is deprecated.  Use arm_gazebo-srv:link_lengths instead.")
  (link_lengths m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FK-request>) ostream)
  "Serializes a message object of type '<FK-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_angles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_angles))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'link_lengths))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'link_lengths))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FK-request>) istream)
  "Deserializes a message object of type '<FK-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_angles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_angles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'link_lengths) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'link_lengths)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FK-request>)))
  "Returns string type for a service object of type '<FK-request>"
  "arm_gazebo/FKRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FK-request)))
  "Returns string type for a service object of type 'FK-request"
  "arm_gazebo/FKRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FK-request>)))
  "Returns md5sum for a message object of type '<FK-request>"
  "d6467ab67f7bb5808e8a16c59a3db1f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FK-request)))
  "Returns md5sum for a message object of type 'FK-request"
  "d6467ab67f7bb5808e8a16c59a3db1f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FK-request>)))
  "Returns full string definition for message of type '<FK-request>"
  (cl:format cl:nil "float32[] joint_angles~%float32[] link_lengths~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FK-request)))
  "Returns full string definition for message of type 'FK-request"
  (cl:format cl:nil "float32[] joint_angles~%float32[] link_lengths~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FK-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_angles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'link_lengths) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FK-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FK-request
    (cl:cons ':joint_angles (joint_angles msg))
    (cl:cons ':link_lengths (link_lengths msg))
))
;//! \htmlinclude FK-response.msg.html

(cl:defclass <FK-response> (roslisp-msg-protocol:ros-message)
  ((actuator_pose
    :reader actuator_pose
    :initarg :actuator_pose
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FK-response (<FK-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FK-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FK-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arm_gazebo-srv:<FK-response> is deprecated: use arm_gazebo-srv:FK-response instead.")))

(cl:ensure-generic-function 'actuator_pose-val :lambda-list '(m))
(cl:defmethod actuator_pose-val ((m <FK-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arm_gazebo-srv:actuator_pose-val is deprecated.  Use arm_gazebo-srv:actuator_pose instead.")
  (actuator_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FK-response>) ostream)
  "Serializes a message object of type '<FK-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuator_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'actuator_pose))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FK-response>) istream)
  "Deserializes a message object of type '<FK-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuator_pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuator_pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FK-response>)))
  "Returns string type for a service object of type '<FK-response>"
  "arm_gazebo/FKResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FK-response)))
  "Returns string type for a service object of type 'FK-response"
  "arm_gazebo/FKResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FK-response>)))
  "Returns md5sum for a message object of type '<FK-response>"
  "d6467ab67f7bb5808e8a16c59a3db1f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FK-response)))
  "Returns md5sum for a message object of type 'FK-response"
  "d6467ab67f7bb5808e8a16c59a3db1f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FK-response>)))
  "Returns full string definition for message of type '<FK-response>"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FK-response)))
  "Returns full string definition for message of type 'FK-response"
  (cl:format cl:nil "float32[] actuator_pose~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FK-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FK-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FK-response
    (cl:cons ':actuator_pose (actuator_pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FK)))
  'FK-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FK)))
  'FK-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FK)))
  "Returns string type for a service object of type '<FK>"
  "arm_gazebo/FK")