#lang racket/base

(provide pre-installer)

(require racket/file
         racket/system)
(require file/untgz)

(define (pre-installer collections-top-path racl-path)
  (define private-path (build-path racl-path "private"))
  (define unpacked-path (path->string (build-path private-path "gnulib-nproc")))
  
  (untgz (build-path private-path "gnulib-nproc.tgz") #:dest private-path)
  (system (string-append "cd " unpacked-path " && ./configure && make"))
  (system (string-append
           "gcc "unpacked-path"/gllib/*.o -I "unpacked-path" -shared -o private/gnulib-nproc.so"))
  (delete-directory/files unpacked-path))


  
  
