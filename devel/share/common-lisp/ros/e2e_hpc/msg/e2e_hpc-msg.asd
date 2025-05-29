
(cl:in-package :asdf)

(defsystem "e2e_hpc-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CustomMsg_Connection" :depends-on ("_package_CustomMsg_Connection"))
    (:file "_package_CustomMsg_Connection" :depends-on ("_package"))
    (:file "CustomMsg_Door" :depends-on ("_package_CustomMsg_Door"))
    (:file "_package_CustomMsg_Door" :depends-on ("_package"))
    (:file "CustomMsg_Ranging" :depends-on ("_package_CustomMsg_Ranging"))
    (:file "_package_CustomMsg_Ranging" :depends-on ("_package"))
  ))