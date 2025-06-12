;; Auto-generated. Do not edit!


(when (boundp 'e2e_hpc::CustomMsg_Connection)
  (if (not (find-package "E2E_HPC"))
    (make-package "E2E_HPC"))
  (shadow 'CustomMsg_Connection (find-package "E2E_HPC")))
(unless (find-package "E2E_HPC::CUSTOMMSG_CONNECTION")
  (make-package "E2E_HPC::CUSTOMMSG_CONNECTION"))

(in-package "ROS")
;;//! \htmlinclude CustomMsg_Connection.msg.html


(defclass e2e_hpc::CustomMsg_Connection
  :super ros::object
  :slots (_veh_status _ble_status _uwb_status ))

(defmethod e2e_hpc::CustomMsg_Connection
  (:init
   (&key
    ((:veh_status __veh_status) "")
    ((:ble_status __ble_status) "")
    ((:uwb_status __uwb_status) "")
    )
   (send-super :init)
   (setq _veh_status (string __veh_status))
   (setq _ble_status (string __ble_status))
   (setq _uwb_status (string __uwb_status))
   self)
  (:veh_status
   (&optional __veh_status)
   (if __veh_status (setq _veh_status __veh_status)) _veh_status)
  (:ble_status
   (&optional __ble_status)
   (if __ble_status (setq _ble_status __ble_status)) _ble_status)
  (:uwb_status
   (&optional __uwb_status)
   (if __uwb_status (setq _uwb_status __uwb_status)) _uwb_status)
  (:serialization-length
   ()
   (+
    ;; string _veh_status
    4 (length _veh_status)
    ;; string _ble_status
    4 (length _ble_status)
    ;; string _uwb_status
    4 (length _uwb_status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _veh_status
       (write-long (length _veh_status) s) (princ _veh_status s)
     ;; string _ble_status
       (write-long (length _ble_status) s) (princ _ble_status s)
     ;; string _uwb_status
       (write-long (length _uwb_status) s) (princ _uwb_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _veh_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _veh_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ble_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ble_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uwb_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uwb_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get e2e_hpc::CustomMsg_Connection :md5sum-) "7f9943c60f33233e9a2efcc308c36232")
(setf (get e2e_hpc::CustomMsg_Connection :datatype-) "e2e_hpc/CustomMsg_Connection")
(setf (get e2e_hpc::CustomMsg_Connection :definition-)
      "string veh_status
string ble_status
string uwb_status
")



(provide :e2e_hpc/CustomMsg_Connection "7f9943c60f33233e9a2efcc308c36232")


