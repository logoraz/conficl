;;;; defsystem/defpackage Style Template
;;;
;;; DEFSYSTEM: use ASDF package-inferred-system extension
;;;  https://asdf.common-lisp.dev/asdf/
;;;  The-package_002dinferred_002dsystem-extension.html
;;;
;;; Metasyntax
;;; https://en.wikipedia.org/wiki/Metasyntactic_variable


;;; System Template Style Guide
(defsystem #:foo
  :description "Package foo description"
  :author "Major Major Major Major"
  :license "BSD-3"
  :version "0.0.1"
  :class :package-inferred-system
  :depends-on ("iterate"
               "transducers"
               "cl-ppcre"
               "foo/bar/all"
               "foo/qux/all")
  :in-order-to ((test-op (test-op "foo/tests"))))


(defsystem #:foo/tests
  :class :package-inferred-system
  :depends-on ("rove"
               "foo/tests/all")
  :perform (test-op (o c) (symbol-call #:foo/tests/all 
                                       #:run-all-tests)))


(register-system-packages "foo/bar/all"   '(#:foo/bar))
(register-system-packages "foo/qux/all"   '(#:foo/qux))
(register-system-packages "foo/corge/all" '(#:corge))
(register-system-packages "foo/tests/all" '(#:tests))

(register-system-packages
 "closer-mop"
 '(#:c2mop #:closer-common-lisp #:c2cl #:closer-common-lisp-user #:c2cl-user))


;;; System Template Style Guide
(defpackage #:foo/bar
  (:use #:cl
        #:foo/bar/baz
        #:foo/qux/quux)
  (:import-from #:hoge)
  (:import-from #:foo/corge
                #:sym1
                #:sym2)
  (:shadow #:piyo)
  (:shadowing-import-from #:foo/corge
                          #:thud)
  (:export #:foobar
           #:grault
           #:garply
           #:waldo
           #:orr))

#+nil
(defun foo (bar baz)
  "Example of how to commented out sexp ")