; Auto-generated. Do not edit!


(cl:in-package plumbing_server_client-srv)


;//! \htmlinclude IntsSum-request.msg.html

(cl:defclass <IntsSum-request> (roslisp-msg-protocol:ros-message)
  ((num1
    :reader num1
    :initarg :num1
    :type cl:integer
    :initform 0)
   (num2
    :reader num2
    :initarg :num2
    :type cl:integer
    :initform 0))
)

(cl:defclass IntsSum-request (<IntsSum-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntsSum-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntsSum-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_server_client-srv:<IntsSum-request> is deprecated: use plumbing_server_client-srv:IntsSum-request instead.")))

(cl:ensure-generic-function 'num1-val :lambda-list '(m))
(cl:defmethod num1-val ((m <IntsSum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_server_client-srv:num1-val is deprecated.  Use plumbing_server_client-srv:num1 instead.")
  (num1 m))

(cl:ensure-generic-function 'num2-val :lambda-list '(m))
(cl:defmethod num2-val ((m <IntsSum-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_server_client-srv:num2-val is deprecated.  Use plumbing_server_client-srv:num2 instead.")
  (num2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntsSum-request>) ostream)
  "Serializes a message object of type '<IntsSum-request>"
  (cl:let* ((signed (cl:slot-value msg 'num1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntsSum-request>) istream)
  "Deserializes a message object of type '<IntsSum-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntsSum-request>)))
  "Returns string type for a service object of type '<IntsSum-request>"
  "plumbing_server_client/IntsSumRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntsSum-request)))
  "Returns string type for a service object of type 'IntsSum-request"
  "plumbing_server_client/IntsSumRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntsSum-request>)))
  "Returns md5sum for a message object of type '<IntsSum-request>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntsSum-request)))
  "Returns md5sum for a message object of type 'IntsSum-request"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntsSum-request>)))
  "Returns full string definition for message of type '<IntsSum-request>"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntsSum-request)))
  "Returns full string definition for message of type 'IntsSum-request"
  (cl:format cl:nil "int32 num1~%int32 num2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntsSum-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntsSum-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IntsSum-request
    (cl:cons ':num1 (num1 msg))
    (cl:cons ':num2 (num2 msg))
))
;//! \htmlinclude IntsSum-response.msg.html

(cl:defclass <IntsSum-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass IntsSum-response (<IntsSum-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntsSum-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntsSum-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plumbing_server_client-srv:<IntsSum-response> is deprecated: use plumbing_server_client-srv:IntsSum-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <IntsSum-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plumbing_server_client-srv:sum-val is deprecated.  Use plumbing_server_client-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntsSum-response>) ostream)
  "Serializes a message object of type '<IntsSum-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntsSum-response>) istream)
  "Deserializes a message object of type '<IntsSum-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntsSum-response>)))
  "Returns string type for a service object of type '<IntsSum-response>"
  "plumbing_server_client/IntsSumResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntsSum-response)))
  "Returns string type for a service object of type 'IntsSum-response"
  "plumbing_server_client/IntsSumResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntsSum-response>)))
  "Returns md5sum for a message object of type '<IntsSum-response>"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntsSum-response)))
  "Returns md5sum for a message object of type 'IntsSum-response"
  "4781436a0c2affec8025955a6041e481")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntsSum-response>)))
  "Returns full string definition for message of type '<IntsSum-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntsSum-response)))
  "Returns full string definition for message of type 'IntsSum-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntsSum-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntsSum-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IntsSum-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IntsSum)))
  'IntsSum-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IntsSum)))
  'IntsSum-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntsSum)))
  "Returns string type for a service object of type '<IntsSum>"
  "plumbing_server_client/IntsSum")