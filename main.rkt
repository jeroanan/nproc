#lang racket/base

; Copyright 2020 David Wilson
; See COPYING for details

(provide get-number-of-processors)

(require ffi/unsafe
         racket/runtime-path
         (for-syntax racket/base))

(define-runtime-path lib-path (build-path "private" "gnulib-nproc"))
(define clib (ffi-lib lib-path))

(define num-processors (get-ffi-obj "num_processors" clib (_fun _long -> _int)))

(define (get-number-of-processors)
  (num-processors 0))

