#lang racket/gui

(require ffi/unsafe)

(require racket/gui/base)

(define get-age (get-ffi-obj "getAge" "main" (_fun -> _int)))
(define make-file (get-ffi-obj "makeFile" "main" (_fun -> _void)))
(define start-server (get-ffi-obj "startServer" "main" (_fun -> _void)))

(define f (new frame% [label "Simple Edit"]
                      [width 200]
                      [height 200]))
(define c (new editor-canvas% [parent f]))
(define t (new text%))
(send c set-editor t)
(send f show #t)

(get-age)
(make-file)
(start-server)
