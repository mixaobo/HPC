; Auto-generated. Do not edit!


(cl:in-package e2e_hpc-srv)


;//! \htmlinclude DisAoa-request.msg.html

(cl:defclass <DisAoa-request> (roslisp-msg-protocol:ros-message)
  ((Distance
    :reader Distance
    :initarg :Distance
    :type cl:float
    :initform 0.0)
   (AoA
    :reader AoA
    :initarg :AoA
    :type cl:float
    :initform 0.0))
)

(cl:defclass DisAoa-request (<DisAoa-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisAoa-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisAoa-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_hpc-srv:<DisAoa-request> is deprecated: use e2e_hpc-srv:DisAoa-request instead.")))

(cl:ensure-generic-function 'Distance-val :lambda-list '(m))
(cl:defmethod Distance-val ((m <DisAoa-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-srv:Distance-val is deprecated.  Use e2e_hpc-srv:Distance instead.")
  (Distance m))

(cl:ensure-generic-function 'AoA-val :lambda-list '(m))
(cl:defmethod AoA-val ((m <DisAoa-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-srv:AoA-val is deprecated.  Use e2e_hpc-srv:AoA instead.")
  (AoA m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisAoa-request>) ostream)
  "Serializes a message object of type '<DisAoa-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'AoA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisAoa-request>) istream)
  "Deserializes a message object of type '<DisAoa-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'AoA) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisAoa-request>)))
  "Returns string type for a service object of type '<DisAoa-request>"
  "e2e_hpc/DisAoaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisAoa-request)))
  "Returns string type for a service object of type 'DisAoa-request"
  "e2e_hpc/DisAoaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisAoa-request>)))
  "Returns md5sum for a message object of type '<DisAoa-request>"
  "1333d23ef3de7dce5e31068bfe611dd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisAoa-request)))
  "Returns md5sum for a message object of type 'DisAoa-request"
  "1333d23ef3de7dce5e31068bfe611dd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisAoa-request>)))
  "Returns full string definition for message of type '<DisAoa-request>"
  (cl:format cl:nil "float64 Distance~%float64 AoA~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisAoa-request)))
  "Returns full string definition for message of type 'DisAoa-request"
  (cl:format cl:nil "float64 Distance~%float64 AoA~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisAoa-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisAoa-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DisAoa-request
    (cl:cons ':Distance (Distance msg))
    (cl:cons ':AoA (AoA msg))
))
;//! \htmlinclude DisAoa-response.msg.html

(cl:defclass <DisAoa-response> (roslisp-msg-protocol:ros-message)
  ((returnvalue
    :reader returnvalue
    :initarg :returnvalue
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DisAoa-response (<DisAoa-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DisAoa-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DisAoa-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name e2e_hpc-srv:<DisAoa-response> is deprecated: use e2e_hpc-srv:DisAoa-response instead.")))

(cl:ensure-generic-function 'returnvalue-val :lambda-list '(m))
(cl:defmethod returnvalue-val ((m <DisAoa-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader e2e_hpc-srv:returnvalue-val is deprecated.  Use e2e_hpc-srv:returnvalue instead.")
  (returnvalue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DisAoa-response>) ostream)
  "Serializes a message object of type '<DisAoa-response>"
  (cl:let* ((signed (cl:slot-value msg 'returnvalue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DisAoa-response>) istream)
  "Deserializes a message object of type '<DisAoa-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'returnvalue) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DisAoa-response>)))
  "Returns string type for a service object of type '<DisAoa-response>"
  "e2e_hpc/DisAoaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisAoa-response)))
  "Returns string type for a service object of type 'DisAoa-response"
  "e2e_hpc/DisAoaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DisAoa-response>)))
  "Returns md5sum for a message object of type '<DisAoa-response>"
  "1333d23ef3de7dce5e31068bfe611dd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DisAoa-response)))
  "Returns md5sum for a message object of type 'DisAoa-response"
  "1333d23ef3de7dce5e31068bfe611dd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DisAoa-response>)))
  "Returns full string definition for message of type '<DisAoa-response>"
  (cl:format cl:nil "~%int8 returnvalue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DisAoa-response)))
  "Returns full string definition for message of type 'DisAoa-response"
  (cl:format cl:nil "~%int8 returnvalue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DisAoa-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DisAoa-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DisAoa-response
    (cl:cons ':returnvalue (returnvalue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DisAoa)))
  'DisAoa-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DisAoa)))
  'DisAoa-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DisAoa)))
  "Returns string type for a service object of type '<DisAoa>"
  "e2e_hpc/DisAoa")