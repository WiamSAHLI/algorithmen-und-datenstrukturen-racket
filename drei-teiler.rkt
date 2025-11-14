#lang racket/base
(require math/number-theory)
(define (squer-root n)
  (sqrt n))
(squer-root 7)

(define(perfekt-number n)
  (integer? n))
(perfekt-number (squer-root 17))

(define(prime-number n x)
  
  (if (<= x (- n 1))
   (if (=(modulo n x) 0)
       #f
       (prime-number n (+ x 1))
      )
   #t))

(prime-number 9 2)      

(define (drei-teiler n)
 (if (perfekt-number(squer-root n))
     (if (prime-number(squer-root n) 2)
         #t
         #f)
     #f))
     
(drei-teiler 81)