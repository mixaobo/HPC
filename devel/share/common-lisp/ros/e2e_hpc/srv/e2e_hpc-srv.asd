
(cl:in-package :asdf)

(defsystem "e2e_hpc-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DisAoa" :depends-on ("_package_DisAoa"))
    (:file "_package_DisAoa" :depends-on ("_package"))
  ))