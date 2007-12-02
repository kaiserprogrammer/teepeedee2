;;;; -*- Mode: lisp; indent-tabs-mode: nil -*-
;;;
;;; package.lisp --- Package definition for Babel
;;;
;;; Copyright (C) 2007, Luis Oliveira  <loliveira@common-lisp.net>
;;;
;;; Permission is hereby granted, free of charge, to any person
;;; obtaining a copy of this software and associated documentation
;;; files (the "Software"), to deal in the Software without
;;; restriction, including without limitation the rights to use, copy,
;;; modify, merge, publish, distribute, sublicense, and/or sell copies
;;; of the Software, and to permit persons to whom the Software is
;;; furnished to do so, subject to the following conditions:
;;;
;;; The above copyright notice and this permission notice shall be
;;; included in all copies or substantial portions of the Software.
;;;
;;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;;; NONINFRINGEMENT.  IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
;;; HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
;;; WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
;;; DEALINGS IN THE SOFTWARE.

(in-package #:cl-user)

(defpackage #:babel-encodings
  (:use #:common-lisp)
  (:export
   ;; character encoding objects
   #:list-character-encodings
   #:character-encoding
   #:get-character-encoding
   #:enc-name
   #:enc-aliases
   #:enc-code-unit-size
   #:enc-max-units-per-char
   #:enc-native-endianness
   #:enc-literal-char-code-limit
   #:enc-use-bom
   #:enc-bom-encoding
   #:enc-nul-encoding
   #:enc-default-replacement
   ;; concrete mappings
   #:instantiate-concrete-mappings
   #:encoder
   #:decoder
   #:octet-counter
   #:code-point-counter
   #:lookup-mapping
   #:with-simple-vector
   #:with-checked-simple-vector
   #:*suppress-character-coding-errors*
   ;; errors
   #:character-coding-error
   #:character-coding-error-encoding    ; accessor
   #:character-coding-error-buffer      ; accessor
   #:character-coding-error-position    ; accessor
   #:character-decoding-error
   #:character-decoding-error-octets    ; accessor
   #:character-encoding-error
   #:character-encoding-error-code      ; accessor
   #:end-of-input-in-character))

(defpackage #:babel
  (:use #:common-lisp #:babel-encodings)
  (:export
   ;; general user API
   #:*default-character-encoding*
   #:list-character-encodings
   #:string-to-octets
   #:octets-to-string
   #:string-size-in-octets
   #:vector-size-in-chars
   ;; errors
   #:character-coding-error
   #:character-coding-error-encoding    ; accessor
   #:character-coding-error-buffer      ; accessor
   #:character-coding-error-position    ; accessor
   #:character-decoding-error
   #:character-decoding-error-octets    ; accessor
   #:character-encoding-error
   #:character-encoding-error-code      ; accessor
   #:end-of-input-in-character))
