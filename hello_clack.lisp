(ql:quickload :clack)

(defpackage simple-app
  (:use :cl
        :clack))
(in-package :simple-app)

(defvar *handler*
    (clackup
      #'(lambda (env)
          (pprint env)
          '(200 (:content-type "text/plain") ("Hello, Clack!")))))
