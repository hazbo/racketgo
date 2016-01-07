#lang racket/base

(require ffi/unsafe)

(define get-age (get-ffi-obj "getAge" "main" (_fun -> _int)))
(define make-file (get-ffi-obj "makeFile" "main" (_fun -> _void)))
(define start-server (get-ffi-obj "startServer" "main" (_fun -> _void)))

(get-age)
(make-file)
(start-server)
