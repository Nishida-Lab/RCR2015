; Auto-generated. Do not edit!


(cl:in-package rcr2018-msg)


;//! \htmlinclude SvmCommand.msg.html

(cl:defclass <SvmCommand> (roslisp-msg-protocol:ros-message)
  ((cmd_ang_vel
    :reader cmd_ang_vel
    :initarg :cmd_ang_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass SvmCommand (<SvmCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SvmCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SvmCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rcr2018-msg:<SvmCommand> is deprecated: use rcr2018-msg:SvmCommand instead.")))

(cl:ensure-generic-function 'cmd_ang_vel-val :lambda-list '(m))
(cl:defmethod cmd_ang_vel-val ((m <SvmCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rcr2018-msg:cmd_ang_vel-val is deprecated.  Use rcr2018-msg:cmd_ang_vel instead.")
  (cmd_ang_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SvmCommand>) ostream)
  "Serializes a message object of type '<SvmCommand>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cmd_ang_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SvmCommand>) istream)
  "Deserializes a message object of type '<SvmCommand>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cmd_ang_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SvmCommand>)))
  "Returns string type for a message object of type '<SvmCommand>"
  "rcr2018/SvmCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SvmCommand)))
  "Returns string type for a message object of type 'SvmCommand"
  "rcr2018/SvmCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SvmCommand>)))
  "Returns md5sum for a message object of type '<SvmCommand>"
  "c6dddac8b1d4dfc1d29704413439e983")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SvmCommand)))
  "Returns md5sum for a message object of type 'SvmCommand"
  "c6dddac8b1d4dfc1d29704413439e983")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SvmCommand>)))
  "Returns full string definition for message of type '<SvmCommand>"
  (cl:format cl:nil "float64 cmd_ang_vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SvmCommand)))
  "Returns full string definition for message of type 'SvmCommand"
  (cl:format cl:nil "float64 cmd_ang_vel~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SvmCommand>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SvmCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SvmCommand
    (cl:cons ':cmd_ang_vel (cmd_ang_vel msg))
))
