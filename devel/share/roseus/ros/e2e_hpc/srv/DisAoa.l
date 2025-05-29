;; Auto-generated. Do not edit!


(when (boundp 'e2e_hpc::DisAoa)
  (if (not (find-package "E2E_HPC"))
    (make-package "E2E_HPC"))
  (shadow 'DisAoa (find-package "E2E_HPC")))
(unless (find-package "E2E_HPC::DISAOA")
  (make-package "E2E_HPC::DISAOA"))
(unless (find-package "E2E_HPC::DISAOAREQUEST")
  (make-package "E2E_HPC::DISAOAREQUEST"))
(unless (find-package "E2E_HPC::DISAOARESPONSE")
  (make-package "E2E_HPC::DISAOARESPONSE"))

(in-package "ROS")





(defclass e2e_hpc::DisAoaRequest
  :super ros::object
  :slots (_Distance _AoA ))

(defmethod e2e_hpc::DisAoaRequest
  (:init
   (&key
    ((:Distance __Distance) 0.0)
    ((:AoA __AoA) 0.0)
    )
   (send-super :init)
   (setq _Distance (float __Distance))
   (setq _AoA (float __AoA))
   self)
  (:Distance
   (&optional __Distance)
   (if __Distance (setq _Distance __Distance)) _Distance)
  (:AoA
   (&optional __AoA)
   (if __AoA (setq _AoA __AoA)) _AoA)
  (:serialization-length
   ()
   (+
    ;; float64 _Distance
    8
    ;; float64 _AoA
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _Distance
       (sys::poke _Distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _AoA
       (sys::poke _AoA (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _Distance
     (setq _Distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _AoA
     (setq _AoA (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass e2e_hpc::DisAoaResponse
  :super ros::object
  :slots (_returnvalue ))

(defmethod e2e_hpc::DisAoaResponse
  (:init
   (&key
    ((:returnvalue __returnvalue) 0)
    )
   (send-super :init)
   (setq _returnvalue (round __returnvalue))
   self)
  (:returnvalue
   (&optional __returnvalue)
   (if __returnvalue (setq _returnvalue __returnvalue)) _returnvalue)
  (:serialization-length
   ()
   (+
    ;; int8 _returnvalue
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _returnvalue
       (write-byte _returnvalue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _returnvalue
     (setq _returnvalue (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _returnvalue 127) (setq _returnvalue (- _returnvalue 256)))
   ;;
   self)
  )

(defclass e2e_hpc::DisAoa
  :super ros::object
  :slots ())

(setf (get e2e_hpc::DisAoa :md5sum-) "1333d23ef3de7dce5e31068bfe611dd5")
(setf (get e2e_hpc::DisAoa :datatype-) "e2e_hpc/DisAoa")
(setf (get e2e_hpc::DisAoa :request) e2e_hpc::DisAoaRequest)
(setf (get e2e_hpc::DisAoa :response) e2e_hpc::DisAoaResponse)

(defmethod e2e_hpc::DisAoaRequest
  (:response () (instance e2e_hpc::DisAoaResponse :init)))

(setf (get e2e_hpc::DisAoaRequest :md5sum-) "1333d23ef3de7dce5e31068bfe611dd5")
(setf (get e2e_hpc::DisAoaRequest :datatype-) "e2e_hpc/DisAoaRequest")
(setf (get e2e_hpc::DisAoaRequest :definition-)
      "float64 Distance
float64 AoA

---

int8 returnvalue

")

(setf (get e2e_hpc::DisAoaResponse :md5sum-) "1333d23ef3de7dce5e31068bfe611dd5")
(setf (get e2e_hpc::DisAoaResponse :datatype-) "e2e_hpc/DisAoaResponse")
(setf (get e2e_hpc::DisAoaResponse :definition-)
      "float64 Distance
float64 AoA

---

int8 returnvalue

")



(provide :e2e_hpc/DisAoa "1333d23ef3de7dce5e31068bfe611dd5")


