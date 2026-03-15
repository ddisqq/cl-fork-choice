;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-fork-choice)

(define-condition cl-fork-choice-error (error)
  ((message :initarg :message :reader cl-fork-choice-error-message))
  (:report (lambda (condition stream)
             (format stream "cl-fork-choice error: ~A" (cl-fork-choice-error-message condition)))))
