;; Auto-generated. Do not edit!


(when (boundp 'plumbing_server_client::IntsSum)
  (if (not (find-package "PLUMBING_SERVER_CLIENT"))
    (make-package "PLUMBING_SERVER_CLIENT"))
  (shadow 'IntsSum (find-package "PLUMBING_SERVER_CLIENT")))
(unless (find-package "PLUMBING_SERVER_CLIENT::INTSSUM")
  (make-package "PLUMBING_SERVER_CLIENT::INTSSUM"))
(unless (find-package "PLUMBING_SERVER_CLIENT::INTSSUMREQUEST")
  (make-package "PLUMBING_SERVER_CLIENT::INTSSUMREQUEST"))
(unless (find-package "PLUMBING_SERVER_CLIENT::INTSSUMRESPONSE")
  (make-package "PLUMBING_SERVER_CLIENT::INTSSUMRESPONSE"))

(in-package "ROS")





(defclass plumbing_server_client::IntsSumRequest
  :super ros::object
  :slots (_num1 _num2 ))

(defmethod plumbing_server_client::IntsSumRequest
  (:init
   (&key
    ((:num1 __num1) 0)
    ((:num2 __num2) 0)
    )
   (send-super :init)
   (setq _num1 (round __num1))
   (setq _num2 (round __num2))
   self)
  (:num1
   (&optional __num1)
   (if __num1 (setq _num1 __num1)) _num1)
  (:num2
   (&optional __num2)
   (if __num2 (setq _num2 __num2)) _num2)
  (:serialization-length
   ()
   (+
    ;; int32 _num1
    4
    ;; int32 _num2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num1
       (write-long _num1 s)
     ;; int32 _num2
       (write-long _num2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num1
     (setq _num1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num2
     (setq _num2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::IntsSumResponse
  :super ros::object
  :slots (_sum ))

(defmethod plumbing_server_client::IntsSumResponse
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int32 _sum
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _sum
       (write-long _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _sum
     (setq _sum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plumbing_server_client::IntsSum
  :super ros::object
  :slots ())

(setf (get plumbing_server_client::IntsSum :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::IntsSum :datatype-) "plumbing_server_client/IntsSum")
(setf (get plumbing_server_client::IntsSum :request) plumbing_server_client::IntsSumRequest)
(setf (get plumbing_server_client::IntsSum :response) plumbing_server_client::IntsSumResponse)

(defmethod plumbing_server_client::IntsSumRequest
  (:response () (instance plumbing_server_client::IntsSumResponse :init)))

(setf (get plumbing_server_client::IntsSumRequest :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::IntsSumRequest :datatype-) "plumbing_server_client/IntsSumRequest")
(setf (get plumbing_server_client::IntsSumRequest :definition-)
      "int32 num1
int32 num2
---
int32 sum
")

(setf (get plumbing_server_client::IntsSumResponse :md5sum-) "4781436a0c2affec8025955a6041e481")
(setf (get plumbing_server_client::IntsSumResponse :datatype-) "plumbing_server_client/IntsSumResponse")
(setf (get plumbing_server_client::IntsSumResponse :definition-)
      "int32 num1
int32 num2
---
int32 sum
")



(provide :plumbing_server_client/IntsSum "4781436a0c2affec8025955a6041e481")


