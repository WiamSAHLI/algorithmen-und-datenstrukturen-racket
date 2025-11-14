#lang racket
(define (Armstrong number)
  (define(iter n result)
    (if(= n 0)
       
       (if(= result number)
          #t
          #f)
       (iter (quotient n 10)(+ result(expt (remainder n 10) 3)))))
  (iter number 0))

(Armstrong 153)
(Armstrong 156)
