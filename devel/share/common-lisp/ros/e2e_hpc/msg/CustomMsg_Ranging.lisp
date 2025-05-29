; Auto-generated. Do not edit!


(cl:in-package e2e_hpc-msg)


;//! \htmlinclude CustomMsg_Ranging.msg.html

(cl:defclass <CustomMsg_Ranging> (roslisp-msg-protocol:ros-message)
  ((ble_status
    :reader ble_status
    :initarg :ble_status
    :type cl:string
    :initform "")
   (system_time
    :reader system_time
    :initarg :system_time
    :type cl:integer
    :initform 0)
   (received_time
    :reader received_time
    :initarg :received_time
    :type cl:integer
    :initform 0)
   (firstPath_power
    :reader firstPath_power
    :initarg :firstPath_power
    :type cl:float
    :initform 0.0)
   (aoa
    :reader aoa
    :initarg :aoa
    :type cl:float
    :initform 0.0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass CustomMsg_Ranging (<CustomMsg_Ranging>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMsg_Ranging>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMsg_Ranging)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_hpc-msg:<CustomMsg_Ranging> is deprecated: use e2e_hpc-msg:CustomMsg_Ranging instead.")))

(cl:ensure-generic-function 'ble_status-val :lambda-list '(m))
(cl:defmethod ble_status-val ((m <CustomMsg_Ranging>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:ble_status-val is deprecated.  Use e2e_hpc-msg:ble_status instead.")
  (ble_status m))

(cl:ensure-generic-function 'system_time-val :lambda-list '(m))
(cl:defmethod system_time-val ((m <CustomMsg_Ranging>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:system_time-val is deprecated.  Use e2e_hpc-msg:system_time instead.")
  (system_time m))

(cl:ensure-generic-function 'received_time-val :lambda-list '(m))
(cl:defmethod received_time-val ((m <CustomMsg_Ranging>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:received_time-val is deprecated.  Use e2e_hpc-msg:received_time instead.")
  (received_time m))

(cl:ensure-generic-function 'firstPath_power-val :lambda-list '(m))
(cl:defmethod firstPath_power-val ((m <CustomMsg_Ranging>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:firstPath_power-val is deprecated.  Use e2e_hpc-msg:firstPath_power instead.")
  (firstPath_power m))

(cl:ensure-generic-function 'aoa-val :lambda-list '(m))
(cl:defmethod aoa-val ((m <CustomMsg_Ranging>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:aoa-val is deprecated.  Use e2e_hpc-msg:aoa instead.")
  (aoa m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <CustomMsg_Ranging>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:distance-val is deprecated.  Use e2e_hpc-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMsg_Ranging>) ostream)
  "Serializes a message object of type '<CustomMsg_Ranging>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ble_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ble_status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'system_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'received_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'received_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'received_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'received_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'received_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'received_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'received_time)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'firstPath_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aoa))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMsg_Ranging>) istream)
  "Deserializes a message object of type '<CustomMsg_Ranging>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ble_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ble_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'system_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'received_time)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'firstPath_power) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aoa) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMsg_Ranging>)))
  "Returns string type for a message object of type '<CustomMsg_Ranging>"
  "e2e_hpc/CustomMsg_Ranging")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMsg_Ranging)))
  "Returns string type for a message object of type 'CustomMsg_Ranging"
  "e2e_hpc/CustomMsg_Ranging")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMsg_Ranging>)))
  "Returns md5sum for a message object of type '<CustomMsg_Ranging>"
  "1e4bb10cce0fbf9c437d573907658add")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMsg_Ranging)))
  "Returns md5sum for a message object of type 'CustomMsg_Ranging"
  "1e4bb10cce0fbf9c437d573907658add")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMsg_Ranging>)))
  "Returns full string definition for message of type '<CustomMsg_Ranging>"
  (cl:format cl:nil "string ble_status~%uint64 system_time~%uint64 received_time~%float64 firstPath_power~%float64 aoa~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMsg_Ranging)))
  "Returns full string definition for message of type 'CustomMsg_Ranging"
  (cl:format cl:nil "string ble_status~%uint64 system_time~%uint64 received_time~%float64 firstPath_power~%float64 aoa~%float64 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMsg_Ranging>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ble_status))
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMsg_Ranging>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMsg_Ranging
    (cl:cons ':ble_status (ble_status msg))
    (cl:cons ':system_time (system_time msg))
    (cl:cons ':received_time (received_time msg))
    (cl:cons ':firstPath_power (firstPath_power msg))
    (cl:cons ':aoa (aoa msg))
    (cl:cons ':distance (distance msg))
))
