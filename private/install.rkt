#lang racket/base

(provide pre-installer)

(require racket/system)
(require file/untgz)

(define unpacked-path "gnulib-nproc")

(define (pre-installer collections-top-path racl-path)
  (define private-path (build-path racl-path "private"))
  (untgz (build-path private-path "gnulib-nproc.tgz"))
  (system "gnulib-nproc/configure"))
  
  
