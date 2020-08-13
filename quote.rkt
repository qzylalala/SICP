#lang sicp
(define a 1)
(define b 2)
(display (list a b))
(display (list 'a b))
(display (list a 'b))

(define (memq item x)
  (cond ((null? x) false)
        ((eq? item (car x)) x)
        (else (memq item (cdr x)))))
