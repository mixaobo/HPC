; Auto-generated. Do not edit!


(cl:in-package e2e_hpc-msg)


;//! \htmlinclude CustomMsg_Connection.msg.html

(cl:defclass <CustomMsg_Connection> (roslisp-msg-protocol:ros-message)
  ((veh_status
    :reader veh_status
    :initarg :veh_status
    :type cl:string
    :initform "")
   (ble_status
    :reader ble_status
    :initarg :ble_status
    :type cl:string
    :initform "")
   (uwb_status
    :reader uwb_status
    :initarg :uwb_status
    :type cl:string
    :initform ""))
)

(cl:defclass CustomMsg_Connection (<CustomMsg_Connection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomMsg_Connection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomMsg_Connection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_hpc-msg:<CustomMsg_Connection> is deprecated: use e2e_hpc-msg:CustomMsg_Connection instead.")))

(cl:ensure-generic-function 'veh_status-val :lambda-list '(m))
(cl:defmethod veh_status-val ((m <CustomMsg_Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:veh_status-val is deprecated.  Use e2e_hpc-msg:veh_status instead.")
  (veh_status m))

(cl:ensure-generic-function 'ble_status-val :lambda-list '(m))
(cl:defmethod ble_status-val ((m <CustomMsg_Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:ble_status-val is deprecated.  Use e2e_hpc-msg:ble_status instead.")
  (ble_status m))

(cl:ensure-generic-function 'uwb_status-val :lambda-list '(m))
(cl:defmethod uwb_status-val ((m <CustomMsg_Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-msg:uwb_status-val is deprecated.  Use e2e_hpc-msg:uwb_status instead.")
  (uwb_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomMsg_Connection>) ostream)
  "Serializes a message object of type '<CustomMsg_Connection>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'veh_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'veh_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ble_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ble_status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uwb_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uwb_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomMsg_Connection>) istream)
  "Deserializes a message object of type '<CustomMsg_Connection>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'veh_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'veh_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ble_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ble_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uwb_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uwb_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomMsg_Connection>)))
  "Returns string type for a message object of type '<CustomMsg_Connection>"
  "e2e_hpc/CustomMsg_Connection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomMsg_Connection)))
  "Returns string type for a message object of type 'CustomMsg_Connection"
  "e2e_hpc/CustomMsg_Connection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomMsg_Connection>)))
  "Returns md5sum for a message object of type '<CustomMsg_Connection>"
  "7f9943c60f33233e9a2efcc308c36232")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomMsg_Connection)))
  "Returns md5sum for a message object of type 'CustomMsg_Connection"
  "7f9943c60f33233e9a2efcc308c36232")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomMsg_Connection>)))
  "Returns full string definition for message of type '<CustomMsg_Connection>"
  (cl:format cl:nil "string veh_status~%string ble_status~%string uwb_status~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomMsg_Connection)))
  "Returns full string definition for message of type 'CustomMsg_Connection"
  (cl:format cl:nil "string veh_status~%string ble_status~%string uwb_status~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomMsg_Connection>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'veh_status))
     4 (cl:length (cl:slot-value msg 'ble_status))
     4 (cl:length (cl:slot-value msg 'uwb_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomMsg_Connection>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomMsg_Connection
    (cl:cons ':veh_status (veh_status msg))
    (cl:cons ':ble_status (ble_status msg))
    (cl:cons ':uwb_status (uwb_status msg))
))
