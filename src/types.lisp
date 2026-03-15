;; Copyright (c) 2024-2026 Parkian Company LLC. All rights reserved.
;; SPDX-License-Identifier: Apache-2.0

(in-package #:cl-fork-choice)

;;; Core types for cl-fork-choice
(deftype cl-fork-choice-id () '(unsigned-byte 64))
(deftype cl-fork-choice-status () '(member :ready :active :error :shutdown))
