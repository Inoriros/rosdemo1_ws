
(cl:in-package :asdf)

(defsystem "plumbing_server_client-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IntsSum" :depends-on ("_package_IntsSum"))
    (:file "_package_IntsSum" :depends-on ("_package"))
  ))