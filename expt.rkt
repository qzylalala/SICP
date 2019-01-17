;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname expt) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (fexpt b n)
  (cond ((= n 0) 1)
        ((feven? n) (square (fexpt b (/ n 2))))
        (else (* b (fexpt b (- n 1))))))
(define (feven? n)
  (= (remainder n 2) 0))
(define (square x)
  (* x x))
(fexpt 2 4)