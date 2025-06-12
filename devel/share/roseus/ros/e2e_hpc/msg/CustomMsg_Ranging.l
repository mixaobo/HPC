;; Auto-generated. Do not edit!


(when (boundp 'e2e_hpc::CustomMsg_Ranging)
  (if (not (find-package "E2E_HPC"))
    (make-package "E2E_HPC"))
  (shadow 'CustomMsg_Ranging (find-package "E2E_HPC")))
(unless (find-package "E2E_HPC::CUSTOMMSG_RANGING")
  (make-package "E2E_HPC::CUSTOMMSG_RANGING"))

(in-package "ROS")
;;//! \htmlinclude CustomMsg_Ranging.msg.html


(defclass e2e_hpc::CustomMsg_Ranging
  :super ros::object
  :slots (_ble_status _anchor_system_time _anchor_received_time _firstPath_power _aoa _distance _hpc_system_time ))

(defmethod e2e_hpc::CustomMsg_Ranging
  (:init
   (&key
    ((:ble_status __ble_status) "")
    ((:anchor_system_time __anchor_system_time) 0)
    ((:anchor_received_time __anchor_received_time) 0)
    ((:firstPath_power __firstPath_power) 0.0)
    ((:aoa __aoa) 0.0)
    ((:distance __distance) 0.0)
    ((:hpc_system_time __hpc_system_time) 0)
    )
   (send-super :init)
   (setq _ble_status (string __ble_status))
   (setq _anchor_system_time (round __anchor_system_time))
   (setq _anchor_received_time (round __anchor_received_time))
   (setq _firstPath_power (float __firstPath_power))
   (setq _aoa (float __aoa))
   (setq _distance (float __distance))
   (setq _hpc_system_time (round __hpc_system_time))
   self)
  (:ble_status
   (&optional __ble_status)
   (if __ble_status (setq _ble_status __ble_status)) _ble_status)
  (:anchor_system_time
   (&optional __anchor_system_time)
   (if __anchor_system_time (setq _anchor_system_time __anchor_system_time)) _anchor_system_time)
  (:anchor_received_time
   (&optional __anchor_received_time)
   (if __anchor_received_time (setq _anchor_received_time __anchor_received_time)) _anchor_received_time)
  (:firstPath_power
   (&optional __firstPath_power)
   (if __firstPath_power (setq _firstPath_power __firstPath_power)) _firstPath_power)
  (:aoa
   (&optional __aoa)
   (if __aoa (setq _aoa __aoa)) _aoa)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:hpc_system_time
   (&optional __hpc_system_time)
   (if __hpc_system_time (setq _hpc_system_time __hpc_system_time)) _hpc_system_time)
  (:serialization-length
   ()
   (+
    ;; string _ble_status
    4 (length _ble_status)
    ;; uint64 _anchor_system_time
    8
    ;; uint64 _anchor_received_time
    8
    ;; float64 _firstPath_power
    8
    ;; float64 _aoa
    8
    ;; float64 _distance
    8
    ;; uint64 _hpc_system_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ble_status
       (write-long (length _ble_status) s) (princ _ble_status s)
     ;; uint64 _anchor_system_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _anchor_system_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _anchor_system_time) (= (length (_anchor_system_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_anchor_system_time . bv) 0) 0) s)
              (write-long (ash (elt (_anchor_system_time . bv) 1) -1) s))
             ((and (class _anchor_system_time) (= (length (_anchor_system_time . bv)) 1)) ;; big1
              (write-long (elt (_anchor_system_time . bv) 0) s)
              (write-long (if (>= _anchor_system_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _anchor_system_time s)(write-long (if (>= _anchor_system_time 0) 0 #xffffffff) s)))
     ;; uint64 _anchor_received_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _anchor_received_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _anchor_received_time) (= (length (_anchor_received_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_anchor_received_time . bv) 0) 0) s)
              (write-long (ash (elt (_anchor_received_time . bv) 1) -1) s))
             ((and (class _anchor_received_time) (= (length (_anchor_received_time . bv)) 1)) ;; big1
              (write-long (elt (_anchor_received_time . bv) 0) s)
              (write-long (if (>= _anchor_received_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _anchor_received_time s)(write-long (if (>= _anchor_received_time 0) 0 #xffffffff) s)))
     ;; float64 _firstPath_power
       (sys::poke _firstPath_power (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aoa
       (sys::poke _aoa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _hpc_system_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _hpc_system_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _hpc_system_time) (= (length (_hpc_system_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_hpc_system_time . bv) 0) 0) s)
              (write-long (ash (elt (_hpc_system_time . bv) 1) -1) s))
             ((and (class _hpc_system_time) (= (length (_hpc_system_time . bv)) 1)) ;; big1
              (write-long (elt (_hpc_system_time . bv) 0) s)
              (write-long (if (>= _hpc_system_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _hpc_system_time s)(write-long (if (>= _hpc_system_time 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ble_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ble_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _anchor_system_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _anchor_system_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _anchor_system_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _anchor_received_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _anchor_received_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _anchor_received_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float64 _firstPath_power
     (setq _firstPath_power (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aoa
     (setq _aoa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _hpc_system_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _hpc_system_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _hpc_system_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get e2e_hpc::CustomMsg_Ranging :md5sum-) "7d0e3001a21853e4431bd85b875d239e")
(setf (get e2e_hpc::CustomMsg_Ranging :datatype-) "e2e_hpc/CustomMsg_Ranging")
(setf (get e2e_hpc::CustomMsg_Ranging :definition-)
      "string ble_status
uint64 anchor_system_time
uint64 anchor_received_time
float64 firstPath_power
float64 aoa
float64 distance
uint64 hpc_system_time

")



(provide :e2e_hpc/CustomMsg_Ranging "7d0e3001a21853e4431bd85b875d239e")


