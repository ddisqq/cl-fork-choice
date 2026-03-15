;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: BSD-3-Clause

;;;; cl-fork-choice.asd - System definition for CL-FORK-CHOICE
;;;; LMD-GHOST fork choice implementation

(asdf:defsystem #:cl-fork-choice
  :description "LMD-GHOST fork choice rule implementation for blockchain consensus"
  :author "Park Ian Co"
  :license "Apache-2.0"
  :version "0.1.0"
  :serial t
  :depends-on ()  ; Standalone - no external dependencies
  :components ((:file "package")
               (:module "src"
                :components ((:file "package")
                             (:file "conditions" :depends-on ("package"))
                             (:file "types" :depends-on ("package"))
                             (:file "cl-fork-choice" :depends-on ("package" "conditions" "types"))))))
  :in-order-to ((asdf:test-op (test-op #:cl-fork-choice/tests))))

(asdf:defsystem #:cl-fork-choice/tests
  :description "Tests for CL-FORK-CHOICE"
  :depends-on (#:cl-fork-choice)
  :serial t
  :components ((:module "test"
                :serial t
                :components ((:file "package")
                             (:file "fork-choice-tests")
                             (:file "fork-choice-tests"))))
  :perform (asdf:test-op (o s)
             (let ((result (uiop:symbol-call :cl-fork-choice.tests :run-all-tests)))
               (unless result
                 (error "Tests failed")))))
