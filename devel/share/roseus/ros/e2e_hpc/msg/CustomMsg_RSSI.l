;; Auto-generated. Do not edit!


(when (boundp 'e2e_hpc::CustomMsg_RSSI)
  (if (not (find-package "E2E_HPC"))
    (make-package "E2E_HPC"))
  (shadow 'CustomMsg_RSSI (find-package "E2E_HPC")))
(unless (find-package "E2E_HPC::CUSTOMMSG_RSSI")
  (make-package "E2E_HPC::CUSTOMMSG_RSSI"))

(in-package "ROS")
;;//! \htmlinclude CustomMsg_RSSI.msg.html


(defclass e2e_hpc::CustomMsg_RSSI
  :super ros::object
  :slots (_pdoa1 _tof1 _rssi1 _pdoa2 _tof2 _rssi2 ))

(defmethod e2e_hpc::CustomMsg_RSSI
  (:init
   (&key
    ((:pdoa1 __pdoa1) 0.0)
    ((:tof1 __tof1) 0)
    ((:rssi1 __rssi1) 0.0)
    ((:pdoa2 __pdoa2) 0.0)
    ((:tof2 __tof2) 0)
    ((:rssi2 __rssi2) 0.0)
    )
   (send-super :init)
   (setq _pdoa1 (float __pdoa1))
   (setq _tof1 (round __tof1))
   (setq _rssi1 (float __rssi1))
   (setq _pdoa2 (float __pdoa2))
   (setq _tof2 (round __tof2))
   (setq _rssi2 (float __rssi2))
   self)
  (:pdoa1
   (&optional __pdoa1)
   (if __pdoa1 (setq _pdoa1 __pdoa1)) _pdoa1)
  (:tof1
   (&optional __tof1)
   (if __tof1 (setq _tof1 __tof1)) _tof1)
  (:rssi1
   (&optional __rssi1)
   (if __rssi1 (setq _rssi1 __rssi1)) _rssi1)
  (:pdoa2
   (&optional __pdoa2)
   (if __pdoa2 (setq _pdoa2 __pdoa2)) _pdoa2)
  (:tof2
   (&optional __tof2)
   (if __tof2 (setq _tof2 __tof2)) _tof2)
  (:rssi2
   (&optional __rssi2)
   (if __rssi2 (setq _rssi2 __rssi2)) _rssi2)
  (:serialization-length
   ()
   (+
    ;; float64 _pdoa1
    8
    ;; uint64 _tof1
    8
    ;; float64 _rssi1
    8
    ;; float64 _pdoa2
    8
    ;; uint64 _tof2
    8
    ;; float64 _rssi2
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pdoa1
       (sys::poke _pdoa1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _tof1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tof1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tof1) (= (length (_tof1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tof1 . bv) 0) 0) s)
              (write-long (ash (elt (_tof1 . bv) 1) -1) s))
             ((and (class _tof1) (= (length (_tof1 . bv)) 1)) ;; big1
              (write-long (elt (_tof1 . bv) 0) s)
              (write-long (if (>= _tof1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tof1 s)(write-long (if (>= _tof1 0) 0 #xffffffff) s)))
     ;; float64 _rssi1
       (sys::poke _rssi1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pdoa2
       (sys::poke _pdoa2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _tof2
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _tof2 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _tof2) (= (length (_tof2 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_tof2 . bv) 0) 0) s)
              (write-long (ash (elt (_tof2 . bv) 1) -1) s))
             ((and (class _tof2) (= (length (_tof2 . bv)) 1)) ;; big1
              (write-long (elt (_tof2 . bv) 0) s)
              (write-long (if (>= _tof2 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _tof2 s)(write-long (if (>= _tof2 0) 0 #xffffffff) s)))
     ;; float64 _rssi2
       (sys::poke _rssi2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pdoa1
     (setq _pdoa1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _tof1
     
#+(or :alpha :irix6 :x86_64)
      (setf _tof1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tof1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _rssi1
     (setq _rssi1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pdoa2
     (setq _pdoa2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _tof2
     
#+(or :alpha :irix6 :x86_64)
      (setf _tof2 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _tof2 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _rssi2
     (setq _rssi2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get e2e_hpc::CustomMsg_RSSI :md5sum-) "278cca35bf3f379767e0057dde46377c")
(setf (get e2e_hpc::CustomMsg_RSSI :datatype-) "e2e_hpc/CustomMsg_RSSI")
(setf (get e2e_hpc::CustomMsg_RSSI :definition-)
      "float64 pdoa1
uint64 tof1
float64 rssi1
float64 pdoa2
uint64 tof2
float64 rssi2
")



(provide :e2e_hpc/CustomMsg_RSSI "278cca35bf3f379767e0057dde46377c")


