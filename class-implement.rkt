#lang sicp
(define (make-withdraw balance)
  (lambda (amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds")))
(define w1 (make-withdraw 100))
(define w2 (make-withdraw 100))
(w1 50)
newline
(w2 50)
newline
(w1 30)
newline
(w2 60)