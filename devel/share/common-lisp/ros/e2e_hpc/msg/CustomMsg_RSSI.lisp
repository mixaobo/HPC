; Auto-generated. Do not edit!


(cl:in-package e2e_hpc-msg)


;//! \htmlinclude CustomMsg_RSSI.msg.html

(cl:defclass <CustomMsg_RSSI> (roslisp-msg-protocol:ros-message)
  ((pdoa1
    :reader pdoa1
    :initarg :pdoa1
    :type cl:float
    :initform 0.0)
   (tof1
    :reader tof1
    :initarg :tof1
    :type cl:integer
    :initform 0)
   (rssi1
    :reader rssi1
    :initarg :rssi1
    :type cl:float
    :initform 0.0)
   (pdoa2
    :reader pdoa2
    :initarg :pdoa2
    :type cl:float
    :initform 0.0)
   (tof2
    :reader tof2
    :initarg :tof2
    :type cl:integer
    :initform 0)
   (rssi2
    :reader rssi2
    :initarg :rssi2
    :type cl:float
    :initform 0.0))
)

(cl:defclass CustomMsg_RSSI (<CustomMsg_RSSI>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMsg_RSSI>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMsg_RSSI)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_hpc-msg:<CustomMsg_RSSI> is deprecated: use e2e_hpc-msg:CustomMsg_RSSI instead.")))

(cl:ensure-generic-function 'pdoa1-val :lambda-list '(m))
(cl:defmethod pdoa1-val ((m <CustomMsg_RSSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:pdoa1-val is deprecated.  Use e2e_hpc-msg:pdoa1 instead.")
  (pdoa1 m))

(cl:ensure-generic-function 'tof1-val :lambda-list '(m))
(cl:defmethod tof1-val ((m <CustomMsg_RSSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:tof1-val is deprecated.  Use e2e_hpc-msg:tof1 instead.")
  (tof1 m))

(cl:ensure-generic-function 'rssi1-val :lambda-list '(m))
(cl:defmethod rssi1-val ((m <CustomMsg_RSSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:rssi1-val is deprecated.  Use e2e_hpc-msg:rssi1 instead.")
  (rssi1 m))

(cl:ensure-generic-function 'pdoa2-val :lambda-list '(m))
(cl:defmethod pdoa2-val ((m <CustomMsg_RSSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:pdoa2-val is deprecated.  Use e2e_hpc-msg:pdoa2 instead.")
  (pdoa2 m))

(cl:ensure-generic-function 'tof2-val :lambda-list '(m))
(cl:defmethod tof2-val ((m <CustomMsg_RSSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:tof2-val is deprecated.  Use e2e_hpc-msg:tof2 instead.")
  (tof2 m))

(cl:ensure-generic-function 'rssi2-val :lambda-list '(m))
(cl:defmethod rssi2-val ((m <CustomMsg_RSSI>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:rssi2-val is deprecated.  Use e2e_hpc-msg:rssi2 instead.")
  (rssi2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMsg_RSSI>) ostream)
  "Serializes a message object of type '<CustomMsg_RSSI>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pdoa1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tof1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tof1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tof1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tof1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tof1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tof1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tof1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tof1)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rssi1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'pdoa2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tof2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tof2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tof2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tof2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tof2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tof2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tof2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tof2)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rssi2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMsg_RSSI>) istream)
  "Deserializes a message object of type '<CustomMsg_RSSI>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pdoa1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tof1)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rssi1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pdoa2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'tof2)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rssi2) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMsg_RSSI>)))
  "Returns string type for a message object of type '<CustomMsg_RSSI>"
  "e2e_hpc/CustomMsg_RSSI")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMsg_RSSI)))
  "Returns string type for a message object of type 'CustomMsg_RSSI"
  "e2e_hpc/CustomMsg_RSSI")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMsg_RSSI>)))
  "Returns md5sum for a message object of type '<CustomMsg_RSSI>"
  "278cca35bf3f379767e0057dde46377c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMsg_RSSI)))
  "Returns md5sum for a message object of type 'CustomMsg_RSSI"
  "278cca35bf3f379767e0057dde46377c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMsg_RSSI>)))
  "Returns full string definition for message of type '<CustomMsg_RSSI>"
  (cl:format cl:nil "float64 pdoa1~%uint64 tof1~%float64 rssi1~%float64 pdoa2~%uint64 tof2~%float64 rssi2~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMsg_RSSI)))
  "Returns full string definition for message of type 'CustomMsg_RSSI"
  (cl:format cl:nil "float64 pdoa1~%uint64 tof1~%float64 rssi1~%float64 pdoa2~%uint64 tof2~%float64 rssi2~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMsg_RSSI>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMsg_RSSI>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMsg_RSSI
    (cl:cons ':pdoa1 (pdoa1 msg))
    (cl:cons ':tof1 (tof1 msg))
    (cl:cons ':rssi1 (rssi1 msg))
    (cl:cons ':pdoa2 (pdoa2 msg))
    (cl:cons ':tof2 (tof2 msg))
    (cl:cons ':rssi2 (rssi2 msg))
))
