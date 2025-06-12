;; Auto-generated. Do not edit!


(when (boundp 'e2e_hpc::CustomMsg_Door)
  (if (not (find-package "E2E_HPC"))
    (make-package "E2E_HPC"))
  (shadow 'CustomMsg_Door (find-package "E2E_HPC")))
(unless (find-package "E2E_HPC::CUSTOMMSG_DOOR")
  (make-package "E2E_HPC::CUSTOMMSG_DOOR"))

(in-package "ROS")
;;//! \htmlinclude CustomMsg_Door.msg.html


(defclass e2e_hpc::CustomMsg_Door
  :super ros::object
  :slots (_FrontLeft _FrontRight _RearLeft _RearRight _Trunk ))

(defmethod e2e_hpc::CustomMsg_Door
  (:init
   (&key
    ((:FrontLeft __FrontLeft) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:FrontRight __FrontRight) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:RearLeft __RearLeft) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:RearRight __RearRight) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:Trunk __Trunk) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _FrontLeft __FrontLeft)
   (setq _FrontRight __FrontRight)
   (setq _RearLeft __RearLeft)
   (setq _RearRight __RearRight)
   (setq _Trunk __Trunk)
   self)
  (:FrontLeft
   (&optional __FrontLeft)
   (if __FrontLeft (setq _FrontLeft __FrontLeft)) _FrontLeft)
  (:FrontRight
   (&optional __FrontRight)
   (if __FrontRight (setq _FrontRight __FrontRight)) _FrontRight)
  (:RearLeft
   (&optional __RearLeft)
   (if __RearLeft (setq _RearLeft __RearLeft)) _RearLeft)
  (:RearRight
   (&optional __RearRight)
   (if __RearRight (setq _RearRight __RearRight)) _RearRight)
  (:Trunk
   (&optional __Trunk)
   (if __Trunk (setq _Trunk __Trunk)) _Trunk)
  (:serialization-length
   ()
   (+
    ;; string[] _FrontLeft
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _FrontLeft)) 4
    ;; string[] _FrontRight
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _FrontRight)) 4
    ;; string[] _RearLeft
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _RearLeft)) 4
    ;; string[] _RearRight
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _RearRight)) 4
    ;; string[] _Trunk
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _Trunk)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _FrontLeft
     (write-long (length _FrontLeft) s)
     (dolist (elem _FrontLeft)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _FrontRight
     (write-long (length _FrontRight) s)
     (dolist (elem _FrontRight)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _RearLeft
     (write-long (length _RearLeft) s)
     (dolist (elem _RearLeft)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _RearRight
     (write-long (length _RearRight) s)
     (dolist (elem _RearRight)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _Trunk
     (write-long (length _Trunk) s)
     (dolist (elem _Trunk)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _FrontLeft
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _FrontLeft (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _FrontLeft i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _FrontRight
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _FrontRight (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _FrontRight i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _RearLeft
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _RearLeft (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _RearLeft i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _RearRight
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _RearRight (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _RearRight i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _Trunk
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Trunk (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _Trunk i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get e2e_hpc::CustomMsg_Door :md5sum-) "60ef31f79c819e28a0085a08d8ae1c89")
(setf (get e2e_hpc::CustomMsg_Door :datatype-) "e2e_hpc/CustomMsg_Door")
(setf (get e2e_hpc::CustomMsg_Door :definition-)
      "string[] FrontLeft   
string[] FrontRight   
string[] RearLeft     
string[] RearRight    
string[] Trunk        
")



(provide :e2e_hpc/CustomMsg_Door "60ef31f79c819e28a0085a08d8ae1c89")


