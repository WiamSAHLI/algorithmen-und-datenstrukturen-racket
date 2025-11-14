#lang racket/base
(define(same-number n)
  (define(iter n faktor result)
         
    (if(= n 0)
       result
       (iter
        (quotient n 10)
        (* faktor 10)
        (+ result (* faktor (remainder n 10))))))
  (iter n 1 0))
(same-number 123)